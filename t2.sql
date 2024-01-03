SELECT 
	s.date,
    ROUND(sum(g.gross_price*s.sold_quantity),2) as gross_price_total
FROM fact_sales_monthly s
Join fact_gross_price g
	on s.product_code = s.product_code and 
    g.fiscal_year = get_fiscal_year(s.date)
WHERE customer_code = 90002002
group by s.date
order by s.date asc;