Select * 
From dbo.car_owner c
Join dbo.offence_case o
On c.id = o.owner_id
Where o.status = 'Paid'


-- Bonus
Select c.id, c.plate, c.plate_country
From dbo.car_owner c
Join dbo.offence_case o
On c.id = o.owner_id
Where o.status = 'Paid'
Group by c.id, c.plate, c.plate_country
Having Count(*) >= 2