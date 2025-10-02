# NeoVim

## Requirements

| Tool   | Version |
| ------ | ------- |
| NeoVim | > v0.11 |

## Installation

You need to clone the TPM, the plugin manager for tmux

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```



## Keymaps

### General

| Mode   | Keys             | Action              |
| ------ | ---------------- | ------------------- |
| Normal | `<Space>q`       | Quit                |
| Normal | `<Space>e`       | Open Tree           |
| Normal | `<Space>i`       | Close Tree          |
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

### Code Folding

| Mode   | Keys | Action                       |
| ------ | ---- | ---------------------------- |
| Normal | `zc` | Close the fold at the cursor |
| Normal | `zo` | Open the fold at the cursor |
| Normal | `za` | Toggle the fold at the cursor |

