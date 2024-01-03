-- Month
-- Product Name
-- Variants
-- Sold Quantity
-- Gross Price per Item
-- Gross Price Total


select 
	s.date, s.product_code, p.product, p.variant, s.sold_quantity, g.gross_price, 
	g.gross_price*s.sold_quantity as gross_price_total
from fact_sales_monthly s
Join dim_product p 
	on s.product_code = p.product_code
Join fact_gross_price g 
	on p.product_code = g.product_code and g.fiscal_year = get_fiscal_year(s.date)
where 	customer_code = 90002002 and
		get_fiscal_year(date) = 2021
order by date
limit 10000;