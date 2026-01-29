from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, looped_copy = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/looped_copy.cc",
        func_name="looped_copy",
        axioms=axioms,
    )
    u_50, u = input_vars["u_50"], input_vars["u"]
    driver.add_precondition(u_50.len() >= 1)
    driver.add_precondition(u_50[0].len() >= 1)
    driver.add_precondition(u.len() >= 1)
    driver.add_precondition(u[0].len() >= 1)
    driver.add_precondition(u_50.len() == u.len())

    looped_copy(u_50, u)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="form_elementwise_list",
        has_relaxed=True,
    )
