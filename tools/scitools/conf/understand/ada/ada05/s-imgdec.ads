------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . I M G _ D E C                        --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2006, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
--
--
--
--
--
--
--
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Image for decimal fixed types where the size of the corresponding integer
--  type does not exceed Integer'Size (also used for Text_IO.Decimal_IO output)

package System.Img_Dec is
   pragma Preelaborate;

   function Image_Decimal
     (V     : Integer;
      Scale : Integer) return String;
   --  Compute 'Image of V, the integer value (in units of delta) of a decimal
   --  type whose Scale is as given and return the result. THe image is given
   --  by the rules in RM 3.5(34) for fixed-point type image functions.

   procedure Set_Image_Decimal
     (V     : Integer;
      S     : out String;
      P     : in out Natural;
      Scale : Integer;
      Fore  : Natural;
      Aft   : Natural;
      Exp   : Natural);
   --  Sets the image of V, where V is the integer value (in units of delta)
   --  of a decimal type with the given Scale, starting at S (P + 1), updating
   --  P to point to the last character stored, the caller promises that the
   --  buffer is large enough and no check is made for this. Constraint_Error
   --  will not necessarily be raised if this requirement is violated, since
   --  it is perfectly valid to compile this unit with checks off. The Fore,
   --  Aft and Exp values can be set to any valid values for the case of use
   --  by Text_IO.Decimal_IO.

   procedure Set_Decimal_Digits
     (Digs  : in out String;
      NDigs : Natural;
      S     : out String;
      P     : in out Natural;
      Scale : Integer;
      Fore  : Natural;
      Aft   : Natural;
      Exp   : Natural);
   --  This procedure has the same semantics as Set_Image_Decimal, except that
   --  the value in Digs (1 .. NDigs) is given as a string of decimal digits
   --  preceded by either a minus sign or a space (i.e. the integer image of
   --  the value in units of delta). The call may destroy the value in Digs,
   --  which is why Digs is in-out (this happens if rounding is required).
   --  Set_Decimal_Digits is shared by all the decimal image routines.

end System.Img_Dec;
