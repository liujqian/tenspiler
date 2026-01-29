from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, mask_generation = analyze_double_loops(
        file_path="tenspiler/stack_overflow/cpp/for_synthesis/mask_generation.cc",
        func_name="mask_generation",
        axioms=axioms,
    )
    V = input_vars["V"]
    driver.add_precondition(V.len() >= 1)
    mask_generation(V)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="mask_generation",
        has_relaxed=True,
    )
