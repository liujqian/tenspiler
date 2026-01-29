from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, form_elementwise_list = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/form_elementwise_list.cc",
        func_name="calculate_form_elementwise_list",
        axioms=axioms,
    )
    a, s = input_vars["a"], input_vars["s"]
    driver.add_precondition(a.len() >= 1)
    driver.add_precondition(a[0].len() >= 1)
    form_elementwise_list(a, s)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="form_elementwise_list",
        has_relaxed=True,
    )
