import argparse
from typing import List, Iterable

# Default labels (can be overridden via CLI before parsing windows)
START_LABEL = 'START'
END_LABEL = 'END'

def parse_windows(input_path: str) -> List[List[str]]:
    """Parse windows with the following REQUIRED structure:

    Only values collected BEFORE each END belong to that window. A trailing partial
    window without END is discarded (enforce clean delimiters).
    """
    windows: List[List[str]] = []
    current: List[str] = []
    started = False

    with open(input_path, 'r') as f:
        for raw in f:
            line = raw.strip()
            if not line:
                continue
            if not started:
                # Expect START as very first meaningful line
                if line != START_LABEL:
                    print(f"Error: first non-empty line must be '{START_LABEL}'.")
                    return []
                started = True
                continue  # move to next line collecting data

            if line == END_LABEL:
                if current:
                    windows.append(current)
                current = []
                continue

            # Data line inside current (implicit) window
            if '@' in line:
                value = line.split('@', 1)[0].strip()
            else:
                value = line.split()[0]
            current.append(value)

    # Do NOT append trailing data without END (enforcing strict format)
    if current:
        print(f"Warning: trailing data without {END_LABEL} ignored (format requires {END_LABEL} after each window).")

    return windows


def interleave(windows: List[List[str]]) -> Iterable[str]:
    """Interleave position by position: take index 0 from each window, then index 1, etc.
    If windows have different lengths, shorter ones just stop contributing.
    """
    if not windows:
        return []
    max_len = max(len(w) for w in windows)
    for i in range(max_len):
        for w in windows:
            if i < len(w):
                yield w[i]


def main():
    parser = argparse.ArgumentParser(description="Reconstruct global sequence by interleaving sliding windows.")
    parser.add_argument('-i', '--input', dest='input', required=True, help='Input file (with START ... END blocks)')
    parser.add_argument('-o', '--output', default='reconstructed.txt', help='Output file (default: reconstructed.txt)')
    parser.add_argument('--with-index', action='store_true', help='Also write global index: <value> @ <idx>')
    parser.add_argument('--start-label', default='START', help="Custom START label (default: 'START')")
    parser.add_argument('--end-label', default='END', help="Custom END label (default: 'END')")
    args = parser.parse_args()

    # Override global labels before parsing
    global START_LABEL, END_LABEL
    START_LABEL = args.start_label
    END_LABEL = args.end_label

    windows = parse_windows(args.input)
    if not windows:
        print('No windows found.')
        return

    count_windows = len(windows)
    total_vals = sum(len(w) for w in windows)
    print(f"Windows read: {count_windows}. Total values (sum of all windows): {total_vals}.")

    with open(args.output, 'w') as out:
        for idx, value in enumerate(interleave(windows)):
            if args.with_index:
                out.write(f"{value} @ {idx}\n")
            else:
                out.write(f"{value}\n")

    print(f'Sliding sequence written to {args.output}')


if __name__ == '__main__':
    main()
