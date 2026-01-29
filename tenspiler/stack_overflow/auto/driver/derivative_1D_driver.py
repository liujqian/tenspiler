from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, derivative_1D = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/derivative_1D.cc",
        func_name="derivative_1D",
        axioms=axioms,
    )
    x = input_vars["x"]
    driver.add_precondition(x.len() >= 1)
    derivative_1D(x)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="derivative_1D",
        has_relaxed=True,
    )
