from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops, analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, vfill = analyze_single_loop(
        file_path="tenspiler/c2taco/cpp/for_synthesis/dsp/vfill_.cc",
        func_name="vfill",
        axioms=axioms,
    )
    arr, v = input_vars["arr"], input_vars["v"]
    driver.add_precondition(arr.len() >= 1)

    vfill(arr, v)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="vfill",
        has_relaxed=True
    )