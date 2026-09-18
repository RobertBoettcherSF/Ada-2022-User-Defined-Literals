pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Literals_Demo; use Literals_Demo;

procedure Tests is
   M1 : constant Metres := 3;
   M2 : constant Metres := 2.5;
   T  : constant Tag := "sensor";
begin
   Assert (abs (To_Float (M1) - 3.0) < 1.0E-5);
   Assert (abs (To_Float (M2) - 2.5) < 1.0E-5);
   Assert (abs (To_Float (M1 + M2) - 5.5) < 1.0E-5);
   Put_Line ("PASS Integer_Literal / Real_Literal for Metres");

   Assert (To_String (T) = "sensor");
   Put_Line ("PASS String_Literal for Tag");

   Put_Line ("All User-Defined Literals topic tests passed.");
end Tests;
