#!/usr/bin/env python3
"""
Show interactive graph(s) from data file(s).
Usage:
  python3 plot_graph.py <file1>
  python3 plot_graph.py <file1> <file2>
Notes:
  - Each line can be: "<value>" or "<value> @ <time>". Non-numeric lines are ignored.
"""
import sys
import matplotlib.pyplot as plt
import numpy as np

def load_data(path):
    vals, times = [], []
    with open(path) as f:
        for idx, line in enumerate(f):
            line = line.strip()
            if not line or line.startswith('#'):
                continue
            try:
                if '@' in line:
                    a, b = line.split('@', 1)
                    v = float(a.strip())
                    t = float(b.strip())
                else:
                    v = float(line.split()[0])
                    t = float(idx)
            except ValueError:
                continue
            vals.append(v)
            times.append(t)
    return np.array(times, dtype=float), np.array(vals, dtype=float)

def plot_single(times, vals, label):
    baseline = float(np.median(vals))
    plt.figure(figsize=(15, 5))
    plt.plot(times, vals, 'b-', linewidth=2, label=label)
    plt.axhline(y=baseline, color='green', linestyle='--', linewidth=2, label=f'Baseline (median = {baseline:g})')
    above = np.where(vals > baseline, vals, baseline)
    plt.fill_between(times, baseline, above, alpha=0.3, color='red', where=vals > baseline, label='Above Baseline')
    plt.xlabel('Time')
    plt.ylabel('Value')
    plt.title('Raw Data Graph')
    plt.grid(True, alpha=0.3)
    plt.legend(loc="upper right")
    plt.tight_layout()
    plt.show()

def plot_double(t1, v1, l1, t2, v2, l2):
    plt.figure(figsize=(15, 5))
    plt.plot(t1, v1, 'b-', linewidth=2, label=l1)
    plt.plot(t2, v2, 'r-', linewidth=2, label=l2)
    plt.xlabel('Time')
    plt.ylabel('Value')
    plt.title('Compare Data Graph')
    plt.grid(True, alpha=0.3)
    plt.legend(loc="upper right")
    plt.tight_layout()
    plt.show()

def main():
    if not (2 <= len(sys.argv) <= 3):
        print('Usage: python3 plot_graph.py <file1> [file2]')
        sys.exit(1)

    file1 = sys.argv[1]
    times1, vals1 = load_data(file1)

    if len(sys.argv) == 2:
        plot_single(times1, vals1, label=file1)
    else:
        file2 = sys.argv[2]
        times2, vals2 = load_data(file2)
        plot_double(times1, vals1, file1, times2, vals2, file2)

if __name__ == '__main__':
    main()
