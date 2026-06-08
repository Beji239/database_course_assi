SELECT tbl_species.species_name
FROM tbl_species
INNER JOIN tbl_nutrition ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id
WHERE tbl_nutrition.nutrition_id BETWEEN 2202 AND 2206;
