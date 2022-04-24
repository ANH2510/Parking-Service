-- write a SQL query to select all paid offences of international (non German) car owners.

Select * 
From dbo.car_owner c
Join dbo.offence_case o
On c.id = o.owner_id
Where o.status = 'Paid'


-- How would the query look like if you would only like to select paid cases of offenders who have caused at least two paid offences?
Select c.id, c.plate, c.plate_country
From dbo.car_owner c
Join dbo.offence_case o
On c.id = o.owner_id
Where o.status = 'Paid'
Group by c.id, c.plate, c.plate_country
Having Count(*) >= 2