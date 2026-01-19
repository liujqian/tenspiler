from tenspiler.axioms_tenspiler import axioms
from tenspiler.tree_parser import analyze_single_loop, analyze_double_loops

if __name__ == "__main__":
    try:
        driver, input_vars, mag_array = analyze_single_loop(
            file_path="tenspiler/c2taco/cpp/for_synthesis/dspstone/matrix2_.cc",
            func_name="matrix1",
            axioms=axioms,
        )
    except Exception as e:
        print(e)

    try:
        driver, input_vars, mag_array = analyze_double_loops(
            file_path="tenspiler/c2taco/cpp/for_synthesis/dspstone/matrix2_.cc",
            func_name="matrix1",
            axioms=axioms,
        )
    except Exception as e:
        print(e)
