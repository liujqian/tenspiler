import datetime
import json
import os
import shutil
import subprocess
import sys
import time
from typing import Tuple
from tqdm import tqdm

TIMEOUT_MINUTES = 30
TIMEOUT_SECONDS = TIMEOUT_MINUTES * 60
c2taco_drivers = [
    # blas, 3 drivers
    "tenspiler/c2taco/holing/driver/blas/dot_driver.py",
    "tenspiler/c2taco/holing/driver/blas/gemv_driver.py",
    "tenspiler/c2taco/auto/driver/blas/ger_driver.py",  # known to fail
    # darknet, 10 drivers, 4 cannot be processed
    'tenspiler/c2taco/holing/driver/darknet/mult_add_into_cpu_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/mag_array_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/mse_array_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/sum_array_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/scale_array_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/matrix_add_matrix_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/ol_l2_cpu2_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/translate_array_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/scale_matrix_driver.py',
    'tenspiler/c2taco/holing/driver/darknet/ol_l2_cpu1_driver.py',
    # dsp, 14 drivers, 1 cannot be processed
    'tenspiler/c2taco/holing/driver/dsp/vmul_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vcopy_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vrecip_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/matadd_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vneg_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/voffset_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vscal_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vadd_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/matscal_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/vsub_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/wvec_driver.py',
    'tenspiler/c2taco/holing/driver/dsp/matsub_driver.py',
    "tenspiler/c2taco/auto/driver/dsp/matinit_driver.py",  # known to not work
    "tenspiler/c2taco/auto/driver/dsp/vfill_driver.py",  # known to not work
    # dspstone, 3 drivers, 2 cannot be processed
    'tenspiler/c2taco/holing/driver/dspstone/n_real_updates_driver.py',
    'tenspiler/c2taco/holing/driver/dspstone/mat1x3_driver.py',
    "tenspiler/c2taco/auto/driver/dspstone/pin_down_driver.py",  # known to fail
    # makespeare, 1 driver
    'tenspiler/c2taco/holing/driver/makespeare/sum_of_squares_driver.py',
    # mathfu, 12 drivers
    'tenspiler/c2taco/holing/driver/mathfu/len_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/diveq_sca_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/subeq_sca_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/len_sq_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/muleq_sca_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/matmul_sca_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/diveq_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/muleq_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/negate_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/pluseq_driver.py',
    'tenspiler/c2taco/holing/driver/mathfu/subeq_driver.py',
    "tenspiler/c2taco/auto/driver/mathfu/lerp_driver.py",  # known to not work
    # simpl_array, 5 drivers
    'tenspiler/c2taco/holing/driver/simpl_array/array_inc_driver.py',
    'tenspiler/c2taco/holing/driver/simpl_array/fourth_in_place_driver.py',
    'tenspiler/c2taco/holing/driver/simpl_array/sum_elts_driver.py',
    'tenspiler/c2taco/holing/driver/simpl_array/cube_in_place_driver.py',
    'tenspiler/c2taco/holing/driver/simpl_array/array_sum_driver.py',
    # utdsp, 4 drivers, 2 cannot be processed
    'tenspiler/c2taco/holing/driver/utdsp/fir_small_driver.py',
    'tenspiler/c2taco/holing/driver/utdsp/lmsfir1_driver.py',
    'tenspiler/c2taco/holing/driver/utdsp/lmsfir2_driver.py',
    "tenspiler/c2taco/auto/driver/utdsp/histogram_driver.py",  # known to fail
]
blend_drivers = [
    'tenspiler/blend/holing/driver/color_burn_8_driver.py',
    'tenspiler/blend/holing/driver/color_dodge_8_driver.py',
    'tenspiler/blend/holing/driver/darken_blend_8_driver.py',
    'tenspiler/blend/holing/driver/dissolve_blend_8_driver.py',
    'tenspiler/blend/holing/driver/lighten_blend_8_driver.py',
    'tenspiler/blend/holing/driver/linear_burn_8_driver.py',
    'tenspiler/blend/holing/driver/linear_dodge_8_driver.py',
    'tenspiler/blend/holing/driver/multiply_blend_8_driver.py',
    'tenspiler/blend/holing/driver/normal_blend_8_driver.py',
    'tenspiler/blend/holing/driver/normal_blend_f_driver.py',
    'tenspiler/blend/holing/driver/overlay_blend_8_driver.py',
    'tenspiler/blend/holing/driver/screen_blend_8_driver.py',
]
llama_drivers = [
    'tenspiler/llama/holing/driver/rmsnorm/rmsnorm_part1_driver.py',
    'tenspiler/llama/holing/driver/rmsnorm/rmsnorm_part2_driver.py',
    'tenspiler/llama/holing/driver/softmax/softmax_part1_driver.py',
    'tenspiler/llama/holing/driver/softmax/softmax_part2_driver.py',
    'tenspiler/llama/holing/driver/softmax/softmax_part3_driver.py',
    'tenspiler/llama/holing/driver/softmax/softmax_part4_driver.py',
    "tenspiler/llama/holing/driver/transformer/transformer_part1_driver.py",
    "tenspiler/llama/holing/driver/transformer/transformer_part2_driver.py",
    "tenspiler/llama/holing/driver/transformer/transformer_part3_driver.py",
    "tenspiler/llama/holing/driver/transformer/transformer_part4_driver.py",
    "tenspiler/llama/holing/driver/matmul_driver.py"
]
polybench_drivers = ["tenspiler/polybench/auto/driver/gesummv_driver.py", ]
stack_overflow_drivers = [
    'tenspiler/stack_overflow/auto/driver/add_two_arrays_by_comparing_sizes_driver.py',
    'tenspiler/stack_overflow/auto/driver/derivative_1D_driver.py',
    'tenspiler/stack_overflow/auto/driver/form_elementwise_list_driver.py',
    'tenspiler/stack_overflow/auto/driver/looped_copy_driver.py',
    'tenspiler/stack_overflow/auto/driver/mask_generation_driver.py',
    'tenspiler/stack_overflow/auto/driver/max_temp_in_thirty_days_driver.py',
    'tenspiler/stack_overflow/auto/driver/relative_difference_driver.py',
    'tenspiler/stack_overflow/auto/driver/set_one_in_columns_driver.py',
    'tenspiler/stack_overflow/auto/driver/square_plus_one_driver.py',
    'tenspiler/stack_overflow/auto/driver/struct_function_driver.py',
    'tenspiler/stack_overflow/auto/driver/sum_columns_driver.py',
    'tenspiler/stack_overflow/auto/driver/supply_demand_driver.py',
    'tenspiler/stack_overflow/auto/driver/+13zipped_loop_computation_driver.py',
]
all_drivers = c2taco_drivers + blend_drivers + llama_drivers + polybench_drivers + stack_overflow_drivers


