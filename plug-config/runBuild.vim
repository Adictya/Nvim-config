let g:runCmd = "c;echo At your service my liege"
let g:runCmdArg = "c;echo At your service my liege"

autocmd Bufenter *.cpp let g:runCmd = "c;g++ " . expand("%:t") . " -std=c++17 &&  ./a.out"
autocmd Bufenter *.cpp let g:runCmdArg = "c;g++ " . expand("%:t") . " -std=c++17 && cat input.txt | ./a.out"


autocmd Bufenter *.java let g:runCmd = "c;javac " . expand("%:t") . " && java " . expand("%:r")
autocmd Bufenter *.java let g:runCmdArg = "c;javac " . expand("%:t") . " && cat input.txt | java " . expand("%:r")

autocmd Bufenter *.vim let g:runCmd = "source ".bufname('%')
