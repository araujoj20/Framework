#!/usr/bin/env python3
"""Extract tail of a file starting at the LAST occurrence of a START line.

Usage:
  python3 extract_last_start.py input.txt output.txt

Behavior:
  - Scans the file from the end (using mmap) to find the LAST line that is exactly 'START'.
  - Copies from that START line (inclusive) to the end of the file into the output file.
  - If no START line is found, exits with non‑zero status.

Large files:
  Uses mmap so it does not load the whole content into Python objects first.
"""

import sys
import os
import re
import mmap
import argparse
from typing import Optional

START_PATTERN = re.compile(rb'(^|\n)START(\r?\n)', re.MULTILINE)

def find_last_start_position(path: str) -> Optional[int]:
    """Return byte offset of the last START line (beginning of the word START) or None."""
    size = os.path.getsize(path)
    if size == 0:
        return None
    with open(path, 'rb') as f:
        with mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ) as mm:
            last_pos = None
            for m in START_PATTERN.finditer(mm):
                # m.start() points either to beginning of file or to \n before START; we want the S
                if m.group(1) == b'':  # file start
                    s_pos = m.start()
                else:
                    s_pos = m.start() + 1  # skip the preceding newline
                last_pos = s_pos
            return last_pos

def extract_from_last_start(src: str, dst: str, marker: str = 'START') -> bool:
    if marker != 'START':
        # Build dynamic regex for custom marker
        global START_PATTERN
        START_PATTERN = re.compile(rb'(^|\n)' + re.escape(marker.encode()) + rb'(\r?\n)', re.MULTILINE)
    pos = find_last_start_position(src)
    if pos is None:
        print(f'ERROR: No {marker} line found.')
        return False
    with open(src, 'rb') as fin, open(dst, 'wb') as fout:
        fin.seek(pos)
        # Stream copy in chunks
        for chunk in iter(lambda: fin.read(1024 * 1024), b''):
            fout.write(chunk)
    print(f'Copied tail (from last "{marker}" at byte {pos}) -> {dst}')
    return True

def main():
    parser = argparse.ArgumentParser(
        description='Copy from the last occurrence of a marker line (default: START) to end of file.'
    )
    parser.add_argument('input', help='Input file path')
    parser.add_argument('-o', '--output', default='tail_from_last_start.txt', help='Output file (default: tail_from_last_start.txt)')
    parser.add_argument('-m', '--marker', default='START', help='Marker line to search for (default: START)')
    args = parser.parse_args()

    if not os.path.isfile(args.input):
        print(f'ERROR: input file not found: {args.input}')
        return 2
    ok = extract_from_last_start(args.input, args.output, marker=args.marker)
    return 0 if ok else 3

if __name__ == '__main__':
    raise SystemExit(main())
