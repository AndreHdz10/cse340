-- Assignment 1 Query 1 Cretaing a new account
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES (
        'Tony',
        'Stark',
        'tony@starkent.com',
        'Iam1romM@n'
    );
-- Assignment 1 Query 2 Updating the account type
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;
-- Assignment 1 Query 3 Deleting the account
DELETE FROM public.account
WHERE account_id = 1;
-- Assignment 1 Query 4 Updating the Hummer description
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'the small interiors',
        'a huge interior'
    );
-- Assignment 1 Query 5 Selecting Vehicles that belong to the sport category
SELECT inventory.inv_make,
    inventory.inv_model,
    classification.classification_name
FROM public.inventory
    JOIN public.classification ON classification.classification_id = inventory.classification_id
WHERE classification_name = 'Sport';
-- Assignment 1 Query 6 Updating the file path for the image and thumbnail column
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images', '/images/vehicles'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images', '/images/vehicles');