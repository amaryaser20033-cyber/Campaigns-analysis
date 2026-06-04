select * from Campaigns
select * from Events
select * from Transactions;

with eventss as (
    select
	count(distinct campaign_id) as total_campaigns,
    count(distinct event_id) as total_events,
    count(distinct session_id) as sessions,
    count(distinct customer_id) as users
    from events 
	where campaign_id <> 0
    ),
transactionss as (
    select
    count(distinct customer_id) as buyers,
    count(distinct transaction_id) as total_orders,
    round(sum(gross_revenue),2) as campaigns_revenue
    from transactions
	where campaign_id <> 0
    )
select
    total_campaigns,
    total_events,
    sessions,
    users,
    buyers,
    total_orders,
    campaigns_revenue,
	cast(buyers * 100.0 / nullif(users, 0) as decimal(10,2)) as conversion_rate,
    round(campaigns_revenue / nullif(total_orders, 0), 2) as avg_order_value
from eventss e
cross join transactionss t;

select 
    channel,
    count(distinct campaign_id) as total_campaigns
from Campaigns
group by channel;

--Campaigns Performance
with eventss as (
    select
        campaign_id,
        count(*) as total_events,
        count(distinct customer_id) as users
    from events
    where campaign_id <> 0
    group by campaign_id),
transactionss as (
    select
        campaign_id,
        count(distinct customer_id) as buyers,
        count(distinct transaction_id) as total_orders,
        sum(gross_revenue) as total_revenue
    from transactions
    group by campaign_id)
select
    e.campaign_id,
    total_events,
    users,
    buyers,
    cast(t.buyers * 100.0 / nullif(e.users,0) as decimal(10,2)) as conversion_rate,
    total_orders,
    total_revenue
from eventss e
left join transactionss t
    on e.campaign_id = t.campaign_id
order by e.campaign_id;

--Buyers and revenue by time
select
    year(timestamp) as year,
    datepart(quarter, timestamp) as quarter,
    count(distinct customer_id) as customers,
    round(sum(gross_revenue), 2) as revenue
from transactions
where campaign_id <> 0
group by year(timestamp),datepart(quarter, timestamp)
order by year,quarter;
--Top campaigns by reach
select top 5
    campaign_id as campaign_id,
    count(distinct customer_id) as total_users
from events
where campaign_id <> 0
group by campaign_id
order by total_users desc;

--Top campaigns by events
select top 5
    campaign_id as campaign_id,
    count(distinct event_id) as total_events
from events
where campaign_id <> 0
group by campaign_id
order by total_events desc;

--Top campaigns by buyers
select top 5
    campaign_id,
    count(distinct customer_id) as total_visitors,
    count(distinct case when event_type = 'purchase' then customer_id end) as buyers,
	count(case when event_type = 'purchase' then 1 end) as total_orders,
    round(cast(count(distinct case when event_type = 'purchase' then customer_id end) as float)* 100.0
         /nullif(count(distinct customer_id), 0),2)as conversion_rate
from events
where campaign_id <> 0
group by campaign_id
order by buyers desc;

--Top campaigns by revenue
select top 5
campaign_id,
round(sum(gross_revenue),2) as total_revenue
from Transactions
where campaign_id <> 0
group by campaign_id
order by total_revenue desc

--Objective performance
select
    objective,
    count(distinct c.campaign_id) as count_campaigns,
    count(distinct t.customer_id) as buyers,
    round(sum(gross_revenue), 2) as revenue
from campaigns c
left join transactions t
    on c.campaign_id = t.campaign_id
group by objective
order by revenue desc;

--Customer conversion funnel
select
    event_type,
    count(distinct customer_id) as customers,
    count(*) as total_events
from events
where campaign_id<>0
group by event_type
order by total_events desc;

--channels performance
select 
    c.channel,
    count(distinct c.campaign_id) as num_campaigns,
    count(distinct e.customer_id) as users,
    count(distinct t.customer_id) as buyers,
    cast (count(distinct t.customer_id) * 100.0 /
         count(distinct e.customer_id)as decimal(10,2))
         as conversion_rate,
    count(distinct t.transaction_id) as orders,
    cast(sum(t.gross_revenue) as decimal(10,2)) as total_revenue
from events e
join campaigns c
    on e.campaign_id = c.campaign_id
left join transactions t
    on  e.customer_id = t.customer_id
    and e.timestamp   = t.timestamp
where e.campaign_id <> 0
group by c.channel
order by total_revenue desc;

