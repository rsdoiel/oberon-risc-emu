MODULE MathThing;

IMPORT Texts, Oberon;

VAR W: Texts.Writer;

PROCEDURE OnePlusOne*;
VAR x: INTEGER;
BEGIN x := 1;
      x := x + 1;
      Texts.WriteString(W, " x = ");
      Texts.WriteInt(W, x, 6);
      Texts.WriteLn(W);
      Texts.Append(Oberon.Log, W.buf);
END OnePlusOne;

BEGIN Texts.OpenWriter(W);
END MathThing.

System.Free MathThing ~
ORP.Compile MathThing.Mod ~
MathThing.OnePlusOne ~


