# QACC-ERP
# Reproducibility Package for QACC-ERP Framework

This repository contains the reproducibility assets for the paper on the QACC-ERP framework, a quantum-augmented, resilient ERP system for human-robot collaboration in Industry 5.0. The package includes pseudocode, configuration scripts, and synthetic datasets to allow independent verification of the key performance indicators (KPIs) reported in the paper, such as Δt reduction (↓16%), sync delay (↓13%), utilization (↑10%), energy consumption (↓6%), and maintenance downtime (↓11%).


## Important Note on Data Privacy
Due to enterprise confidentiality guidelines, proprietary components like real industrial logs have been excluded. The synthetic datasets provided (e.g., `synthetic_1000_orders.csv`) are desensitized versions derived from anonymized and aggregated sources. They have been adjusted (e.g., randomized values within realistic ranges, modified task chains, and scaled metrics) to protect sensitive information while preserving the ability to reproduce the paper's KPI metrics and trends. These adjustments ensure compliance with data protection standards but may introduce minor variances in exact outputs; however, the overall results (e.g., linear scalability up to 256 actors and KPI improvements) remain consistent with the reported findings.

## Installation
This package requires Python 3.12+ and basic libraries. No internet access or additional installations are needed beyond the provided dependencies.

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/qacc-erp-reproducibility.git
   cd qacc-erp-reproducibility
   ```

2. Install dependencies (listed in `requirements.txt`):
   ```
   pip install -r requirements.txt
   ```
   - Dependencies include: numpy, matplotlib (for data analysis and visualization).

## Usage
To reproduce the KPI metrics:
1. Make the launch script executable (if on Unix-like systems):
   ```
   chmod +x launch_sim.sh
   ```

2. Run the simulation:
   ```
   ./launch_sim.sh
   ```
   - This script sets up the environment, runs `simulate_erp.py` with default parameters (e.g., 128 actors, 1000 orders, ε=0.12), generates `results.csv`, and analyzes it via `analyze_kpis.py` to produce `kpi_report.txt`.
   - Expected runtime: ~20 minutes on standard hardware (e.g., CPU with 4+ cores).
   - Output: `kpi_report.txt` with reproduced KPIs (e.g., Δt ↓16%, Sync ↓13%).

You can customize parameters in `simulate_erp.py` (e.g., `--actors 256 --sites 3`) for scalability tests.

## Files
- **README.md**: This file.
- **pseudocode.pdf**: PDF containing Algorithm 1 (Quantum ε-A* pseudocode with QAOA subroutine).
- **launch_sim.sh**: Shell script to reproduce the experiments.
- **simulate_erp.py**: Main simulation script for generating synthetic results.
- **analyze_kpis.py**: Script to compute and report KPIs from simulation output.
- **synthetic_1000_orders.csv**: Synthetic dataset with 1000 orders (columns: OrderID, TaskChain, ActorCount, Makespan, Energy, SafetyViol). Desensitized and adjusted for confidentiality.
- **requirements.txt**: List of Python dependencies.
- **LICENSE**:MIT license file.

## License
This package is licensed under MIT. See the [LICENSE](LICENSE) file for details.

If you encounter issues or have questions, open an issue on GitHub. Contributions to improve reproducibility are welcome!
