/*
Task: List all bands with Glam rock as their main style, ranked by their longevity
*/

-- List bands with Glam rock as main style, ranked by longevity
SELECT band_name, 
    (YEAR('2022-01-01') - formed) - (CASE WHEN split IS NULL THEN YEAR('2022-01-01') ELSE split END) AS lifespan
    FROM metal_bands
    WHERE main_style = 'Glam rock'
    ORDER BY lifespan DESC;
