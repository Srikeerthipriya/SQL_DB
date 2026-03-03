create procedure money_transfer (from_acc varchar,to_acc varchar,amount int)
language sql
as $$
      update accounts
	  set balance = balance - amount
	  where account = from_acc;

	  update accounts
	  set balance = balance + amount
	  where account = to_acc
$$

select * from accounts;

call money_transfer ('ABC01','ABC04',300)
