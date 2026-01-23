from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop, analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    translate_number = 1
    # Neither analyze_single_loop nor analyze_double_loops supports this.
    driver, input_vars, translate_array = analyze_single_loop(
        file_path=f"tenspiler/feature_test/cpp/for_synthesis/darknet/translate{translate_number}.cc",
        func_name=f"translate{translate_number}",
        axioms=[],
    )
    a, n, s = input_vars["a"], input_vars["n"], input_vars["s"]
    driver.add_precondition(n >= 1)
    driver.add_precondition(a.len() >= n)
    translate_array(a, n, s)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="translate_array",
        has_relaxed=False,
    )
