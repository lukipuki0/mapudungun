lexer grammar MapuLexerT;

// Palabras reservadas
KIÑE: 'begin';
EPU: 'end';
KÜME: 'print';
RÜF: 'var';
ÜY: 'const';
WEW: 'if';
ELU: 'else';
KIÑEL: 'while';
KELLU: 'for';

// Operadores y símbolos
WI: '+';
INAN: '-';
INA: '*';
KÜLAN: '/';
ILEL: '=';
KÜLA: ';';
WE: ':';
RANGI: '(';
RANGIPA: ')';

// Tipos de datos
RAKI: 'int';
PUKEM: 'float';
DUN: 'string';

// Identificadores y Constantes
ID: [a-zA-Z_][a-zA-Z0-9_]*;
INT_LIT: [0-9]+;
FLOAT_LIT: [0-9]+'.'[0-9]+;
STRING_LIT: '"' .*? '"';

// Caracteres ignorados
WS: [ \t\r\n]+ -> skip;

// Funciones matemáticas
MÜTEN: 'sqrt';
EPEY: 'cos';
PEY: 'sin';


