-- Q4. Tỷ lệ gian lận theo khoảng số tiền
SELECT khoang_tien, MIN(Amount) AS tu, COUNT(*) AS so_gd, SUM(Class) AS so_gian_lan,
       ROUND(100.0*SUM(Class)/COUNT(*),3) AS ty_le_pct, ROUND(SUM(Class*Amount),2) AS tien_gian_lan
FROM giao_dich GROUP BY khoang_tien ORDER BY MIN(Amount);
