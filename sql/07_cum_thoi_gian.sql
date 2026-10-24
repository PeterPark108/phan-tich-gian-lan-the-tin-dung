-- Q7. Cửa sổ 10 phút có nhiều giao dịch gian lận nhất (gian lận có xu hướng dồn cụm?)
SELECT CAST(Time/600 AS INT) AS cua_so_10p, MIN(Time) AS tu_giay, COUNT(*) AS so_gd, SUM(Class) AS so_gian_lan
FROM giao_dich GROUP BY cua_so_10p HAVING SUM(Class)>0 ORDER BY so_gian_lan DESC LIMIT 10;
