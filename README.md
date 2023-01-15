# Ryan's dotsfiles

Hi everyone... I'm Ryan. I started my neovim journey since late 2021. I was inspired by craftzdog and follow his youtube video to setup my neovim step by step. Some of the configs are base on his configs but I just pick the setting I need. It's okay for you guys to use my config but I think you still need to take times to understand the meaning of each configs.

## neovim

### configs folder structure

- `.config`
  - `nvim`
    - `after` Lua scripts will be executed after each plugins has been loaded
    - `lua`
      - `base.lua` Basic setup like encoding, indent, etc...
      - `highlights.lua` Configs about cursorline, background, etc...
      - `maps.lua` Configs to setup your own keymaps
      - `plugins.lua` Plugins configurations
      - `windows.lua` Windows specific setup
      - `macos.lua` MacOS specific setup
    - `plugin`
      - `packer_complied.lua` Auto generated packer script
    - `init.lua` The entry point of the neovim configurations
      - There is a condition to determine your neovim is running on MacOS or windows

### plugins

I use `Packer` as my plugin managment tool. In `plugins.lua` you can just put `use '[GITHUB REPO FOR THE PLUGIN]'` and type `:PackerInstall`. Packer will install packages automatically.

## starship

TBD

## Resources

- [craftzdog](https://github.com/craftzdog/dotfiles-public)
- [starship](https://starship.rs)
