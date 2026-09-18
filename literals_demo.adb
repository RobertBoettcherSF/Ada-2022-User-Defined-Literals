pragma Ada_2022;


package body Literals_Demo is

   function From_Integer_Image (Img : String) return Metres is
   begin
      return (Value => Float'Value (Img));
   end From_Integer_Image;

   function From_Real_Image (Img : String) return Metres is
   begin
      return (Value => Float'Value (Img));
   end From_Real_Image;

   function To_Float (M : Metres) return Float is
   begin
      return M.Value;
   end To_Float;

   function "+"(L, R : Metres) return Metres is
   begin
      return (Value => L.Value + R.Value);
   end "+";

   function From_WW_String (S : Wide_Wide_String) return Tag is
      Result : String (S'Range);
   begin
      for I in S'Range loop
         Result (I) := Character'Val (Wide_Wide_Character'Pos (S (I)));
      end loop;
      return (Data => Ada.Strings.Unbounded.To_Unbounded_String (Result));
   end From_WW_String;

   function To_String (T : Tag) return String is
   begin
      return Ada.Strings.Unbounded.To_String (T.Data);
   end To_String;

end Literals_Demo;
