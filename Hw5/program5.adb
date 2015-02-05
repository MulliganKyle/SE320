with  ada.text_io;

procedure program5 is

type day_type is (SUN, MON, TUES, WED, THURS, FRI, SAT);
userInput : string := "y";
chosenDay : day_type;

package Day_io is new ada.text_io.enumeration_io(day_type);


begin


   ada.text_io.put ("The days of the week are: ");
   
   for day in SUN .. SAT loop--print the days of the week
      day_io.put(day);
      ada.text_io.put(" ");
   end loop;
   ada.text_io.new_line;

   while userInput= "y" loop--tell what day is next given input day
      ada.text_io.put("Name a day: ");
      day_io.get(chosenDay);
      ada.text_io.put("   The next day is ");
      day_io.put(day_type'succ(chosenDay));
      ada.text_io.new_line;
      ada.text_io.new_line;
      ada.text_io.put("Do it again? [y for yes, n for no]: ");
      ada.text_io.get(userInput);
   end loop;

   ada.text_io.put_line("Bye.");
end program5;
