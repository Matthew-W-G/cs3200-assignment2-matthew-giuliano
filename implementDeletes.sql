DELETE FROM addresses WHERE person_id=12  AND addresses.primary=1;

DELETE FROM widgets WHERE widgets.order=3;

DELETE FROM pages WHERE pages.website_id = 345 AND updated=max(updated);

DELETE FROM websites WHERE websites.name='CNET';