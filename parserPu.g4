parser grammar parserPu;

options { tokenVocab=lexerPu; }

program : BEGIN statement+ END;

statement: varDeclaration
         | constDeclaration
         | typeDeclaration
         | printStatement
         | readStatement
         | ifStatement
         | whileStatement
         | forStatement
         | expr
         ;

varDeclaration: VAR ID ASSIGN expr SEMI ;
constDeclaration: CONST ID ASSIGN expr SEMI;
typeDeclaration: TYPE ID COLON datatype SEMI ;
printStatement: PRINT LPAREN expr RPAREN SEMI ;
readStatement: READ LPAREN ID RPAREN SEMI ;
ifStatement: IF LPAREN expr RPAREN statement (ELSE statement)? ;
whileStatement: WHILE LPAREN expr RPAREN statement ;
forStatement: FOR LPAREN expr SEMI expr SEMI expr RPAREN statement ;

expr: expr (AND | OR) expr
    | expr (PLUS | MINUS | MUL | DIV) expr
    | LPAREN expr RPAREN
    | ID
    | ID EQUALL expr
    | expr ASSIGN expr
    | INT_LIT
    | FLOAT_LIT
    | STRING_LIT
    | ID ASSIGN expr
    | functionCall
    ;

functionCall: (SQRT | COS | SIN | POW) LPAREN expr RPAREN ;

datatype: INT | FLOAT | STRING ;
