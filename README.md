# Flex
## Install
`sudo apt install flex`<br>
## Compiling
`flex -o file.c file.lex`<br>
`gcc -o file file.c -lfl`
## exercises
- [sample1](https://github.com/turczak/Flex/blob/main/sample1.lex) - count number of lines and number of characters in text<br>
- [sample2](https://github.com/turczak/Flex/blob/main/sample2.lex) - if "username" found in text then print curently logged user<br>
- [sample3](https://github.com/turczak/Flex/blob/main/sample1.lex) - search for HEX number in text<br>
- [mywc](https://github.com/turczak/Flex/blob/main/mywc.lex) - my implementation of "wc" program from Linux<br>
- [findip4](https://github.com/turczak/Flex/blob/main/findip4.lex) - find IPv4 in text