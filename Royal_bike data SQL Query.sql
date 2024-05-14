

select
dteday,season,a.yr,weekday,hr,rider_type,riders,price,COGS,price*riders as revenue,price*riders-COGS*riders as profit
from 
(select * from bike_share_yr_0
union
select * from bike_share_yr_1) a
left join cost_table b 
on a.yr =b.yr