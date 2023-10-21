%{

#include <iostream>

#include <fstream>

using namespace std;

ofstream outputfile;

int chr =0;

%}

%%


"this"    { outputfile<<"Word : "<<"this"  <<"     characters:"<<string("This").length()<<endl; }      //that count of chars

"is"      { outputfile<<"Word : "<<"is" <<"         characters:"<<string("is").length()<<endl; }

"a"       { outputfile<<"Word : "<<"a" <<"           characters:"<<string("a").length()<<endl; }

"sample"  {outputfile<<"Word : "<<"sample" <<"  characters:"<<string("sample").length()<<endl; }

"text"    { outputfile<<"Word : "<<"text" <<"     characters:"<<string("text").length()<<endl; }

"file"    { outputfile<<"Word : "<<"file" <<"     characters:"<<string("file").length()<<endl; }
%%

int yywrap(){ return 1;}

int main(int, char**) {

yyin = fopen( "in.txt", "r" );

yyout = fopen( "outError.txt", "w" );

outputfile.open ("out.txt");




while (yylex()>0){}

fclose(yyin);

fclose(yyout);

}