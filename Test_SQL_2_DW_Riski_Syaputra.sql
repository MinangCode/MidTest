WITH item_bought AS (
    SELECT item, COUNT(*) AS count
    FROM item_bought
    GROUP BY item
), min_max_counts AS (
    SELECT MIN(count) AS min_count, MAX(count) AS max_count
    FROM item_bought
)
SELECT item
FROM item_bought, min_max_counts
WHERE count != min_count AND count != max_count;
