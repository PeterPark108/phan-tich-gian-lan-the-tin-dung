-- Q3. Tỷ lệ gian lận theo giờ (giờ tương đối tính từ giao dịch đầu tiên)
SELECT gio, COUNT(*) AS so_gd, SUM(Class) AS so_gian_lan, ROUND(100.0*SUM(Class)/COUNT(*),3) AS ty_le_pct
FROM giao_dich GROUP BY gio ORDER BY gio;
