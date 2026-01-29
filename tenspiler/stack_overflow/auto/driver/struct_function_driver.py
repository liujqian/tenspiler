from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not work.
if __name__ == "__main__":
    driver, input_vars, struct_function = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/struct_function.cc",
        func_name="structFunPython",
        axioms=axioms,
    )
    f, sf2 = input_vars["f"], input_vars["sf2"]
    driver.add_precondition(f.len() >= 1)
    driver.add_precondition(sf2.len() >= 1)
    struct_function(f, sf2)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="struct_function",
        has_relaxed=True,
    )
