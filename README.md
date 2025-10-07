# MCU-SC Framework

Framework Framework to rapidly generate, build, deploy, and analyze **microcontroller (MCU)** firmware with **covert- and side-channel (SC)** capabilities. It automates peripheral configuration (TIM, DMA, UART, Trace, Interrupts), code scaffolding, composite interrupt mapping, TrustZone project layout (where applicable), and reproducible covert channel evaluation workflows.

---
## 📁 Repository Layout

```
MCU-SC-FRAMEWORK/
├─ configs/ 	            # Board capability JSONs
├─ docs/	                # HTML diagrams & documentation
├─ src/
│  └─ analyser/           	# Post-run analysis scripts (extraction, ploting)
│  └─ covert_channel/       # Covert channel scripts, tools & templates
│  └─ generator/            # Templates, abstraction layers, drivers & board support code
│  └─ interface/            # JSON config to edit and examples
│  └─ runner/              	# CMake toolchain & OpenOCD scripts
├─ Dockerfile / shell.nix  	# Optional reproducible environment descriptors
├─ mcu-fw.sh                # Main CLI script
└─ LICENSE
```

---
## ✅ Prerequisites

Install / make available on PATH:

- `arm-none-eabi-gcc`, `arm-none-eabi-gdb`, `arm-none-eabi-objcopy`, `arm-none-eabi-size`
- `openocd`
- `python3` (with `jinja2`, `numpy`, `matplotlib`, `pyserial`)
- `jq` (used to parse board JSON)

Initialize submodules:
```bash
git submodule update --init --recursive
```

---
## 🚀 Quick Start

1. Pick (or create) a user config JSON (e.g. `src/interface/demo.json`)
2. Choose a board config (e.g. `configs/stm32f407.json`)
3. Choose a project name and output directory
4. Run with the appropriate [flags](#-cli-mcu-fwsh-summary)

Run generation + build + flash:
```bash
./mcu-fw.sh -n demo -o test/st -C configs/stm32f407.json -f src/interface/demo.json -g -b -d
```

Covert channel full run:
```bash
./mcu-fw.sh cc_demo test/st Configs/stm32f407.json -v
```

TrustZone (if board supports):
```bash
./mcu-fw.sh tz_demo test/st Configs/stm32l552.json --tz -g -b --user_file=Accurate_trace/json_test.json
```

---
## 🛠 CLI (`mcu-fw.sh`) Summary


| Flag                        | Meaning                        |
|-----------------------------|--------------------------------|
| **Required**                |                                |
| `-n`, `--name`              | Project name                   |
| `-o`, `--out`               | Output directory               |
| `-C`, `--config`            | User config file               |
| **Actions**                 |                                |
| `-g`, `--generator`         | Generate code                  |
| `-b`, `--build`             | Build (Release)                |
| `-d`, `--deploy`            | Flash via OpenOCD              |
| `-r`, `--review`            | Only refine user JSON config   |
| `-c`, `--clean`             | Remove build artifacts         |
| `-u`, `--uart`              | Read serial port               |
| `-a`, `--all`               | Generator + build + deploy     |
| `-v`, `--covert_channel`    | Covert channel sequence        |
| **Modifiers**               |                                |
| `--tz`                      | TrustZone layout               |
| `-f`, `--user_file <path>`  | User config JSON               |
| `-h`, `--help`              | Help                           |

Dependency injection rules:
```
deploy -> build -> generator
build  -> generator
```

---
## 🧑‍💻 Configuration Interface (JSON)


1. **Board Config** (`Configs/<board>.json`)
	- Defines static board capabilities and constants: hardware parameters, available peripherals, build options, flash parameters, startup/linker scripts, drivers, and abstration layer.
	- Only edited when adding a new board or fixing platform data.

2. **User Config** (passed via `-f/--user_file`)
	- Declares the desired firmware composition: timers, DMA, trace, gadgets, interrupt modes, OW variants, etc.
	- This file is manually edited to define the intended firmware composition.
	- [Configuration schema](docs/framework/check_refine/schema.html) for field details and examples.

3. **Refined Config** (auto-generated in `Build/` during review/refine)
	- Normalized copy of the user config: applies consistent casing, fills in defaults, resolves aliases, and strips board-only fields.
	- Serves as an auditable record of what was actually used for code generation.

### JSON Eaxmple (user config)
```json
{
	"timers": {
		"TIM2": { "period": 4294967295, "prescaler": 0, "interrupt": "CC", "irq_handler": "DISABLE", "dma": "TIM2_DMA" },
		"TIM2_OW_1": { "period": 500, "prescaler": 7 },
		"TIM8": { "period": 1, "prescaler": 0, "interrupt": "UP", "irq_handler": "ENABLE" }
	},
	"dmas": {
		"TIM2_DMA": { "name": "DMA1", "request": "TIM2_UP", "direction": "PERIPH_TO_MEMORY" }
	}
}
```
---

## 🔐 TrustZone (TZ)

When `--tz` is supplied and the board config supports it, the generator copies secure assets and sets up a `Secure/` + `NonSecure/` layout. Build target names and flash steps adapt accordingly.

---
## 🛠 Extending the Framework

| Area | How |
|------|-----|
| New MCU family | Add board JSON in `configs/`, the required generation components under `src/generator/<vendor>/` and a board CMake file in `src/runner/cmake/<vendor>/board/`. |
| New peripheral | Create `<periph>_gen.py` + Jinja2 templates and call it from `mcu-fw.sh`. Update `src/generator/<vendor>/templates/review_and_refine.py` to add the required validation and normalization logic. |

---
## 📜 License

See [LICENSE](./LICENSE).

---
