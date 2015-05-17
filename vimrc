set encoding=utf-8
set fileencoding=utf-8
set autochdir "自动设置当前编辑文件所在目录为当前工作路径
colorscheme desert "设置配上方案
set nocompatible "不使用vi默认键盘布局
set number "显示行号
set autoindent "自动对齐
set smartindent "智能对齐
"set showmatch "括号匹配模式
set ruler "显示状态行
set incsearch "查询时非常方便，如要查找book单词，当输入/b时，会自动找到第一个b开头的单词，当输入到/bo时..以此类推
set hlsearch	"高亮显示搜索结果
set tabstop=4	"tab键为4个空格
set shiftwidth=4	"换行时行间交错使用4个空格
set softtabstop=4	"设置（软）制表符宽度为4
set cindent "c语言格式对齐
set nobackup "不要备份文件
"set clipboard+=unnamed "与windows共享剪贴板
filetype on "检测文件的类型
filetype plugin on "载入文件类型插件
filetype indent on "载入特定文件类型缩进
syntax on "语法高亮显示
set guioptions-=T "取出vim的gui版本的toolbar
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

function MySys()
	if has("win16") || has("win32") || has("win64") || has("win95")
		return "windows"
	elseif has("unix")
		return "linux"
	endif
endfunction

if MySys() == "windows"
	source $VIMRUNTIME/mswin.vim
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	behave mswin
	language message zh_CN.utf-8 "解决consle输出乱码
endif
