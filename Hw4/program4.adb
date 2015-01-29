------------------
--SE320
--Hw4
--Kyle Mulligan
--program4
------------------



with ada.text_io, ada.integer_text_io, primeAndFactor;

procedure program4 is
   userInput: Integer range -20..50;
   done: boolean :=false;
begin
   
   while  done=false loop
      
      ada.text_io.put(" Enter a prime number between -20 and +50: ");
      ada.integer_text_io.get(userInput);
      done:=true;

   end loop;
end program4;

