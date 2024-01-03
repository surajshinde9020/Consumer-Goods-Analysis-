CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_per_division_by_qty_sold`(
	in_fiscal_year int,
    in_top_n int
)
BEGIN
			with cte1 as (
					select
						p.division as Division,
						p.product as Products,
						sum(s.sold_quantity) as Total_qty
					from fact_sales_monthly s
					join dim_product p on s.product_code = p.product_code
					where fiscal_year = in_fiscal_year
					group by p.product),
				cte2 as (select *,
						dense_rank() over(partition by Division order by Total_qty desc) as dnk
						from cte1)
			select * from cte2
			where dnk <= in_top_n;
END