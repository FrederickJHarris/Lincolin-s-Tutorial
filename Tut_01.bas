' Tut_01.bas
'
' Shows Three Ways Of Outputing To Console "Hello, World!".  Also, A Few Comments on 'Compiler Directives'
'
' Any Statements prefixed With The '#' symbol is a 'Compiler Directive' i.e, It doesen't gernerate any code
' but just tells the compiler how to handle something, including actual code generation.   In The first
' compiler readable statement left The "#Compile" directive is for tellingg the compiler that is is to be a
' Exe' project - not an 'Obj' or 'Dll' project.

' The 2nd Compiler Directive - '#Dim All', takes a little more explanation.  It tells the compiler to 'throw'
' an error on any 'undimensioned' variables it may encounter.  The program below has no variales except for
' entities known as 'string literals', which I'll cover later.  Note that the basic programming languages use
' either the ' symbol to denote a comment, or the more verbose string REM (means remark). This is known as 
' commenting or remarking code.  The compiler ignores reading or doing any processing of code lines beginning
' with either the ' symbol, or REM. 
'
#Compile Exe                       ' Create Exe File
#Dim     All                       ' Throw Error When Undeclared Variable Is Encountered.

Function PBMain() As Long          ' This is a Function.  Big Important Topic.  We'll move onto functions shortly.  Like C/C++ all code must be put in functions.
  Print "Hello, World!"            ' Print "Hello, World!" To Console Screen.  The term in quotes "Hello, World!", is a srting literal.
  Console.Print "Hello, World!"    ' Fully Qualified 'Object Oriented Programming' technique where the 'Console' is an 'object', and
  Con.Print "Hello, World!"        ' Print is the method being called on the Console.  Don't worry about that for now.  More to come
  Waitkey$                         ' on it later.  Note that WaitKey$ is an internal PowerBASIC 'Buult In' function whose only purpose
                                   ' here is to keep the concole open so you can see the three 'writes' of 'Hello, World' string literal.
  PBMain=0                         ' In terms of 'functions, I'll get to them directly, as I said.  If you want to see how Waitkey$ works
End Function                       ' remove it from the program and rerun.  It will be obvious.
