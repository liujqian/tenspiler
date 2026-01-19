from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, lerp = analyze_single_loop(
        file_path="tenspiler/c2taco/cpp/for_synthesis/mathfu/lerp_.cc",
        func_name="lerp",
        axioms=axioms,
    )
    N, a, b, t = input_vars["N"], input_vars["a"], input_vars["b"], input_vars["t"]
    driver.add_precondition(N >= 1)
    driver.add_precondition(a.len() > 0)
    driver.add_precondition(a.len() >= N)
    driver.add_precondition(b.len() > 0)
    driver.add_precondition(b.len() >= N)

    lerp(N, a, b, t)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.FLOAT,
        benchmark_name="lerp",
        has_relaxed=True
    )
