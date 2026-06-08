SELECT 
    s.species_name AS "Species Name: ", 
    n.nutrition_type AS "Nutrition Type: "
FROM tbl_species s
INNER JOIN tbl_nutrition n ON s.species_nutrition = n.nutrition_id;
