-- Q8. Bao nhiêu % tiền gian lận nằm ở 10% giao dịch gian lận lớn nhất?
WITH f AS (SELECT Amount, NTILE(10) OVER (ORDER BY Amount DESC) AS decile FROM giao_dich WHERE Class=1)
SELECT decile, COUNT(*) AS so_gd, ROUND(SUM(Amount),2) AS tien,
       ROUND(100.0*SUM(Amount)/(SELECT SUM(Amount) FROM f),1) AS pct_tien
FROM f GROUP BY decile ORDER BY decile;
