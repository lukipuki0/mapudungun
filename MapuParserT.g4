parser grammar MapuParserT;

options { tokenVocab=MapuLexerT; }

program         : statement+ ;

statement       : variableDeclaration
                | constantDeclaration
                | assignment
                | printStatement
                | inputStatement
                | ifStatement
                | whileStatement
                | forStatement
                ;

variableDeclaration : VAR ID EQ dataType EQ expression PUYCO ;
constantDeclaration : CONSTANT ID EQ dataType EQ expression PUYCO ;
assignment          : ID EQ expression PUYCO ;

printStatement  : PRINT LEFTP expression RIGHTP PUYCO ;
inputStatement  : INPUT LEFTP ID RIGHTP PUYCO ;

ifStatement     : IF LEFTP expression RIGHTP THEN block (ELSE block)? ;
whileStatement  : WHILE LEFTP expression RIGHTP DO block ;
forStatement    : FOR LEFTP assignment expression PUYCO expression RIGHTP DO block TO expression PUYCO;

block           : LEFTP statement* RIGHTP ;

expression      : expression (SUM | RES) expression
                | expression (MUL | DIV) expression
                | LEFTP expression RIGHTP
                | functionCall
                | ID
                | NUMBER
                ;

functionCall    : (SQRT | POWER | SIN | COS) LEFTP expression RIGHTP ;

dataType        : INT | FLOAT | STRING ; 
