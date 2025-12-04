SELECT * FROM customer;

# Q1. Total revenue by gender and age group
SELECT gender, age_group, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender, age_group
ORDER BY revenue DESC;

#Q2. Customers who spent more than the overall average AND used discounts
SELECT customer_id, purchase_amount, discount_applied
FROM customer
WHERE purchase_amount > (SELECT AVG(purchase_amount) FROM customer)
AND discount_applied = 'Yes'
ORDER BY purchase_amount DESC;

#Q3. Top 5 products by average review rating
SELECT item_purchased, ROUND(AVG(review_rating),2) AS avg_review
FROM customer
GROUP BY item_purchased
ORDER BY avg_review DESC
LIMIT 5;

#Q4. Average purchase amount by shipping type and discount
SELECT shipping_type, discount_applied, AVG(purchase_amount) as avg_amount
FROM customer
GROUP BY shipping_type, discount_applied
ORDER BY shipping_type;

#Q5. Revenue and average spend by subscription status
SELECT subscription_status, count(*) as total_customer, 
sum(purchase_amount) as revenue, Round(avg(purchase_amount), 2) as avg_amount
FROM customer
GROUP BY subscription_status;

#Q6. Top 5 products with highest discount application rate
SELECT item_purchased,
ROUND(AVG(discount_applied='Yes') * 100, 2) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

#Q7. Customer segmentation by previous purchases
SELECT CASE 
WHEN previous_purchases = 1 THEN 'New'
WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
ELSE 'Loyal'
END AS customer_segment,
COUNT(*) AS total_customers,
ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer
GROUP BY customer_segment;

#Q8. Repeat customers (>5 purchases) and subscription correlation
SELECT subscription_status,
COUNT(*) AS repeat_customers,
ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;

#Q9. Revenue and purchase frequency analysis
SELECT frequency_of_purchases,
COUNT(*) AS total_customers,
ROUND(SUM(purchase_amount),2) AS total_revenue,
ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customer
GROUP BY frequency_of_purchases
ORDER BY total_revenue DESC;

#Q10. Most profitable location
SELECT location, SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY location
ORDER BY total_revenue DESC
LIMIT 5;

#Q11. Correlation between age group and subscription
SELECT age_group, subscription_status, COUNT(*) AS total_customers
FROM customer
GROUP BY age_group, subscription_status;
