from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop, analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm
# This driver does not handle so many loops.
if __name__ == "__main__":
    try:
        driver, input_vars, fun = analyze_single_loop(
            file_path="tenspiler/c2taco/cpp/for_synthesis/dsp/matmul_.cc",
            func_name="matmul",
            axioms=axioms,
        )
    except Exception as e:
        print(e)
    try:
        driver, input_vars, fun = analyze_double_loops(
            file_path="tenspiler/c2taco/cpp/for_synthesis/dsp/matmul_.cc",
            func_name="matmul",
            axioms=axioms,
        )
    except Exception as e:
        print(e)
