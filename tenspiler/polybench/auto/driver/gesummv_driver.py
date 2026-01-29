from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, gesummv = analyze_double_loops(
        file_path="tenspiler/polybench/cpp/for_synthesis/gesummv.cc",
        func_name="kernel_gesummv",
        axioms=axioms,
    )
    A, B, x, alpha, beta = input_vars["A"], input_vars["B"], input_vars["x"], input_vars["alpha"], input_vars["beta"]
    driver.add_precondition(A.len() >= 1)
    driver.add_precondition(A.len() == A[0].len())
    driver.add_precondition(B.len() == A.len())
    driver.add_precondition(B[0].len() == B.len())
    driver.add_precondition(x.len() >= 1)
    gesummv(A, B, x, alpha, beta)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="gesummv",
        has_relaxed=True,
    )
