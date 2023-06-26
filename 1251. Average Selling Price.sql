select p.product_id ,round((sum(p.price*u.units)/2)/(sum(u.units)/2),2) as average_price 
from prices as p
inner join UnitsSold as u on p.product_id=u.product_id
where u.purchase_date between p.start_date and p.end_date
group by  p.product_id 
