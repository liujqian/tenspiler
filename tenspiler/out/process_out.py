import json
import os
import sys


def process_out_json(run_result_dir: str):
    with open(os.path.join(run_result_dir, f"run_results.json"), "r") as f:
        results = json.load(f)
    results_classes = {"success": 0, "nonzero_return": 0, "bad_output": 0}
    for result in results:
        if result.count("-") != 1:
            print(f"Unexpected result key format: {result}", file=sys.stderr)
            continue
        benchmark_suite = result.split("-")[0]
        benchmark_name = result.split("-")[1]
        benchmark_suite_dir = os.path.join(run_result_dir, benchmark_suite)
        os.makedirs(benchmark_suite_dir, exist_ok=True)
        benchmark_path = os.path.join(benchmark_suite_dir, benchmark_name + ".py")
        if results[result]["return_code"] != 0:
            to_print = f"# Benchmark {benchmark_name} in suite {benchmark_suite} failed to run.\n"
            to_print += f"# Return code: {results[result]['return_code']}\n"
            to_print += f"# Stdout:\n{results[result]['stdout']}\n"
            to_print += f"# Stderr:\n{results[result]['stderr']}\n"
            results_classes["nonzero_return"] += 1
            print(f"Non-zero return code for {result}.", file=sys.stderr)
        else:
            output = results[result]["stdout"]
            if "####### import statements ########" not in output:
                to_print = f"# Benchmark {benchmark_name} in suite {benchmark_suite} did not produce expected output.\n"
                to_print += f"# Return code: {results[result]['return_code']}\n"
                to_print += f"# Stdout:\n{results[result]['stdout']}\n"
                to_print += f"# Stderr:\n{results[result]['stderr']}\n"
                print(to_print, file=sys.stderr)
                results_classes["bad_output"] += 1
            else:
                to_print = output[output.index("####### import statements ########"):]
                results_classes["success"] += 1

        with open(benchmark_path, "w") as f:
            f.write(to_print)
    print("Summary of results:")
    for k, v in results_classes.items():
        print(f"{k}: {v}")


if __name__ == '__main__':
    p = "tenspiler/out/timeout30_run_results_260129-010848"
    process_out_json(p)
