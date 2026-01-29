from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, square_plus_one = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/square_plus_one.cc",
        func_name="square_plus_one",
        axioms=axioms,
    )
    arr_in = input_vars["arr_in"]
    driver.add_precondition(arr_in.len() == 2)
    driver.add_precondition(arr_in[0].len() >= 1)
    square_plus_one(arr_in)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="square_plus_one",
        has_relaxed=True,
    )
