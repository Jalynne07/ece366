module my_full_adder(); //name
  reg cin, a, b, cout, added_value; //my variables
  reg [1:0] holder;
initial begin
  //so i used a procedural block instead of assign which would update immediately but would require wire variables to update continuosly
  #10 //this is added because time needs to be forced to move in this environment, and if this wasn't here then things would all execute at the same time
  a = 1; //so i am directly setting the values of the input to test my output
  b = 1; //since this is a 1 bit adder the values can only go up to 3 max
  cin = 1;
  
  #10
  holder = a + b + cin;
  
  if(holder >= 3)
    begin
      cout = 1;
      added_value = 1;
    end
  else if (holder == 2)
    begin
      added_value = 0;
      cout = 1;
    end
  else
    begin
      added_value = 1;
      cout = 0;
    end
  
  
  $display ("this is the added value %b, this is the carryout: %b", added_value, cout);
end
endmodule
