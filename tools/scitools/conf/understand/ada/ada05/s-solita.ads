------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--             S Y S T E M . S O F T _ L I N K S . T A S K I N G            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--             Copyright (C) 2004, Free Software Foundation, Inc.           --
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

--  This package contains the tasking versions soft links that are common
--  to the full and the restricted run times. The rest of the required soft
--  links are set by System.Tasking.Initialization and System.Tasking.Stages
--  (full run time) or System.Tasking.Restricted.Stages (restricted run time).

package System.Soft_Links.Tasking is

   procedure Init_Tasking_Soft_Links;
   --  Set the tasking soft links that are common to the full and the
   --  restricted run times.

end System.Soft_Links.Tasking;
