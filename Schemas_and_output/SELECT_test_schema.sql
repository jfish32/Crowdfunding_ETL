SELECT campaign.*, category.category AS category
FROM campaign
INNER JOIN category ON campaign.category_id = category.category_id;


select campaign.*,contacts.* as contact
from campaign
inner join contacts on campaign.contact_id = contacts.contact_id


select campaign.*,subcategory.subcategory as subcategory
from campaign
inner join subcategory on campaign.subcategory_id = subcategory.subcategory_id

