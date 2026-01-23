from metalift.frontend.llvm import Driver
from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver fails.
if __name__ == "__main__":
    driver = Driver()
    driver, input_vars, softmax_part1 = analyze_single_loop(
        file_path="tenspiler/llama/cpp/for_synthesis/softmax/softmax_part1.cc",
        func_name="softmax_part1",
        axioms=axioms,
    )

    input_var, max_pos_var = input_vars["input"], input_vars["max_pos"]

    driver.add_precondition(input_var.len() > 0)
    driver.add_precondition(max_pos_var <= input_var.len())
    driver.add_precondition(max_pos_var >= 1)

    softmax_part1(input_var, max_pos_var)

    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.FLOAT,
        benchmark_name="softmax_part1",
        has_relaxed=True,
    )
