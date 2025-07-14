#!/bin/bash
# launch_sim.sh - Reproduce KPIs in ~20 min

# Set environment (assuming Python 3.12 with numpy, etc.)
export PYTHONPATH=$PWD

# Install dependencies if needed (comment out if not allowed in env)
# pip install numpy matplotlib

# Run simulation with paper parameters
python simulate_erp.py --actors 128 --orders 1000 --epsilon 0.12 --sites 3 --output results.csv

# Analyze and report KPIs
python analyze_kpis.py results.csv > kpi_report.txt

echo "Reproduction complete. Check kpi_report.txt for metrics (e.g., Δt ↓16%, Sync ↓13%)."