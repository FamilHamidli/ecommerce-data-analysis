Return Rate by Product Category

SELECT product_category,
count(*) as Total_Orders, 
sum(is_returned) as Total_Retunrs,
round(sum(is_returned) * 100.0 / count(*),2 ) as Return_Rate
from ecommerce_sales
GROUP by product_category

Average Customer Rating by Discount Percent

select discount_percent, AVG(customer_rating)
from ecommerce_sales
GROUP by discount_percent

Most Used Payment Methods

select payment_method, count(payment_method) as Payment_Count
from ecommerce_sales
GROUP by payment_method