def run_one_driver(driver_module_path: str) -> Tuple[float, int, str, str]:
    log_dir = "./synthesisLogs"
    if os.path.exists(log_dir) and os.path.isdir(log_dir):
        shutil.rmtree(log_dir)
    cmd = ["timeout", str(TIMEOUT_MINUTES * 60)]
    cmd += ["python", driver_module_path]
    start_time = time.perf_counter()
    try:
        run_result = subprocess.run(cmd, capture_output=True, text=True, timeout=TIMEOUT_SECONDS)
    except subprocess.TimeoutExpired as e:
        print(f"Driver {driver_module_path} timed out after {TIMEOUT_MINUTES} minutes.", file=sys.stderr)
        return float("inf"), -1, e.stdout.decode(), e.stderr.decode()

    end_time = time.perf_counter()
    elapsed_time = end_time - start_time
    return elapsed_time, run_result.returncode, run_result.stdout, run_result.stderr


def run_all_drivers(out_dir: str = "tenspiler/out/"):
    time_suffix = datetime.datetime.now().strftime("%y%m%d-%H%M%S")
    new_run_result_dir = os.path.join(out_dir, f"timeout{TIMEOUT_MINUTES}_run_results_{time_suffix}")
    os.makedirs(new_run_result_dir, exist_ok=False)
    results = {}
    for driver_path in (pbar := tqdm(all_drivers, total=len(all_drivers))):
        pbar.set_postfix_str(f"Running driver: {driver_path}")
        elapsed_time, return_code, stdout, stderr = run_one_driver(driver_path)
        suite_name = driver_path.split("/")[1] if driver_path.split("/")[1] != "c2taco" else driver_path.split("/")[4]
        bm_name = os.path.splitext(os.path.basename(driver_path))[0][:-7]  # remove _driver
        results[f"{suite_name}-{bm_name}"] = {
            "elapsed_time": elapsed_time,
            "return_code": return_code,
            "stdout": stdout,
            "stderr": stderr,
        }
    with open(os.path.join(new_run_result_dir, f"run_results.json"), "w") as f:
        json.dump(results, f, indent=4)


if __name__ == '__main__':
    run_all_drivers()
