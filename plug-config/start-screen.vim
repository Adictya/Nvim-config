let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 't': '~/.tmux.conf' },
            \ { 'y': '/mnt/c/Users/nchou/AppData/Roaming/alacritty/alacritty.yml' },
            \ '/mnt/d/Libraries/Programing',
            \ ]

let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
	  \ ' 	 ______   __     ______     ______     ______        ______   __     __    __     ______    ',
	  \ ' 	/\  == \ /\ \   /\___  \   /\___  \   /\  __ \      /\__  _\ /\ \   /\ "-./  \   /\  ___\   ',
	  \ ' 	\ \  _-/ \ \ \  \/_/  /__  \/_/  /__  \ \  __ \     \/_/\ \/ \ \ \  \ \ \-./\ \  \ \  __\   ',
	  \ ' 	 \ \_\    \ \_\   /\_____\   /\_____\  \ \_\ \_\       \ \_\  \ \_\  \ \_\ \ \_\  \ \_____\ ',
	  \ ' 	  \/_/     \/_/   \/_____/   \/_____/   \/_/\/_/        \/_/   \/_/   \/_/  \/_/   \/_____/ ',]
