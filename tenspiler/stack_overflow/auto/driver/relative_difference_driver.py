from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, relative_difference = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/relative_difference.cc",
        func_name="calculate_relative_difference",
        axioms=axioms,
    )
    a = input_vars["a"]
    driver.add_precondition(a.len() >= 1)
    relative_difference(a)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="relative_difference",
        has_relaxed=True,
    )
