-- Q10. Giờ có số tiền gian lận cao nhất
SELECT gio, SUM(Class) AS so_gian_lan, ROUND(SUM(Class*Amount),2) AS tien_gian_lan
FROM giao_dich GROUP BY gio ORDER BY tien_gian_lan DESC LIMIT 5;
