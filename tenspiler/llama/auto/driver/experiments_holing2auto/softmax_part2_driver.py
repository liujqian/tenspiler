from metalift.frontend.llvm import Driver
from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tenspiler_common import get_map_int_to_int_synth
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

# This driver does not work.
if __name__ == "__main__":
    driver = Driver()
    driver, input_vars, softmax_part2 = analyze_single_loop(
        file_path="tenspiler/llama/cpp/for_synthesis/softmax/softmax_part2.cc",
        func_name="softmax_part2",
        axioms=axioms,
    )

    input_var, max_pos_var, max_val_var = input_vars["input"], input_vars["max_pos"], input_vars["max_val"]

    driver.add_precondition(input_var.len() > 0)
    driver.add_precondition(max_pos_var <= input_var.len())
    driver.add_precondition(max_pos_var >= 1)

    map_int_to_int_synth = get_map_int_to_int_synth()
    driver.fns_synths = [map_int_to_int_synth]

    softmax_part2(input_var, max_pos_var, max_val_var)

    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.FLOAT,
        benchmark_name="softmax_part2",
        has_relaxed=False,
    )
