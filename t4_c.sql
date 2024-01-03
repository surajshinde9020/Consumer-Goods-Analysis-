CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	in_market varchar(50),
    in_fiscal_year int,
    in_top_n int
)
BEGIN
SELECT
c.customer,
round(sum(net_sales)/1000000,2) as net_sales_mln
FROM gdb0041.net_sales n
join dim_customer c
on c.customer_code = n.customer_code
where fiscal_year = in_fiscal_year and n.market = in_market
group by c.customer
order by net_sales_mln desc
limit in_top_n;
END