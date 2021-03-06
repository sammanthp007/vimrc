# vimrc
## To Use:

### First Setup Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Add the file in this repo as your ~/.vimrc
```
git clone https://github.com/sammanthp007/vimrc.git && mv vimrc/vimrc ~/.vimrc && rm -rf vimrc
```

### Download and install all the plugins
```
vim +PluginInstall +qall
```

### One liner that sets all this up for you
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && git clone https://github.com/sammanthp007/vimrc.git && mv vimrc/vimrc ~/.vimrc && rm -rf vimrc && vim +PluginInstall +qall
```


## Some features of VIM I use regularly
### For finding content, in command mode:
```
:find
```

### Using buffers
```
:ls
:b 
```

### For using NERDTree, in normal mode:
```
<F5>
```
## For putting the current line at the middle of the screen
```
z.
zz
```

## For putting the current line at the top of the screen
```
zt
```
## For putting the current line at the bottome of the screen as well as for further features
```
zb
:help scroll-cursor
```

## Playing with splits
Vertical Splits
```
:vs
```
Horizontal Splits
```
:split
```
Swap your splits
```
<c-w><Shift-h>
<c-w><Shift-l>
```
Resize your splits width
```
ctrl-w-<
ctrl-w->
```
Resize your splits height
```
<c-w><->
<c-w><+>
<c-w><_>
```
