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
set hidden                               "abilita la possibilità di nascondere buffer modificati senza doverli prima salvare
set wildmenu                             "abilita la visualizzazione dei match durante la command-line completion
set laststatus=2                         "abilita la visualizzazione della statusbar anche con una sola finestra presente
set sidescroll=1                         "abilita lo scroll orizzontale di 1 carattere alla volta una volta raggiunta la fine della finestra visibile

" Opzioni disabilitate
set nowrap                               "disabilita il soft-wrap
set ignorecase                           "disabilita il match case sensitive
set guioptions-=m                        "disabilita i menù
set guioptions-=T                        "disabilita la barra degli strumenti

" Tabulazione
set tabstop=4                            "tab di dimensione 4
set shiftwidth=4                         "indentazioni di dimensione 4
set softtabstop=4                        "???
set expandtab                            "inserisce spazi al posto di tab
set autoindent                           "le nuove righe hanno stessa indentazione delle precedenti

" Filetype
filetype on
filetype indent on

" Mapping
nnoremap ù /

"Stampa
set printoptions=header:0,duplex:long,paper:A4

" Aspetto
if has('gui_running') || has('gui_vimr')
    colorscheme desert

    " Opzioni specifiche per gui Windows
    if has("win32")
        set guifont=Consolas:h12
    elseif has("macunix")
        set guifont=Monaco:h12
    endif
endif
