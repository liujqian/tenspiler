from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, add_two_arrays_by_comparing_sizes = analyze_single_loop(
        file_path="tenspiler/c2taco/cpp/for_synthesis/stackoverflow/add_two_arrays_by_comparing_sizes.cc",
        func_name="add_two_arrays_by_comparing_sizes",
        axioms=axioms,
    )
    a, b = input_vars["a"], input_vars["b"]
    driver.add_precondition(a.len() >= 1)
    driver.add_precondition(a.len() >= b.len())
    add_two_arrays_by_comparing_sizes(a, b)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="add_two_arrays_by_comparing_sizes",
        has_relaxed=True,
    )
