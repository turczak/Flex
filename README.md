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
<br>*example of input:*
<br>`Jan Kowalski 2, 3.5, -dob, bdb`
<br>`Piotr Nowak dop, dst, +dop, dob, -dob, 3, 2.5`
- [statistic_v1](https://github.com/turczak/Flex/blob/main/statistic_v1.lex) - find all unique ip's and count how many times they show up in log file
<br>*[ServAccessLog](https://github.com/turczak/Flex/blob/main/ServAccessLog.txt) used for tests*<br>
- [statistic_v2](https://github.com/turczak/Flex/blob/main/statistic_v2.lex) - counts visists on website for each day
<br>*[ServAccessLog](https://github.com/turczak/Flex/blob/main/ServAccessLog.txt) used for tests*<br>
- [investigator](https://github.com/turczak/Flex/blob/main/investigator.lex) - find all urls and emails in file and save them to separated files
  <br>*you can use curl or wget to deliver website as file*
  <br>`./ivestigator <(curl https://github.com)`
<br>
# Yacc
## Install & usage
`sudo apt install yacc`<br>
`lex *.l && yacc -d *.y && gcc -o calc *.c -lfl`<br>
