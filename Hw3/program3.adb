------------------
--SE320
--Hw2
--Kyle Mulligan
--program3
------------------



with ada.text_io, ada.integer_text_io, primeAndFactor;

procedure program3 is
   theNumber: Integer :=2;

begin
   
   while theNumber <=99 loop
      if primeAndFactor.prime(theNumber) then
	 ada.integer_text_io.put(theNumber,0);
	 Ada.text_io.put(" is prime.");
	 ada.text_io.new_line;
      else
	 primeAndFactor.factor(theNumber);
      end if;
      theNumber:= theNumber +1;
   end loop;
end program3;

