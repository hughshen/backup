"###编码设置
set encoding=utf-8
set fileencoding=utf-8

"###路径设置
set autochdir "自动设置当前编辑文件所在目录为当前工作路径

"###界面设置
colorscheme desert "设置配上方案
set number "显示行号
set showmatch "括号匹配模式
"set gcr=a:block-blinkon0 "禁止光标闪烁
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
"set laststatus=2 "总是显示状态栏
"set ruler "显示光标当前位置
"set cursorline "高亮显示当前行
"set cursorcolumn "高亮显示当前列
"set nowrap "禁止换行

"###代码缩进
"set expandtab "将制表符扩展为空格
set cindent "c语言格式对齐
set autoindent "自动对齐
set smartindent "智能对齐
set tabstop=4	"tab键为4个空格
set shiftwidth=4	"换行时行间交错使用4个空格
set softtabstop=4	"设置（软）制表符宽度为4

"###其他设置
set nobackup "不要备份文件
set nocompatible "不使用vi默认键盘布局
set incsearch "查询时非常方便，如要查找book单词，当输入/b时，会自动找到第一个b开头的单词，当输入到/bo时..以此类推
set hlsearch	"高亮显示搜索结果
"set clipboard+=unnamed "与windows共享剪贴板
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"###文件检测
filetype on "检测文件的类型
filetype plugin on "载入文件类型插件
filetype indent on "载入特定文件类型缩进

"###语法高亮
syntax enable "开启语法高亮
syntax on "允许用指定的语法高亮配色方案代替默认方案

"###快捷键设置
"nmap la ^
"nmap le $

"NERDTree配置
map <C-n> :NERDTreeToggle<CR>

"获取当前系统
function! MySys()
	if has("win16") || has("win32") || has("win64") || has("win95")
		return "windows"
	elseif has("unix")
		return "linux"
	endif
endfunction

"单独系统设置
if MySys() == "windows"
	source $VIMRUNTIME/mswin.vim
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	behave mswin
	language message zh_CN.utf-8 "解决consle输出乱码
endif
