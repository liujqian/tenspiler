from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, zipped_loop_computation = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/zipped_loop_computation.cc",
        func_name="zipped_loop_computation",
        axioms=axioms,
    )
    a, b, d, e = input_vars["a"], input_vars["b"], input_vars["d"], input_vars["e"]
    driver.add_precondition(e.len() == d.len())
    driver.add_precondition(d.len() >= 1)
    driver.add_precondition(b.len() == a.len())
    driver.add_precondition(a.len() >= 1)
    zipped_loop_computation(a, b, d, e)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="zipped_loop_computation",
        has_relaxed=True,
    )
