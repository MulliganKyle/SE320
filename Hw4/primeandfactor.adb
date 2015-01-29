------------------------
--SE320
--Hw2
--KyleMulligan
--primeAndFactor package body
-----------------------

with ada.text_io, ada.integer_text_io;
package body primeAndFactor is


   function prime ( number: integer) return boolean is 
      modulus: integer :=1 ;--initialized to 1 to ensure loop entry
      count: integer :=2;
   begin
      while modulus/=0 and count<number  loop
	 modulus:= number mod count;
	 count:=count+1;
      end loop;

      if modulus=0 then
	 return False;
      else
	 return True;
      end if;
   end prime;


   procedure factor ( number: integer) is
      modulus, result: integer;
      divisor: integer :=2;
      first: integer := 1;--used for printing the first number of the factorization
   begin
      result:= number;
      ada.text_io.put("the factorization of ");
      ada.integer_text_io.put(number,0);
      ada.text_io.put(" is: ");
      while divisor<number and result/=1  loop

	 modulus:= result mod divisor;

	 if modulus=0 then

	    if first=1 then
	       result:=result/divisor;
	       ada.integer_text_io.put(divisor,0);
	       first:=0;

	    else
	       result:=result/divisor;
	       ada.text_io.put("*");
	       ada.integer_text_io.put(divisor,0);
	    end if;


	 else
            divisor:= divisor+1;
	 end if;
      end loop;
      ada.text_io.new_line;
   end factor;

end primeAndFactor;
