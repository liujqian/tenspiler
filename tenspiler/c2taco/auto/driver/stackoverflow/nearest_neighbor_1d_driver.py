from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, nearest_neighbor_1d = analyze_double_loops(
        file_path="tenspiler/c2taco/cpp/for_synthesis/stackoverflow/nearest_neighbor_1d.cc",
        func_name="nearest_neighbor_1d",
        axioms=axioms,
    )
    arr, val, N = input_vars["arr"], input_vars["val"], input_vars["N"]
    driver.add_precondition(N.len() >= 1)
    driver.add_precondition(val.len() >= 1)
    driver.add_precondition(arr.len() >= 1)
    nearest_neighbor_1d(arr, val, N)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="nearest_neighbor_1d",
        has_relaxed=True,
    )
