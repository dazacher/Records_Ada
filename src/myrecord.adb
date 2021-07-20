with Ada.Text_IO;

procedure Myrecord is
   package TIO renames Ada.Text_IO;
   type Suit is (Pass, Clubs, Diamonds, Hearts, Spades, No_Trumps);
   subtype Trick_Range is Integer range 0 .. 13;

   type Hand is record
      --  Point_Count  : Integer range 0 .. 40  := 05;
      --  Quick_Tricks : Float range 0.0 .. 8.0 := 0.0;
      Point_Count  : Integer range 0 .. 40  := 5;
      Quick_Tricks : Float range 0.0 .. 8.0 := 1.0;
      Bid_Suit     : Suit                   := Pass;
      --  Bid_Tricks   : Trick_Range            := 0;
      Bid_Tricks   : Trick_Range            ;
   end record;

   --  North : Hand;

   North : Hand := (14, 1.5, Clubs, others => 0);
   West  : Hand := (14, 1.5, Bid_Tricks => 0, Bid_Suit => Diamonds);
   --  South : Hand := (Quick_Tricks => 1.5, Bid_Suit => Hearts, Others => 0);
   South : Hand := (others => <>);
   East  : Hand := (Quick_Tricks => 1.5, Bid_Suit => Spades, Bid_Tricks | Point_Count => 0);
begin
   --  North.Point_Count := 14;
   --  North.Quick_Tricks := 1.5;
   --  North.Bid_Suit := Hearts;
   --  North.Bid_Tricks := 2;
   --
   --  TIO.Put_Line(Integer'Image(North.Point_Count));

   TIO.Put_Line (Suit'Image (North.Bid_Suit));
   TIO.Put_Line (Suit'Image (West.Bid_Suit));
   TIO.Put_Line (Suit'Image (South.Bid_Suit));
   TIO.Put_Line (Suit'Image (East.Bid_Suit));

   --Put out South Fields from Hand
   TIO.Put_Line("South Hand Record only");
   TIO.Put_Line (Integer'Image (South.Point_Count));
   TIO.Put_Line (Float'Image (South.Quick_Tricks));
   TIO.Put_Line (Suit'Image (South.Bid_Suit));
   TIO.Put_Line (Integer'Image (South.Bid_Tricks));
end Myrecord;
