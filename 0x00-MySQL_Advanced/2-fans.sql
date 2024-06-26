/*
Task: Rank country origins of bands based on the number of (non-unique) fans
*/

-- Rank country origins of bands based on number of fans
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
