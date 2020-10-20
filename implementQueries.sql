SELECT * FROM developers;

SELECT developers.id FROM developers WHERE developers.id=34;

SELECT roles, website_id FROM website_roles
WHERE website_roles.role <> 'owner' AND website_roles.website_id = 234;


SELECT * FROM website WHERE vists = min(vists);


SELECT name FROM websites WHERE id = 678;


SELECT name FROM websites WHERE page_roles.role = 'reviewer' AND persons.firstName = 'bob' AND widgets.dtype = 'youtube';

SELECT name FROM websites WHERE persons.firstName = 'Alice' and website_roles.role = 'owner';





SELECT * FROM pages WHERE vists = max(vists);

SELECT websites.name FROM websites WHERE role = 'reviewer'; 






