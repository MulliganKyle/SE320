------------------
--SE320
--Hw4
--Kyle Mulligan
--program4
------------------



with ada.text_io, ada.integer_text_io, primeAndFactor, ada.io_exceptions;

procedure program4 is
   Not_Prime: exception;
   userInput: Integer range -20..50;
   done: boolean :=false;
begin
   
   while not done loop

      begin
      ada.text_io.put("Enter a prime number between -20 and +50: ");
      ada.integer_text_io.get(userInput);
      
      if not primeandfactor.prime(userInput) then
	 raise Not_Prime;
      end if;
      
      done:=true;

      exception
	 when Constraint_Error =>
	    ada.text_io.put_line("Your number is out of range, try again.");
	 when ada.io_exceptions.Data_Error =>
	    ada.text_io.skip_line;
	    ada.text_io.put_line("That's not even a number try again.");
	 when Not_Prime =>
	    ada.text_io.put_line("That's not a prime, try again.");
      end;

   end loop;

   ada.text_io.put("You successfully entered ");
   ada.integer_text_io.put(userInput,0);
   ada.text_io.new_line;

end program4;

