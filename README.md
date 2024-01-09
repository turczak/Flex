# Flex
## Install
`sudo apt install flex`<br>
## Compiling
[libfl.a](https://github.com/turczak/Flex/blob/main/libfl.a) - flex library<br>

### C
`flex -o file.c file.lex`<br>
`gcc -o file file.c -lfl`<br>
### C++
`flex -o file.cpp file.lex`<br>
`g++ -o file file.cpp -lfl`<br><br>
You can use `-L. -lfl` to include library from working directory
## Exercises
- [sample1](https://github.com/turczak/Flex/blob/main/sample1.lex) - count number of lines and number of characters in text<br>
- [sample2](https://github.com/turczak/Flex/blob/main/sample2.lex) - if "username" found in text then print curently logged user<br>
- [sample3](https://github.com/turczak/Flex/blob/main/sample1.lex) - search for HEX number in text<br>
- [mywc](https://github.com/turczak/Flex/blob/main/mywc.lex) - my implementation of "wc" program from Linux<br>
- [findip4](https://github.com/turczak/Flex/blob/main/findip4.lex) - find IPv4 in text
- [average](https://github.com/turczak/Flex/blob/main/average.lex) - calculate student's gpa
- [statistic_v1](https://github.com/turczak/Flex/blob/main/statistic_v1.lex) - find all unique ip's and count how many times they show up in log file
