from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, sum_columns = analyze_single_loop(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/sum_columns.cc",
        func_name="calculate_sum_columns",
        axioms=axioms,
    )
    a, c = input_vars["a"], input_vars["c"]
    driver.add_precondition(a.len() == 4)
    driver.add_precondition(a[0].len() >= 1)
    sum_columns(a, c)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="sum_columns",
        has_relaxed=True,
    )
