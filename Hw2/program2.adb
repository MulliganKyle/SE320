--------------------------
--program2
--Kyle Mulligan
--SE320
--1/14/15
--------------------------



with Ada.Text_IO, Ada.Integer_Text_IO;

procedure program2 is

input : Integer :=1;
--input is set to 1 to enusure entrance into the loop.

count, numberOfInputs, sum : Integer :=0;

begin

while (input/=0) loop
   Ada.Text_IO.Put ("Enter an Integer (0 ends this program): ");
   Ada.Integer_TExt_IO.Get (input);

   sum:=sum+input;
   count:=count+1;
end loop;

numberOfInputs:= count-1;

Ada.Text_IO.Put ("You entered ");
Ada.Integer_Text_IO.Put(numberOfInputs,0);
Ada.Text_IO.Put (" numbers; their sum is ");
Ada.Integer_Text_IO.Put(sum,0);


end program2;
