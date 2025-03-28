# telescope-git-recent.nvim

🚀 **telescope-git-recent.nvim** is a Neovim plugin and Telescope extension that allows you to quickly find and edit files from the most recent Git commit. It leverages the command `git diff-tree --no-commit-id --name-only -r HEAD` to fetch the list of recently committed files and displays them in a Telescope picker.

## ✨ Features

- Quickly access files from the latest Git commit.
- Seamless integration with [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Open files directly from the picker for editing.

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "unwarlikepoodle/telescope-git-recent.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("git_recent")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
  "unwarlikepoodle/telescope-git-recent.nvim",
  requires = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("git_recent")
  end,
}
```

## ⚙️ Setup

To use the extension, ensure you have Telescope installed and load the `git_recent` extension in your Neovim configuration:

```lua
require("telescope").load_extension("git_recent")
```

## 🚀 Usage

Run the following command to open the picker and view recently committed files:

```vim
:Telescope git_recent
```

## 🛠 Requirements

- [Neovim](https://neovim.io/) 0.5 or later.
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Git must be installed and available in your system's PATH.

## 📄 License

This plugin is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🙌 Acknowledgments

Special thanks to the [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) community for their amazing work and documentation.
