SELECT numbers.number
FROM (
    SELECT @row := @row + 1 AS number
    FROM (SELECT @row := 0) var,
         (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
          UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8
          UNION ALL SELECT 9) numbers
) AS numbers
WHERE numbers.number % 2 = 0 AND numbers.number <= 10;
