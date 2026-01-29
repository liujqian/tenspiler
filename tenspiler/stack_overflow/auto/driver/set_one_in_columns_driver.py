from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, set_one_in_columns = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/set_one_in_columns.cc",
        func_name="set_one_in_columns",
        axioms=axioms,
    )
    x, y = input_vars["x"], input_vars["y"]
    driver.add_precondition(x.len() >= 1)
    driver.add_precondition(x[0].len() >= 1)
    driver.add_precondition(y.len() == x.len())
    set_one_in_columns(x, y)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="set_one_in_columns",
        has_relaxed=True,
    )
