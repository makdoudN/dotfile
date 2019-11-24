HISTFILE="$HOME/.histfile"
HISTSIZE=1000
SAVEHIST=1000

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

ZSH_THEME="spaceship"

export TERM='xterm-256color'
export EDITOR=vim
export PAGER=vimpager
export ZSH="/home/nizam/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

source $ZSH/oh-my-zsh.sh
source ~/.alias_zsh

#
## Export
#

export PATH=$PATH:/usr/local/go/bin
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/home/nizam/workspace/repos/faiss/python"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia-384
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/nizam/.mujoco/mjpro150/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/nizam/.mujoco/mujoco200/bin

export PKG_CONFIG_PATH="$HOME/bin/libmypaint/lib/pkgconfig/"
export WANDB_API_KEY=7c2782805bfbc7ca7b85568f1906399eb9f3fbde
export MUJOCO_PY_FORCE_CPU=True

plugins+=(k)

DISABLE_UNTRACKED_FILES_DIRTY="true"
skip_global_compinit=1
ZSH_DISABLE_COMPFIX=true

#
# GOOGLE COULD
#

export CLOUDSDK_PYTHON="/home/nizam/miniconda3/envs/gcloud/bin/python2.7"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nizam/google-cloud-sdk/path.zsh.inc' ]; then . '/home/nizam/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/nizam/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/nizam/google-cloud-sdk/completion.zsh.inc'; fi


source /home/nizam/.venvburrito/startup.sh

export PATH="$PATH:/home/nizam/.fzf/bin/"
#
# set PATH for cuda 10.1 installation
if [ -d "/usr/local/cuda-10.1/bin/" ]; then
    export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

#
# CONDA OPTIONS
#

export PATH=~/miniconda3/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nizam/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nizam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nizam/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nizam/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias tmux="env TERM=screen-256color tmux"
alias up="sudo apt update && sudo apt upgrade && sudo apt full-upgrade"

alias MJ="LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so"
alias xboxgo="sudo dkms install -m xpad -v 0.4 & sudo modprobe -r xpad & sudo modprobe xpad"
alias vimrc="vim ~/.vimrc"
alias ls="exa -l"

WANDB_API_KEY="7c2782805bfbc7ca7b85568f1906399eb9f3fbde"

workon rl


LS_COLORS='
COLOR tty

TERM ansi
TERM *color*
TERM con[0-9]*x[0-9]*
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM dvtm
TERM dvtm-256color
TERM Eterm
TERM eterm-color
TERM fbterm
TERM gnome
TERM gnome-256color
TERM hurd
TERM jfbterm
TERM konsole
TERM konsole-256color
TERM kterm
TERM linux
TERM linux-c
TERM mlterm
TERM putty
TERM putty-256color
TERM rxvt*
TERM rxvt-unicode
TERM rxvt-256color
TERM rxvt-unicode256
TERM screen*
TERM screen-256color
TERM st
TERM st-256color
TERM terminator
TERM tmux*
TERM tmux-256color
TERM vt100
TERM xterm*
TERM xterm-color
TERM xterm-88color
TERM xterm-256color

#+-----------------+
#+ Global Defaults +
#+-----------------+
NORMAL 00
RESET 0

FILE 00
DIR 01;34
LINK 36
MULTIHARDLINK 04;36

FIFO 04;01;36
SOCK 04;33
DOOR 04;01;36
BLK 01;33
CHR 33

ORPHAN 31
MISSING 01;37;41

EXEC 01;36

SETUID 01;04;37
SETGID 01;04;37
CAPABILITY 01;37

STICKY_OTHER_WRITABLE 01;37;44
OTHER_WRITABLE 01;04;34
STICKY 04;37;44

#+-------------------+
#+ Extension Pattern +
#+-------------------+
#+--- Archives ---+
.7z 01;32
.ace 01;32
.alz 01;32
.arc 01;32
.arj 01;32
.bz 01;32
.bz2 01;32
.cab 01;32
.cpio 01;32
.deb 01;32
.dz 01;32
.ear 01;32
.gz 01;32
.jar 01;32
.lha 01;32
.lrz 01;32
.lz 01;32
.lz4 01;32
.lzh 01;32
.lzma 01;32
.lzo 01;32
.rar 01;32
.rpm 01;32
.rz 01;32
.sar 01;32
.t7z 01;32
.tar 01;32
.taz 01;32
.tbz 01;32
.tbz2 01;32
.tgz 01;32
.tlz 01;32
.txz 01;32
.tz 01;32
.tzo 01;32
.tzst 01;32
.war 01;32
.xz 01;32
.z 01;32
.Z 01;32
.zip 01;32
.zoo 01;32
.zst 01;32

#+--- Audio ---+
.aac 32
.au 32
.flac 32
.m4a 32
.mid 32
.midi 32
.mka 32
.mp3 32
.mpa 32
.mpeg 32
.mpg 32
.ogg 32
.opus 32
.ra 32
.wav 32

#+--- Customs ---+
.3des 01;35
.aes 01;35
.gpg 01;35
.pgp 01;35

#+--- Documents ---+
.doc 32
.docx 32
.dot 32
.odg 32
.odp 32
.ods 32
.odt 32
.otg 32
.otp 32
.ots 32
.ott 32
.pdf 32
.ppt 32
.pptx 32
.xls 32
.xlsx 32

#+--- Executables ---+
.app 01;36
.bat 01;36
.btm 01;36
.cmd 01;36
.com 01;36
.exe 01;36
.reg 01;36

#+--- Ignores ---+
*~ 02;37
.bak 02;37
.BAK 02;37
.log 02;37
.log 02;37
.old 02;37
.OLD 02;37
.orig 02;37
.ORIG 02;37
.swo 02;37
.swp 02;37

#+--- Images ---+
.bmp 32
.cgm 32
.dl 32
.dvi 32
.emf 32
.eps 32
.gif 32
.jpeg 32
.jpg 32
.JPG 32
.mng 32
.pbm 32
.pcx 32
.pgm 32
.png 32
.PNG 32
.ppm 32
.pps 32
.ppsx 32
.ps 32
.svg 32
.svgz 32
.tga 32
.tif 32
.tiff 32
.xbm 32
.xcf 32
.xpm 32
.xwd 32
.xwd 32
.yuv 32

#+--- Video ---+
.anx 32
.asf 32
.avi 32
.axv 32
.flc 32
.fli 32
.flv 32
.gl 32
.m2v 32
.m4v 32
.mkv 32
.mov 32
.MOV 32
.mp4 32
.mpeg 32
.mpg 32
.nuv 32
.ogm 32
.ogv 32
.ogx 32
.qt 32
.rm 32
.rmvb 32
.swf 32
.vob 32
.webm 32
.wmv 32'

COLOR_SCRIPT_REPO=https://api.github.com/repos/stark/Color-Scripts/contents/color-scripts
wget -q -O - $(curl -s $COLOR_SCRIPT_REPO | jq '.[] | "\(.path) \(.download_url)"' -r | shuf -n1 | cut -d " " -f2) | bash
