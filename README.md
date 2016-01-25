# unite-go-doc

## Requirements

- [vim-jp/go-vim](http://github.com/vim-jp/go-vim) or [fatih/vim-go](http://github.com/fatih/vim-go) or other provider of godoc command.
- [ToQoz/goimps](http://github.com/ToQoz/goimps)
	`go get github.com/ToQoz/goimps`
	Add `set rtp+=$GOPATH/src/github.com/ToQoz/goimps/misc/vim` to your vimrc

## Installation

### with NeoBundle

Add `NeoBundle 'ToQoz/unite-go-doc'`

### with Vundle

Add `Bundle 'ToQoz/unite-go-doc'`

## Configuration

If you want to use custom godoc command that is not :GoDoc

```vim
g:godoc_command = "CustomGoDoc"
```

## Usage

```
:Unite go/doc
```
