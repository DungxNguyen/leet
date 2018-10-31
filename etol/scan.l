%{
#include <iostream>
#include <experimental/random>
#include <map>
#include <algorithm>
#include <cctype>
#include <string>

std::string etol_rand(std::vector<std::string> s){
  return s[std::experimental::randint(0, (int) s.size() - 1)];
}

std::string str_toupper(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(), 
                   [](unsigned char c){ return std::toupper(c); }
                  );
    return s;
}

std::string str_substr(std::string s, int index, int length) {
  return s.substr(index, length);
}
 
std::map<std::string, std::vector<std::string>> leet_map =
{
{"A", {"4", "/-\\", "/_\\", "@", "/\\"}},
{"B", {"|:", "|8", "18", "|B", "|8", "lo", "|o"}},
{"C", {"<", "{", "[", "("}},
{"D", {"|)", "|}", "|]"}},
{"E", {"3", "€", "є",  "[-}"}},
{"F", {"|=", "ph", "|#", "|\""}},
{"G", {"[-", "[+", "6"}},
{"H", {"|-|", "[-]", "{-}", "|=|", "[=]", "{=}"}},
{"I", {"1", "!", "9"}},
{"J", {"_|", "_/", "_7", "_)", "_]", "_}"}},
{"K", {"|<", "1<", "l<", "|{", "l{"}},
{"L", {"|_", "|", "]["}},
{"M", {"44", "|\\/|", "^^", "/\\/\\", "/X\\", "[]\\/][", "[]V[]", "][\\\\//][", "(V)", "//.", ".\\\\", "N\\"}},
{"N", {"|\\|", "/\\/", "/V"}},
{"O", {"0", "()", "[]", "{}", "<>"}},
{"P", {"|O", "|>", "|*", "|°", "|D", "/o"}},
{"Q", {"O_", "(,)"}},
{"R", {"|2", "12", ".-", "|^", "l2", "Я"}},
{"S", {"5", "$", "§"}},
{"T", {"7", "+", "7", "'|'", "`|`", "~|~", "-|-"}},
{"U", {"|_|", "\\_\\", "/_/", "\\_/", "(_)", "[_]", "{_}"}},
{"V", {"\\/"}},
{"W", {"\\/\\/", "(/\\)", "\\^/", "|/\\|", "\\X/", "\\\\'", "'//", "VV"}},
{"X", {"%", "*", "><", "}{", ")(",}},
{"Y", {"`/", "¥"}},
{"Z", {"2", "7_", ">_"}},
{"0", {"O", "D"}}, 
{"1", {"I", "L"}},
{"2", {"Z", "e"}},
{"3", {"E", "❤"}},
{"4", {"h", "A"}},
{"6", {"b", "G"}},
{"7", {"T"}},
{"9", {"g", "j"}},
{"8", {"X"}},
{"5", {"S"}}
};

%}
letter      [a-zA-Z0-9]

%%
[Aa][AaUuNnMmPp]               { std::cout << "@" <<etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}


[Ll][Ll]               {std::cout << "|_][";}
[Ll][Aa]               {std::cout << "|_" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}
[Ll][Uu]               {std::cout << "|_" << "(_)";}
[Ll][Aa][MmNnUu]               {std::cout << "|_@" << etol_rand(leet_map[str_toupper(str_substr(yytext, 2, 1))]);}
[Ll][Ff]               {std::cout << "][" << "|#";}
[Ll][BbCcDdEeTtOoPpKkMmNnWwRr]               {std::cout << "][" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}
[Ff][Ll]               { std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "][";}
[Gg][Ll]               { std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "|";}
[GgCc][Ll][Uu]               { std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "|_(_)";}
[GgCc][Ll][Oo]               { std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "|_<>";}


[LlFfVv][Ii]            {std::cout<< etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "9" ;}
[Ii][Aa][MmNn]           {std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "@" <<
                                    etol_rand(leet_map[str_toupper(str_substr(yytext, 2, 1))]);}
[Ii][Cc][Tt]           {std::cout << "9" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]) << "7";}
[Ii][Cc][Ll]           {std::cout << "9<][";}
[Ii][AaBbCcTtZzMmXxUuQq]            {std::cout << "9" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}


[Ff]{2}[Uu]   { std::cout << "|\"|#" << etol_rand(leet_map[str_toupper(str_substr(yytext, 2, 1))]);}
[Ff][Uu]   { std::cout << "|#" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}
[Ff][FfBbDdHhKkMmNnPpWwRr]   { std::cout << "|\"" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}

[Cc][Tt]               { std::cout << etol_rand(leet_map[str_toupper(str_substr(yytext, 0, 1))]) << "~|~";}
[Cc][Ll]               { std::cout << "<][";}
[Cc][Xx]               { std::cout << "<%";}

[Nn][WwVvUu]               { std::cout << "/V" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}
[Aa][Nn][WwVvUu]               { std::cout << "@/V" << etol_rand(leet_map[str_toupper(str_substr(yytext, 2, 1))]);}

[Gg][Mm]               { std::cout << "6" << etol_rand(leet_map[str_toupper(str_substr(yytext, 1, 1))]);}
{letter}         { std::cout << etol_rand(leet_map[str_toupper(yytext)]);}
"\n"             { std::cout << std::endl; }

%%
int yywrap() { return 1; }

