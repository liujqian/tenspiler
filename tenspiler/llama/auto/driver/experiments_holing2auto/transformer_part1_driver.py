from metalift.frontend.llvm import Driver
from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_single_loop, analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

# This driver fails.
if __name__ == "__main__":
    driver = Driver()
    driver, input_vars, transformer_part1 = analyze_double_loops(
        file_path="tenspiler/llama/cpp/for_synthesis/transformer/transformer_part1.cc",
        func_name="transformer_part1",
        axioms=axioms,
    )
    token_position_var = input_vars["token_position"]
    head1_var = input_vars["head1"]
    head_size_var = input_vars["head_size"]
    key_cache_layer_var = input_vars["key_cache_layer"]
    q_var = input_vars["q"]

    driver.add_precondition(token_position_var > 0)
    driver.add_precondition(key_cache_layer_var.len() > token_position_var)
    driver.add_precondition(head1_var >= 0)
    driver.add_precondition(head1_var <= q_var.len())
    driver.add_precondition(head1_var <= key_cache_layer_var.len())
    driver.add_precondition(head_size_var > 0)
    driver.add_precondition(head_size_var <= q_var.len())
    driver.add_precondition(head_size_var <= key_cache_layer_var.len())
    driver.add_precondition(
        (head1_var * head_size_var + head_size_var) < key_cache_layer_var[0].len()
    )
    driver.add_precondition((head1_var * head_size_var + head_size_var) < q_var.len())
    transformer_part1(
        token_position_var,
        head1_var,
        head_size_var,
        key_cache_layer_var,
        q_var,
    )

    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="transformer_part1",
        has_relaxed=True,
    )
