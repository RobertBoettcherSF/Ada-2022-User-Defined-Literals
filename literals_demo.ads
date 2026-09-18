--  Ada 2022 topic: user-defined literals via Integer/Real/String_Literal.
pragma Ada_2022;

with Ada.Strings.Unbounded;

package Literals_Demo is

   type Metres is private
     with Integer_Literal => From_Integer_Image,
          Real_Literal    => From_Real_Image;

   function From_Integer_Image (Img : String) return Metres;
   function From_Real_Image (Img : String) return Metres;
   function To_Float (M : Metres) return Float;
   function "+"(L, R : Metres) return Metres;

   type Tag is private
     with String_Literal => From_WW_String;

   function From_WW_String (S : Wide_Wide_String) return Tag;
   function To_String (T : Tag) return String;

private

   type Metres is record
      Value : Float := 0.0;
   end record;

   type Tag is record
      Data : Ada.Strings.Unbounded.Unbounded_String;
   end record;

end Literals_Demo;
