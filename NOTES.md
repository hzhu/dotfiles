# Notes

Notes to get up and running with vim. Primary to enable copy and pasting, syntax highlighting for TypeScript, autocompletion for TypeScript, and plugin management.

## Enable clipboard+
By default on Mac, vim does not come with clipboard enabled. To enable clipboard install vim using Homebrew:

```
brew install vim
```

and restarting terminal is required.

## Plugin Manager

[vim-plug](https://github.com/junegunn/vim-plug) is used as a plugin manager. Installation directions can be found [here](https://github.com/junegunn/vim-plug#installation).

Once installed, directories for plugins can be specified in `.vimrc` for the plugin manager to download, for example:

```vim
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" install plugin for autocompletion for typescript
Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py --ts-completer' }

" Initialize plugin system
call plug#end()
```

Once specified, navigate to vim and execute the follwing vim command to install plugins:

```vim
:PlugInstall
```

## Autocompletion

`cmake` is required and can be installed via:

```sh
brew install cmake
```

Install [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe#macos) via `install.py`.

## TypeScript

[typescript-vim](https://github.com/leafgarland/typescript-vim) is a plugin for TypeScript syntax highlighting (not autocompletion).

From Vim 8 onward, the plugin can be installed as simply as:

```
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim
```
