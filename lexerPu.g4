lexer grammar lexerPu;

BEGIN: 'begin';
END: 'end';

// Palabras reservadas
CONST: 'const';
VAR: 'var';

TYPE: 'type';

INT: 'int';
FLOAT: 'float';
STRING: 'string';

READ: 'read';
PRINT: 'print';

IF: 'if';
ELSE: 'else';
WHILE: 'while';
FOR: 'for';

//OPERADORES LOGICOS
AND: '&&';
OR: '||';

//FUNCIONES
SQRT: 'sqrt';
COS: 'cos';
SIN: 'sin';
POW: 'pow';

// Operadores y símbolos
PLUS: '+';
MINUS: '-';
MUL: '*';
DIV: '/';
ASSIGN: '=';
SEMI: ';';
COLON: ':';
LPAREN: '(';
RPAREN: ')';

// Identificadores y Constantes
ID: [a-zA-Z_][a-zA-Z0-9_]*;
INT_LIT: [0-9]+;
FLOAT_LIT: [0-9]+'.'[0-9]+;
STRING_LIT: '"' .*? '"';

// Caracteres ignorados
WS: [ \t\r\n]+ -> skip;
