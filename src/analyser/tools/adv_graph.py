#!/usr/bin/env python3
"""
Data Log Analyzer for Contention Visualization
This script reads the Data.log file, extracts data from the last BEGIN-END block,
and creates a graph showing contention over time.
"""

import re
import argparse
import os
import matplotlib.pyplot as plt
import numpy as np
from typing import List, Tuple, Optional

def parse_Data_log(file_path: str) -> Optional[List[Tuple[int, int]]]:
    """Parse the file extracting the LAST START...END block if present.

    Inside that block (or whole file when no START/END delimiters) it accepts lines in two formats:
      1. "<value> @ <clk>"  -> explicit value/time pair (both integers)
      2. "<value>"          -> value only; an implicit sequential time index is assigned

    Args:
        file_path: path to the log file

    Returns:
        List of (value, time) tuples, or None if nothing could be parsed.
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        blocks = re.findall(r'START\s*\n(.*?)\nEND', content, re.DOTALL)
        if blocks:
            source_desc = 'last START-END block'
            last_block = blocks[-1].strip()
            raw_lines = last_block.splitlines()
        else:
            # Fallback: treat the entire file as a flat list (no START/END markers)
            source_desc = 'whole file (no START/END found)'
            raw_lines = content.splitlines()

        lines = [l.strip() for l in raw_lines if l.strip()]
        data: List[Tuple[int, int]] = []
        seq_idx = 0
        for line in lines:
            if '@' in line:
                parts = line.split('@', 1)
                left = parts[0].strip()
                right = parts[1].strip()
                if left.isdigit() and right.isdigit():
                    data.append((int(left), int(right)))
                    continue
                # If format is partially invalid, fall back to bare value handling
            m = re.match(r'^(\d+)', line)
            if m:
                data.append((int(m.group(1)), seq_idx))
                seq_idx += 1
        if not data:
            print("No numeric data found (accepted formats: '<value>' or '<value> @ <time>').")
            return None
        print(f"Extracted {len(data)} data points (value/time pairs) from {source_desc}.")
        return data
    except FileNotFoundError:
        print(f"File not found: {file_path}")
        return None
    except Exception as e:
        print(f"Error reading file: {e}")
        return None

def analyze_data_distribution(data: List[Tuple[int, int]]) -> None:
    """
    Analyze and display data distribution to help understand the baseline.
    
    Args:
        data: List of tuples (value, time)
    """
    values = [value for value, _ in data]
    
    print(f"\n=== Data Distribution Analysis ===")
    print(f"Total points: {len(values)}")
    print(f"Min value: {min(values)}")
    print(f"Max value: {max(values)}")
    print(f"Mean: {np.mean(values):.1f}")
    print(f"Median: {np.median(values):.1f}")
    print(f"Standard deviation: {np.std(values):.1f}")
    
    # Calculate percentiles
    percentiles = [25, 50, 75, 90, 95, 99]
    print(f"\nPercentiles:")
    for p in percentiles:
        print(f"  {p}th percentile: {np.percentile(values, p):.1f}")
    
    # Count values in different ranges
    unique_values = sorted(set(values))
    print(f"\nValue frequency (top 10 most common):")
    from collections import Counter
    counter = Counter(values)
    for value, count in counter.most_common(10):
        print(f"  Value {value}: {count} times ({count/len(values)*100:.1f}%)")
    
    # Identify potential outliers
    q75 = np.percentile(values, 75)
    q25 = np.percentile(values, 25)
    iqr = q75 - q25
    lower_bound = q25 - 1.5 * iqr
    upper_bound = q75 + 1.5 * iqr
    
    outliers = [v for v in values if v < lower_bound or v > upper_bound]
    print(f"\nOutlier analysis (IQR method):")
    print(f"  Normal range: {lower_bound:.1f} - {upper_bound:.1f}")
    print(f"  Outliers detected: {len(outliers)} points")
    if outliers:
        print(f"  Outlier values: {sorted(set(outliers))}")

def calculate_baseline(data: List[Tuple[int, int]], use_median: bool = True) -> Tuple[int, List[Tuple[int, int]]]:
    """
    Calculate the baseline value from the data, using a simple approach.
    First finds the most common values, then filters to accept max 2x baseline.
    
    Args:
        data: List of tuples (value, time)
        use_median: If True, use median instead of mean for baseline
        
    Returns:
        Tuple of (baseline value, filtered data within acceptable range)
    """
    values = [value for value, _ in data]
    
    # Find the most common values (likely the normal operating range)
    from collections import Counter
    value_counts = Counter(values)
    
    # Get the most frequent value as initial baseline estimate
    most_common_value = value_counts.most_common(1)[0][0]
    
    # Use median of values close to the most common value as baseline
    # Take values within reasonable range of most common value
    close_values = [v for v in values if abs(v - most_common_value) <= most_common_value * 0.5]
    
    if use_median:
        initial_baseline = int(np.median(close_values))
    else:
        initial_baseline = int(np.mean(close_values))
    
    # Now filter all values to accept only up to 2x the baseline
    max_acceptable = initial_baseline * 2
    filtered_data = [(value, time) for value, time in data if value <= max_acceptable]
    filtered_values = [value for value, time in filtered_data]
    
    # Recalculate baseline with filtered values
    if use_median:
        final_baseline = int(np.median(filtered_values))
        method = "median (2x threshold filtered)"
    else:
        final_baseline = int(np.mean(filtered_values))
        method = "mean (2x threshold filtered)"
    
    print(f"Most common value: {most_common_value}")
    print(f"Initial baseline estimate: {initial_baseline}")
    print(f"Max acceptable value (2x baseline): {max_acceptable}")
    print(f"Final baseline ({method}): {final_baseline}")
    print(f"Original data points: {len(data)}")
    print(f"Filtered data points: {len(filtered_data)}")
    print(f"Original data range: {min(values)} - {max(values)}")
    print(f"Filtered data range: {min(filtered_values)} - {max(filtered_values)}")
    print(f"Values filtered out: {len(data) - len(filtered_data)} points")
    
    return final_baseline, filtered_data

def create_contention_graph(data: List[Tuple[int, int]], baseline: int, 
                          output_file: str = "contention_graph.png"):
    """
    Create a contention graph based on the data.
    
    Args:
        data: List of tuples (value, time)
        baseline: Baseline value to be considered as "0"
        output_file: Output file name
    """
    # Separate values and times
    values = [value for value, _ in data]
    times = [time for _, time in data]
    
    # Calculate contention (values above baseline)
    contention = [max(0, value - baseline) for value in values]
    
    # Create the graph
    plt.figure(figsize=(15, 5))
    
    # Main graph - contention line
    plt.plot(times, contention, 'b-', linewidth=2, label=f'Contention (baseline={baseline})')
    
    # Fill contention area
    plt.fill_between(times, 0, contention, alpha=0.3, color='red', 
                     where=[c > 0 for c in contention], label='Contention Area')
    
    # Add vertical lines for contention peaks
    for i, (time, cont) in enumerate(zip(times, contention)):
        if cont > 0:
            plt.axvline(x=time, ymin=0, ymax=cont/max(contention) if max(contention) > 0 else 0, 
                       color='red', alpha=0.5, linewidth=1)
    
    # Configure the graph
    plt.xlabel('Time', fontsize=12)
    plt.ylabel('Contention (above baseline)', fontsize=12)
    plt.title('Contention Analysis - Data Log', fontsize=14, fontweight='bold')
    plt.grid(True, alpha=0.3)
    plt.legend()
    
    # Add statistics to the graph
    max_contention = max(contention)
    avg_contention = np.mean(contention)
    num_peaks = sum(1 for c in contention if c > 0)
    
    stats_text = f'Statistics:\n'
    stats_text += f'Max Contention: {max_contention}\n'
    stats_text += f'Avg Contention: {avg_contention:.2f}\n'
    stats_text += f'Number of Peaks: {num_peaks}\n'
    stats_text += f'Baseline: {baseline}'
    
    plt.text(0.02, 0.98, stats_text, transform=plt.gca().transAxes, 
             verticalalignment='top', bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))
    
    # Adjust layout
    plt.tight_layout()
    
    # Save the graph
    plt.savefig(output_file, dpi=300, bbox_inches='tight')
    print(f"Graph saved as: {output_file}")
    
    # Show the graph
    plt.show()

def create_raw_data_graph(data: List[Tuple[int, int]], baseline: int, 
                         output_file: str = "raw_data_graph.png", 
                         pkl_file: str = None):
    """
    Create a graph of raw data with baseline line.
    
    Args:
        data: List of tuples (value, time)
        baseline: Baseline value
        output_file: Output file name
    """
    values = [value for value, _ in data]
    times = [time for _, time in data]
    
    plt.figure(figsize=(15, 5))
    
    # Raw data graph
    plt.plot(times, values, 'b-', linewidth=2)
    
    # Baseline line
    plt.axhline(y=baseline, color='green', linestyle='--', linewidth=2, 
                label=f'Baseline (average = {baseline})')
    
    # Highlight values above baseline
    above_baseline = [v if v > baseline else baseline for v in values]
    plt.fill_between(times, baseline, above_baseline, alpha=0.3, color='red', 
                     where=[v > baseline for v in values], label='Above Baseline')
    
    plt.xlabel('Time', fontsize=12)
    plt.ylabel('Values', fontsize=12)
    plt.title('Contention Data - Data Log', fontsize=14, fontweight='bold')
    plt.grid(True, alpha=0.3)
    plt.legend(loc="upper right")
    plt.tight_layout()
    
    plt.savefig(output_file, dpi=300, bbox_inches='tight')
    print(f"Raw data graph saved as: {output_file}")
    plt.show()

def main():
    """CLI entry point."""
    parser = argparse.ArgumentParser(description="Data Log Analyzer (supports 'value @ time' or just 'value').")
    parser.add_argument('file', help='Input log file to analyze')
    parser.add_argument('--use-mean', action='store_true', help='Use mean instead of median for baseline')
    parser.add_argument('--no-graphs', action='store_true', help='Only print statistics, do not generate graphs')
    parser.add_argument('-o', '--output', default='analysis', help='Output base name or path (default: analysis). Example: -o results/run1')
    args = parser.parse_args()

    print("=== Trace Analyzer ===")
    print(f"Analyzing file: {args.file}")

    data = parse_Data_log(args.file)
    if not data:
        return

    analyze_data_distribution(data)

    baseline, filtered_data = calculate_baseline(data, use_median=not args.use_mean)

    filtered_values = [value for value, _ in filtered_data]
    print(f"\nFinal statistics (filtered data only):")
    print(f"Selected baseline: {baseline}")
    print(f"Points above baseline: {sum(1 for v in filtered_values if v > baseline)}")
    print(f"Time range analyzed: {min(time for _, time in filtered_data)} - {max(time for _, time in filtered_data)}")

    if args.no_graphs:
        print("Graphs disabled (--no-graphs). Done.")
        return

    # Derive directory and base prefix from -o
    base_path = args.output
    out_dir = os.path.dirname(base_path) or '.'
    base_name = os.path.basename(base_path)
    # Strip extension if user provided one (e.g., .png)
    if '.' in base_name:
        base_name = os.path.splitext(base_name)[0]
    os.makedirs(out_dir, exist_ok=True)
    print(f"\nCreating graphs in '{out_dir}' with base '{base_name}'...")
    contention_path = os.path.join(out_dir, f"{base_name}_contention_graph.png")
    raw_path = os.path.join(out_dir, f"{base_name}_raw_data_graph.png")
    #create_contention_graph(filtered_data, baseline, output_file=contention_path)
    pkl_path = os.path.splitext(raw_path)[0] + '.pkl'
    create_raw_data_graph(filtered_data, baseline, output_file=raw_path, pkl_file=pkl_path)
    print(f"Saved: {contention_path}\nSaved: {raw_path}\nSaved: {pkl_path}")

    print("\nAnalysis complete!")

if __name__ == "__main__":
    main()
