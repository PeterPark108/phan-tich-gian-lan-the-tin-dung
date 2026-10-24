-- Q5. Giao dịch "thăm dò" số tiền rất nhỏ (≤ 1 và ≤ 2 đơn vị tiền)
SELECT CASE WHEN Amount<=1 THEN '≤1' WHEN Amount<=2 THEN '1-2' ELSE '>2' END AS nhom,
       COUNT(*) AS so_gd, SUM(Class) AS so_gian_lan, ROUND(100.0*SUM(Class)/COUNT(*),3) AS ty_le_pct
FROM giao_dich GROUP BY nhom ORDER BY MIN(Amount);
