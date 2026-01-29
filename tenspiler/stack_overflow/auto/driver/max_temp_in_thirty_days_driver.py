from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, max_temp_in_thirty_days = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/max_temp_in_thirty_days.cc",
        func_name="max_temp_in_thirty_days",
        axioms=axioms,
    )
    data, periods = input_vars["data"], input_vars["periods"]
    driver.add_precondition(data.len() >= 32)
    driver.add_precondition(periods.len() >= 1)
    max_temp_in_thirty_days(data, periods)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="max_temp_in_thirty_days",
        has_relaxed=True,
    )
