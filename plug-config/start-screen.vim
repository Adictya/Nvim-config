let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 'r': '~/.config/ranger/rc.conf' },
            \ { 'w': '/mnt/c/Users/Aditya/AppData/Local/Packages/Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe/LocalState/settings.json' },
            \ { 'p' : '/mnt/d/Libraries/Programing'},
            \ { 'd' : '/mnt/d/Libraries/Programing/competitive/dsadays'},
            \ { 'y': '~/.config/alacritty/alacritty.yml' },
            \ ]

let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 1

let g:startify_custom_header = [
                              \ '         ::::    ::: :::::::::: ::::::::  :::     ::: :::::::::::   :::   ::: ',
                              \ '        :+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:      :+:+: :+:+: ',
                              \ '       :+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ',
                              \ '      +#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+  ',
                              \ '     +#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+   ',
                              \ '    #+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+#    ',
                              \ '   ###    #### ########## ########      ###     ########### ###       ###  ',]
            " \ '                                                                                                  ',]
	  " \ '   Its',
	  " \ ' 	 ______   __     ______     ______     ______        ______   __     __    __     ______    ',
	  " \ ' 	/\  == \ /\ \   /\___  \   /\___  \   /\  __ \      /\__  _\ /\ \   /\ "-./  \   /\  ___\   ',
	  " \ ' 	\ \  _-/ \ \ \  \/_/  /__  \/_/  /__  \ \  __ \     \/_/\ \/ \ \ \  \ \ \-./\ \  \ \  __\   ',
	  " \ ' 	 \ \_\    \ \_\   /\_____\   /\_____\  \ \_\ \_\       \ \_\  \ \_\  \ \_\ \ \_\  \ \_____\ ',
	  " \ ' 	  \/_/     \/_/   \/_____/   \/_____/   \/_/\/_/        \/_/   \/_/   \/_/  \/_/   \/_____/ ',]

