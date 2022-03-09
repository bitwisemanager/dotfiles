# Dotfiles

This repository holds all my main configuration files. They meet all (or almost all) of my daily
needs and I'm making them available in the hope that they can help others too, so feel free to suggest,
modify and use it as needed.

# Contents

* [(Neo)vim](https://github.com/kodestrider/dotfiles/blob/main/README.md#neovim)
    * [External Dependencies](https://github.com/kodestrider/dotfiles/blob/main/README.md#external-dependencies)
    * [Installing (Neo)vim Plugins](https://github.com/kodestrider/dotfiles/blob/main/README.md#installing-neovim-plugins)
    * [(Neo)vim Plugin List](https://github.com/kodestrider/dotfiles/blob/main/README.md#neovim-plugin-list)
    * [Custom Shortcuts](https://github.com/kodestrider/dotfiles/blob/main/README.md#custom-shortcuts)
    * [Installing the Coc Extensions](https://github.com/kodestrider/dotfiles/blob/main/README.md#installing-the-coc-extensions)
    * [Configuring the Coc Plugins](https://github.com/kodestrider/dotfiles/blob/main/README.md#configuring-the-coc-plugins)

# (Neo)vim

File: [init.vim](init.vim)

## Installing (Neo)vim Plugins

All configuration requires [vim-plug](https://github.com/junegunn/vim-plug) as plugin manager,
so make sure to install it as soon as possible. After sucessfully installed, from _Normal Mode_,
type `:PlugInstall` and wait for the instalation to complete.

## External Dependencies

* [clangd](https://clangd.llvm.org/installation.html): it's used for lint, format and a lot of features used through the configuration file
* [nodejs > 12.12](https://nodejs.org/en/download/): it's required by [coc-nvim](https://github.com/neoclide/coc.nvim)
* [vim-plug](https://github.com/junegunn/vim-plug): a minimalist (Neo)vim plugin manager which install all required plugins

## (Neo)vim Plugin List

Adding some features:

| Name                                                                   | Description   |
|:-----------------------------------------------------------------------|:--------------|
| [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)              | Make your editor as smart as VSCode (installing pluggins, adding features and shortcuts)             |
| [dense-analysis/ale](https://github.com/dense-analysis/ale)            | Providing linting (syntax checking and semantic errors)                                              |
| [preservim/nerdtree](https://github.com/preservim/nerdtree)            | A file system explorer for the editor                                                                |
| [preservim/nerdcommenter](https://github.com/preservim/nerdcommenter)  | Adding shortcuts for using the correct comment symbol in a long list of files with minimal effort    |

Adding some GUI improvements

| Name                                                                                  | Description                                                           |
|:--------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| [morhetz/gruvbox](https://github.com/morhetz/gruvbox)                                 | A beutiful retro groove color scheme                                  |
| [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                         | Displaying the indention levels with thin vertical lines              |
| [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)                 | Adding a nice statusline at the bottom of each vim window             |
| [vim-highlight-cursor-words](https://github.com/pboettch/vim-highlight-cursor-words)  | Highlighting words under cursor everywhere in the opened buffer       |
| [vim-arlines/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)   | A collection of themes for vim-airline                                |

## Custom Shortcuts

_NORMAL MODE_:

| Shortcut                              | Description                                                                                                                                           |
|:--------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------|
| &lt;leader&gt;a                       | Open a FUZZY window for searching and selecting diagnostics                                                                                           |
| _[count]_&lt;leader&gt;c&lt;space&gt;   | Toggles the comment state of the selected lines(s). If the topmost selected line is commented, all selected lines ate uncommented and vice versa    |
| &lt;leader&gt;ca                      | Switch to the alternative set of delimiters ("\\" or "\**\" in C/C++)                                                                                 |
| &lt;leader&gt;cA                      | Adds comment delimiters to the end of line and goes into insert mode between them                                                                     |
| _[count]_&lt;leader&gt;ci             | Toggles the comment state of the selected lines(s) individually                                                                                       |
| _[count]_&lt;leader&gt;cs             | Comments out the selected lines with a pretty block formatted layout                                                                                  |
| _[count]_&lt;leader&gt;cy             | Same as cc except that the commentes line(s) are yanked first                                                                                         |
| _[count]_&lt;leader&gt;cm             | Toggles the given lines using only one set of multipart delimiters.                                                                                   |
| &lt;leader&gt;c$                      | Comments the current line from the cursor to the end of line                                                                                          |
| &lt;leader&gt;cu                      | Uncomments the selected lines(s)                                                                                                                      |
| &lt;leader&gt;d                       | Open a FUZZY window for seaching and selecting symbols                                                                                                |
| &lt;leader&gt;s                       | Open a FUZZY window for seaching and selecting symbols                                                                                                |
| &lt;leader&gt;fg                      | Open a window with the available fixes if there are any                                                                                               |
| &lt;C-n&gt;                           | Toggle the NERDTree window                                                                                                                            |
| &lt;leader&gt;f                       | Select a code block with visual mode and format it                                                                                                    |
| &lt;leader&gt;rn                      | Open a window which allow you to rename all occurrences of the symbol at once                                                                         |
| &lt;leader&gt;rn                      | Open a window with all occurrences of the same symbol through the files and change all them at once                                                   |
| gd                                    | Go to the symbol's definition                                                                                                                         |
| gr                                    | List the symbol's reference used in all opened files                                                                                                  |
| K                                     | Open a preview window with the documentation's symbol                                                                                                 |
| ]g                                    | Navigate to the next diagnostic                                                                                                                       |
| [g                                    | Navigate to the previous diagnostic                                                                                                                   |
| &lt;ESC&gt;                           | Pressing the key all hightlighs of searching are removed                                                                                              |
| &lt;A-j&gt;                           | Move the entire line down                                                                                                                             |
| &lt;A-k&gt;                           | Move the entire line up                                                                                                                               |
| &lt;leader&gt;t                       | If the file under the cursor has a header or a source file, toggle between them using the current buffer.                                             |
| &lt;leader&gt;&vert;                  | If the file under the cursor has a header or a source file, open the another one in a new vertical window, side by side.                              |

_VISUAL MODE_:

| Shortcut                  | Description                                                               |
|:--------------------------|:--------------------------------------------------------------------------|
| if                        |   Map the function inner scope                                            |
| af                        |   Map the function inner scope and its definition                         |
| ic                        |   Map the class inner scope                                               |
| ac                        |   Map the class inner scope and its definition                            |

## Installing the Coc Extensions

Currently, the only required extension is [coc-clangd](https://github.com/clangd/coc-clangd).
From _Normal Mode_, type the command `:CocInstall coc-clangd` to install it and make sure to
configure the [clangd](https://clangd.llvm.org/installation.html) language server.

## Configuring the Coc Plugins

From _Normal Mode_, enter the _Command Mode_  by running `:CocConfig`. Then, copy and paste
the code bellow in the `coc-setting.json` file which will be opened.

```json
{
    clang.enabled: true
}
```
