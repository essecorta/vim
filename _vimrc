" Sui sistemi Windows il file si deve chiamare _vimrc, sui sistemi Unix .vimrc
"
" I comandi ':echo $HOME', ':echo $VIM', ':echo $VIMRUNTIME' e ':echo $MYVIMRC'
" possono essere utilizzati per avere informazioni sulla configurazione di Vim
" e della Home Directory.


source $VIMRUNTIME/defaults.vim          "include le impostazioni di default

" Opzioni abilitate
set number                               "abilita i numeri di riga
set relativenumber                       "abilita i numeri di riga relativi
set hlsearch                             "abilita l'evidenziazione dei risultati di una ricerca
set incsearch                            "abilita la visualizzazione dei match parziali mentre si digita
set wrapscan                             "abilita la continuazione della ricerca da BOF una volta raggiunto EOF (o viceversa)
set hidden                               "abilita la possibilitÓ di nascondere buffer modificati senza doverli prima salvare
set wildmenu                             "abilita la visualizzazione dei match durante la command-line completion
set laststatus=2                         "abilita la visualizzazione della statusbar anche con una sola finestra presente

" Opzioni disabilitate
set nowrap                               "disabilita il soft-wrap
set ignorecase                           "disabilita il match case sensitive

" Tabulazione
set tabstop=4                            "tab di dimensione 4
set shiftwidth=4                         "indentazioni di dimensione 4
set softtabstop=4                        "???
set expandtab                            "inserisce spazi al posto di tab
set autoindent                           "le nuove righe hanno stessa indentazione delle precedenti

" Mapping
nnoremap ¨ /

" Aspetto
if has('gui_running') || has('gui_vimr')
    colorscheme desert
endif
