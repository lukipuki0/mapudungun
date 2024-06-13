lexer grammar MapuLexerT;

// Palabras clave
BEGIN: 'begin';
END: 'end';
LEFTP: '(';
RIGHTP: ')';

// Espacios en blanco
WS : [ \t\r\n]+ -> skip;

// Tipos de datos
INT : 'int';
FLOAT : 'float';
STRING : 'string';

// Variables y constantes
VAR : 'var';
CONSTANT : 'const';

// Identificadores y números
ID : [a-zA-Z][a-zA-Z_0-9]*;
NUMBER : [0-9]+ ('.' [0-9]+)?;

// Operaciones de entrada y salida
PRINT : 'print';
INPUT : 'input';

// Estructuras de control
IF : 'if';
ELSE: 'else';
THEN : 'then';
WHILE : 'while';
DO : 'do';
FOR : 'for';
TO : 'to';

// Operadores lógicos
AND : 'and';
OR : 'or';

// Operadores aritméticos
SUM : '+';
RES : '-';
DIV : '/';
MUL : '*';
EQ : '=';

// Delimitadores
PUYCO : ';';

// Funciones matemáticas
SQRT : 'sqrt';
POWER : 'power';
SIN : 'sin';
COS : 'cos';

