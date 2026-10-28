select product_name, category, price,
case when in_stock = 1 then 'In Stock'
else 'Out of Stock'
end as availability
from products
where price >= 0.000
order by product_name
