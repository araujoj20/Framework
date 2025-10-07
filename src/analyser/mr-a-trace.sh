#!/bin/bash
set -euo pipefail

# Pipeline script:
# 1. Extract from last START marker: extract_log.py
# 2. Interleave sliding windows: sliding_group.py
# 3. Generate graphs: adv_graph.py (renamed action)
# 
# Configurable variables below:
SH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # Real script path

TOOLS_DIR=$SH_DIR/tools

INPUT_LOG=/home/$USER/Desktop/minicom.txt
MARKER_START=START
MARKER_END=END
EXTRACTED_FILE=trace_extracted.txt
SLIDING_FILE=sliding_group.txt

GRAPH_PREFIX=mbedtls

TEST_PATH=$1

mkdir -p $TEST_PATH

# Parse flags
EXTRACT=0
GROUP=0
GRAPH=0

for arg in "$@"; do
    case $arg in
        --extract)  EXTRACT=1 ;;
        --group)    GROUP=1 ;;
        --graph)    GRAPH=1 ;;
    esac
done

# If no flags, run all steps
if [ $EXTRACT -eq 0 ] && [ $GROUP -eq 0 ] && [ $GRAPH -eq 0 ]; then
    EXTRACT=1
    GROUP=1
    GRAPH=1
fi

# 1. Extract tail from last START
if [ $EXTRACT -eq 1 ]; then
    python3 "$TOOLS_DIR/extract_log.py" -m "$MARKER_START" -o "$TEST_PATH/$EXTRACTED_FILE" "$INPUT_LOG"
echo "  Extracted: $EXTRACTED_FILE"
fi

# 2. Sliding windows (sliding grouping)
if [ $GROUP -eq 1 ]; then
    python3 "$TOOLS_DIR/sliding_group.py" --start-label "$MARKER_START" --end-label "$MARKER_END" -i "$TEST_PATH/$EXTRACTED_FILE" -o "$TEST_PATH/$SLIDING_FILE"
    echo "  Trace grouped: $SLIDING_FILE"
fi

# 3. Analyze & produce graphs (accepts value-only file too)
if [ $GRAPH -eq 1 ]; then
    python3 "$TOOLS_DIR/adv_graph.py" -o "$TEST_PATH/$GRAPH_PREFIX" "$TEST_PATH/$SLIDING_FILE"
    echo "  Graph: ${GRAPH_PREFIX}_raw_data_graph.png"
fi
