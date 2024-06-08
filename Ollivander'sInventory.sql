SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w
JOIN wands_property wp
ON w.code = wp.code
JOIN (
    SELECT wp1.age, MIN(w1.coins_needed) AS min_coins_needed, w1.power
    FROM wands w1
    JOIN wands_property wp1
    ON w1.code = wp1.code
    WHERE wp1.is_evil = 0
    GROUP BY wp1.age, w1.power
) mc
ON w.power = mc.power AND wp.age = mc.age AND w.coins_needed = mc.min_coins_needed
WHERE wp.is_evil = 0
ORDER BY w.power DESC, wp.age DESC;