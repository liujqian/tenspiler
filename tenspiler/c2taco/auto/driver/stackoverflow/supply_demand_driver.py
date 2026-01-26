from tenspiler.axioms_tenspiler import axioms
from tenspiler.codegen.utils import DataType
from tenspiler.tree_parser import analyze_double_loops
from tenspiler.utils.synthesis_utils import run_synthesis_algorithm

if __name__ == "__main__":
    driver, input_vars, supply_demand = analyze_double_loops(
        file_path="tenspiler/c2taco/cpp/for_synthesis/stackoverflow/supply_demand.cc",
        func_name="supply_demand",
        axioms=axioms,
    )
    prices = input_vars["prices"]
    driver.add_precondition(prices.len() >= 1)
    supply_demand(prices)
    run_synthesis_algorithm(
        driver=driver,
        data_type=DataType.INT32,
        benchmark_name="supply_demand",
        has_relaxed=True,
    )
