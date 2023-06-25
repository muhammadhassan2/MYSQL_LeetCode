 -- using implicit join

select Bame , sum(amount) as Balance from users,Transactions
where users.account=Transactions.account 
group by Transactions.account
having sum(amount)>10000
