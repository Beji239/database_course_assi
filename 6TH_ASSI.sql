SELECT 
    sp.specialist_fname, 
    sp.specialist_lname, 
    sp.specialist_contact
FROM tbl_species s
INNER JOIN tbl_care c ON s.species_care = c.care_id
INNER JOIN tbl_specialist sp ON c.care_specialist = sp.specialist_id
WHERE s.species_name = 'penguin';
