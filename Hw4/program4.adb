------------------
--SE320
--Hw4
--Kyle Mulligan
--program4
------------------



with ada.text_io, ada.integer_text_io, primeAndFactor;

procedure program4 is
   Not_Prime: exception;
   userInput: Integer range -20..50;
   done: boolean :=false;
begin
   
   while not done loop

      begin
      ada.text_io.put(" Enter a prime number between -20 and +50: ");
      ada.integer_text_io.get(userInput);
      done:=true;





      end;

   end loop;
end program4;

