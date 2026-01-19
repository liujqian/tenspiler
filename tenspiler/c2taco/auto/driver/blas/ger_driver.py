from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver fails.
if __name__ == "__main__":
    driver, input_vars, ger = analyze_double_loops(
        file_path="tenspiler/c2taco/cpp/for_synthesis/blas/ger_.cc",
        func_name="ger",
        axioms=axioms,
    )
    M, N, x, y, A = input_vars["M"], input_vars["N"], input_vars["x"], input_vars["y"], input_vars["A"]
    driver.add_precondition(M >= 1)
    driver.add_precondition(N >= 1)
    driver.add_precondition(x.len() > 0)
    driver.add_precondition(x.len() >= M)
    driver.add_precondition(y.len() > 0)
    driver.add_precondition(y.len() >= N)
    driver.add_precondition(A.len() > 0)
    driver.add_precondition(A.len() >= M)
    driver.add_precondition(A[0].len() > 0)
    driver.add_precondition(A[0].len() >= N)

    ger(M, N, x, y, A)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.FLOAT,
        benchmark_name="ger_",
        has_relaxed=True
    )
