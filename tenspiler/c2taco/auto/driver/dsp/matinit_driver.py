from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, matinit = analyze_double_loops(
        file_path="tenspiler/c2taco/cpp/for_synthesis/dsp/matinit_.cc",
        func_name="matinit",
        axioms=axioms,
    )
    M, N, val = input_vars["M"], input_vars["N"], input_vars["val"]
    driver.add_precondition(M >= 1)
    driver.add_precondition(N >= 1)

    matinit(M, N, val)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="matinit",
        has_relaxed=True
    )