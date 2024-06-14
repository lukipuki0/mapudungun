parser grammar parserPu;

options { tokenVocab=MapuLexerT; }

program: KIÑE statement+ EPU ;

statement: varDeclaration
         | constDeclaration
         | typeDeclaration
         | printStatement
         | readStatement
         | ifStatement
         | whileStatement
         | forStatement
         | expr KÜLA
         ;

varDeclaration: RÜF ID ILEL expr KÜLA ;
constDeclaration: ÜY ID ILEL expr KÜLA ;
typeDeclaration: DATATYPE ID WE type KÜLA ;
printStatement: KÜME RANGI expr RANGIPA KÜLA ;
readStatement: REPEAPAD RANGI ID RANGIPA KÜLA ;
ifStatement: WEW RANGI expr RANGIPA statement (ELU statement)? ;
whileStatement: KIÑEL RANGI expr RANGIPA statement ;
forStatement: KELLU RANGI expr KÜLA expr KÜLA expr RANGIPA statement ;

expr: expr (AND | OR) expr
    | expr (WI | INAN | INA | KÜLAN) expr
    | RANGI expr RANGIPA
    | ID
    | INT_LIT
    | FLOAT_LIT
    | STRING_LIT
    | functionCall
    ;

functionCall: (MÜTEN | EPEY | PEY) RANGI expr RANGIPA ;

type: RAKI | PUKEM | DUN ;
