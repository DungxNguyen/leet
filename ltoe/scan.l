%{
#include <iostream>
#include <experimental/random>
#include <map>
#include <algorithm>
#include <cctype>

std::string etol_rand(std::vector<std::string> s){
  return s[std::experimental::randint(0, (int) s.size() - 1)];
}
std::string str_toupper(std::string s) {
    std::transform(s.begin(), s.end(), s.begin(), 
                   [](unsigned char c){ return std::toupper(c); }
                  );
    return s;
}

%}

A        "4"|"/-\\"|"/_\\"|"@"|"/\\"
B        "8"|"|:"|"|8"|"18"|"|B"|"|8"|"lo"|"|o"
C        "<"|"{"|"["|"("
D        "|)"|"|}"|"|]"
E        "3"|"€"|"є"|"[-}"
F        "|="|"ph"|"|#"|"|\""
G        "[-"|"[+"|"6"
H        "|-|"|"[-]"|"{-}"|"|=|"|"[=]"|"{=}"
I        "1"|"!"|"9"
J        "_|"|"_/"|"_7"|"_)"|"_]"|"_}"
K        "|<"|"1<"|"l<"|"|{"|"l{"
L        "|_"|"|"|"]["
M        "44"|"|\\/|"|"^^"|"/\\/\\"|"/X\\"|"[]\\/]["|"[]V[]"|"][\\\\//]["|"(V)"|"//."|".\\\\"|"N\\"
N        "|\\|"|"/\\/"|"/V"|"][\\\\]["
O        "0"|"()"|"[]"|"{}"|"<>"
P        "|o"|"|O"|"|>"|"|*"|"|°"|"|D"|"/o"
Q        "O_"|"(,)"
R        "|2"|"12"|".-"|"|^"|"l2"|"Я"
S        "5"|"$"|"§"
T        "7"|"+"|"'|'"|"`|`"|"~|~"|"-|-"
U        "|_|"|"\\_\\"|"/_/"|"\\_/"|"(_)"|"[_]"|"{_}"
V        "\\/"
W        "\\/\\/"|"(/\\)"|"\\^/"|"|/\\|"|"\\X/"|"\\\\'"|"'//"|"VV"
X        "%"|"*"|"><"|"}{"|")("
Y        "`/"|"¥"
Z        "2"|"7_"|">_"
Digit0        "O"|"D"
Digit1        "I"|"L"
Digit2        "Z"|"e"
Digit3        "E"|"❤"
Digit4        "h"|"A"
Digit6        "b"|"G"
Digit7        "T"
Digit9        "g"|"j"
Digit8        "X"
Digit5        "S"

%%
{A}{N}{D}             { std::cout << "AND";}
{I}{M}                { std::cout << "IM";} 
{I}{O}                { std::cout << "IO";} 
{A}             { std::cout << "A";}
{B}             { std::cout << "B";}
{C}             { std::cout << "C";}
{D}             { std::cout << "D";}
{E}             { std::cout << "E";}
{F}             { std::cout << "F";}
{G}             { std::cout << "G";}
{H}             { std::cout << "H";}
{I}             { std::cout << "I";}
{J}             { std::cout << "J";}
{K}             { std::cout << "K";}
{L}             { std::cout << "L";}
{M}             { std::cout << "M";}
{N}             { std::cout << "N";}
{O}             { std::cout << "O";}
{P}             { std::cout << "P";}
{Q}             { std::cout << "Q";}
{R}             { std::cout << "R";}
{S}             { std::cout << "S";}
{T}             { std::cout << "T";}
{U}             { std::cout << "U";}
{V}             { std::cout << "V";}
{W}             { std::cout << "W";}
{X}             { std::cout << "X";}
{Y}             { std::cout << "Y";}
{Z}             { std::cout << "Z";}
{Digit0}             { std::cout << "0";}
{Digit1}             { std::cout << "1";}
{Digit2}             { std::cout << "2";}
{Digit3}             { std::cout << "3";}
{Digit4}             { std::cout << "4";}
{Digit6}             { std::cout << "6";}
{Digit7}             { std::cout << "7";}
{Digit9}             { std::cout << "9";}
{Digit8}             { std::cout << "8";}
{Digit5}             { std::cout << "5";}


"\n"          { std::cout << std::endl; }

%%
int yywrap() { return 1; }

