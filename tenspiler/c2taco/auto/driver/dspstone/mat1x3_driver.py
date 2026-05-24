from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop, analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, mat1x3 = analyze_double_loops(
        file_path="tenspiler/c2taco/cpp/for_synthesis/dspstone/mat1x3.cc",
        func_name="mat1x3",
        axioms=axioms,
    )
    N, h, x = input_vars["N"], input_vars["h"], input_vars["x"]
    driver.add_precondition(N >= 1)
    driver.add_precondition(x.len() >= N)
    driver.add_precondition(h.len() >= N)
    driver.add_precondition(h[0].len() >= N)

    mat1x3(N, h, x)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="mat1x3",
        has_relaxed=True
    )
