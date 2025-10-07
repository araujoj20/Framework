#!/usr/bin/env bash
set -e

test_n="test1"

echo "[DEBUG] CWD: $(pwd)"
echo "[DEBUG] Listing:"
ls -la
echo "[framework] $framework"
echo "[out_dir] $out_dir"
echo "[cfg_file] $cfg_file"

framework="$(realpath ../../../../mcu-fw.sh)"
out_dir="$(realpath ../../../../Test/st)"
cfg_file="$(realpath ../../../../configs/stm32f407.json)"

"$framework" -n "$test_n" -o "$out_dir" -C "$cfg_file" -f "$test_n.json" -g -b

arm-none-eabi-objdump -d -S "$out_dir/$test_n/build/$test_n.elf" > output.asm

if diff -u <(tail -n +3 expected_output.asm) <(tail -n +3 output.asm); then
    echo "✅ ASM files are functionally identical"
else
    echo "❌ ASM files differ"
    exit 1
fi
