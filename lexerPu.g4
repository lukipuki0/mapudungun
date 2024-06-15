lexer grammar lexerPu;

BEGIN: 'kine';
END: 'epu';
PRINT: 'kume';
VAR: 'ruf';
CONST: 'uy';
IF: 'wew';
ELSE: 'elu';
WHILE: 'kiñel';
FOR: 'kellu';

// Operadores y símbolos
PLUS: 'wi';
MINUS: 'inan';
MUL: 'ina';
DIV: 'kulan';
ASSIGN: 'ilel';
EQUALL: 'kuñe';
SEMI: 'kula';
COLON: 'we';
LPAREN: 'rangi';
RPAREN: 'rangipa';


// Tipos de datos
INT: 'raki';
FLOAT: 'pukem';
STRING: 'dun';

// Identificadores y Constantes
ID: [a-zA-Z_][a-zA-Z0-9_]*;
INT_LIT: [0-9]+;
FLOAT_LIT: [0-9]+'.'[0-9]+;
STRING_LIT: '"' .*? '"';

// Caracteres ignorados
WS: [ \t\r\n]+ -> skip;

// Funciones matemáticas
SQRT: 'muten';
COS: 'epey';
SIN: 'pey';
POW: 'kunen';
