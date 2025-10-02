# NeoVim

## Requirements

| Tool   | Version |
| ------ | ------- |
| NeoVim | > v0.11 |

## Keymaps

### General

| Mode   | Keys             | Action              |
| ------ | ---------------- | ------------------- |
| Normal | `<Space>q`       | Quit                |
| Normal | `<Space>e`       | NeoVim Explorer     |
| Normal | `<Space><Space>` | No highlight search |

### Telescope

| Mode   | Keys         | Action                                           |
| ------ | ------------ | ------------------------------------------------ |
| Normal | `<Space>lf`  | Find Files                                       |
| Normal | `<Space>laf` | Find all files (ignoring git and hidden)         |
| Normal | `<Space>le`  | Find text in files                               |
| Normal | `<Space>lae` | Find text in all files (ignoring git and hidden) |
| Normal | `<Space>lae` | Find text in all files (ignoring git and hidden) |

### Surround

| Mode   | Keys                         | Action                                      |
| ------ | ---------------------------- | ------------------------------------------- |
| Normal | `ys<Motion><Delimiter>`      | Surround object with the delimiter          |
| Normal | `cs<DelimiterA><DelimiterB>` | Change delimiter A with delimiter B         |
| Normal | `ds<Delimiter>`              | Delete the delimiter surrounding the object |

### Comments

| Mode   | Keys  | Action                          |
| ------ | ----- | ------------------------------- |
| Normal | `gcc` | Comment/uncomment selected line |
| Visual | `gc`  | Comment/uncomment selected line |

