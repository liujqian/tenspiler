from metalift.frontend.llvm import Driver
from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver = Driver()
    # Change the following:
    # 1. analyze_single_loop or analyze_double_loops?
    # 2. file_path and function_name arguments
    # 3. the last returned value's name should match the benchmark name called below.
    driver, input_vars, rmsnorm_part1 = analyze_single_loop(
        file_path="tenspiler/llama/cpp/for_synthesis/rmsnorm/rmsnorm_part1.cc",
        func_name="rmsnorm_part1",
        axioms=axioms,
    )
    # Get the input argument variables and rename them so we can use them to add the precondition specifications.
    input, weight = input_vars["input"], input_vars["weight"]
    # Copy the specifications from the holing drivers.
    driver.add_precondition(input.len() == weight.len())
    driver.add_precondition(input.len() > 0)
    # Call the thing once?
    rmsnorm_part1(input, weight)
    # Copy the call from the holing driver.
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.FLOAT,
        benchmark_name="rmsnorm_part1",
        has_relaxed=False,
    )