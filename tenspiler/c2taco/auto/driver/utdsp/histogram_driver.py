from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver fails.
if __name__ == "__main__":
    driver, input_vars, histogram = analyze_single_loop(
        file_path="tenspiler/c2taco/cpp/for_synthesis/utdsp/histogram_.cc",
        func_name="histogram",
        axioms=axioms,
    )
    N = input_vars["N"]
    driver.add_precondition(N >= 1)

    histogram(N)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="histogram",
        has_relaxed=True
    )
