UPDATE phones
SET phone=333-444-5555 WHERE person_id = 34;


UPDATE widgets
SET widgets.order=3 WHERE id=345;
UPDATE widgets
SET widgets.order=1 WHERE id=456;
UPDATE widgets
SET widgets.order=2 WHERE id=567;




UPDATE roles
SET roles.developer_id=23 WHERE roles.role='writer';
UPDATE roles
SET roles.developer_id=34 WHERE roles.role='reviewer';


UPDATE pages, websites
SET pages.title=CONCAT('CNET', pages.title) WHERE websites.name = 'CNET';
