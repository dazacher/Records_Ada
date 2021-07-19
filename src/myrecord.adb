with Ada.Text_IO;

procedure Myrecord is
   package TIO renames Ada.Text_IO;
   type Suit is (Pass, Clubs, Diamonds, Hearts, Spades, No_Trumps);
   subtype Trick_Range is Integer range 0 .. 13;

   type Hand is record
      Point_Count  : Integer range 0 .. 40  := 05;
      Quick_Tricks : Float range 0.0 .. 8.0 := 0.0;
      Bid_Suit     : Suit                   := Pass;
      Bid_Tricks   : Trick_Range            := 0;
   end record;

   North : Hand;
begin
   North.Point_Count := 14;
   North.Quick_Tricks := 1.5;
   North.Bid_Suit := Hearts;
   North.Bid_Tricks := 2;

   TIO.Put_Line(Integer'Image(North.Point_Count));
end Myrecord;
