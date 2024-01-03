CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_accuracy`(
	int_fiscal_year INT
)
BEGIN
		with forecast_err_table as (
				SELECT
				s.customer_code,
				sum(s.sold_quantity) as total_sold_qty,
				sum(s.forecast_quantity) as total_forecast_qty,
				sum(forecast_quantity - sold_quantity) as net_error,
				sum(forecast_quantity - sold_quantity)*100/sum(forecast_quantity) as net_error_pct,
				sum(abs(forecast_quantity - sold_quantity)) as abs_net_error,
				sum(abs(forecast_quantity - sold_quantity))*100/sum(forecast_quantity) as abs_net_error_pct
				FROM gdb0041.fact_act_est s
				where s.fiscal_year = int_fiscal_year
				group by customer_code
				)
		 select 
		 e.*,
		 c.customer,
		 c.market,
		 if(abs_net_error_pct>100, 0, 100-abs_net_error_pct) as forecast_accuracy
		 from forecast_err_table e
		 join dim_customer c
		 order by forecast_accuracy desc;
END