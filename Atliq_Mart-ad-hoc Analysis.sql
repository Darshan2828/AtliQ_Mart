create database	 AtliQ_Mart;
create table fact_events(
event_id varchar(100),
store_id varchar(100),
campaign_id varchar(100),
product_code varchar(100),
base_price int,
promo_type varchar(100),
quantity_sold_before_promo int,
quantity_sold_after_promo int
);

create table dim_stores(
store_id varchar(100),
City varchar(100)
);
select*from dim_stores;

create table dim_products(
product_code varchar(100),
product_name varchar(250),
category varchar(250)
);

create table dim_campaigns(
campaign_id varchar(100),
campaign_name varchar(100),
start_date date,
end_date date
);



select distinct p.product_name,f.base_price
from fact_events as f left join dim_products as p
on p.product_code=f.product_code
where base_price>500 and promo_type="BOGOF";


select city,count(store_id)
from dim_stores
group by City
order by Count(store_id) desc;



select campaign_name,
sum(base_price*quantity_sold_before_promo) as Revenue_before_promotions,
sum(base_price*quantity_sold_after_promo) as Revenue_after_promotions
from dim_campaigns as c inner join fact_events as f
on c.campaign_id=f.campaign_id
group by campaign_name
order by campaign_name;


select p.category,
Round((((Sum(base_price*quantity_sold_after_promo)-sum(base_price*quantity_sold_before_promo))/sum(base_price*quantity_sold_before_promo))*100),2) as ISU_Percentage,
Rank() over(order by (((Sum(base_price*quantity_sold_after_promo)-sum(base_price*quantity_sold_before_promo))/sum(base_price*quantity_sold_before_promo))*100) desc) as Rank_order
from dim_products as p 
inner join fact_events as f 
on p.product_code=f.product_code
where f.campaign_id="CAMP_DIW_01"
group by p.category;




select p.product_name, p.category,
Round((((sum(base_price*quantity_sold_after_promo)-sum(base_price*quantity_sold_before_promo))/sum(base_price*quantity_sold_before_promo))*100),2) as IR_Percentage
from dim_products as p
inner join fact_events as f
on p.product_code=f.product_code
group by p.product_name,p.category
order by IR_Percentage desc
limit 5;


