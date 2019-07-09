MODULE HelloWorld

IMPORT Texts, Oberon;

VAR W: Texts.Writer;

PROCEDURE Hi*;
BEGIN Texts.WriteString(W, "Hello World!");
    Texts.WriteLn(W);
    Texts.Append(Oberon.Log, W.buf);
END Hi;

BEGIN Texts.OpenWriter(W);
END HelloWorld.

System.Free HelloWorld ~
ORP.Compile HelloWorld.Mod ~
HelloWorld.Hi ~

