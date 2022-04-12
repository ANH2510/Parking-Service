Select * 
From car_owner c
Join offence_case o
On c.id = o.owner_id
Where o.status = "Paid"

Select c.id, c.plate, c.plate_country, count(*)
From car_owner c
Join offence_case o
On c.id = o.owner_id
Where o.status = "Paid"
Group by c.id, c.plate, c.plate_country
Having Count(*) > 2