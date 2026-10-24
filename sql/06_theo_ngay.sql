-- Q6. So sánh 2 ngày trong dữ liệu
SELECT ngay, COUNT(*) AS so_gd, SUM(Class) AS so_gian_lan, ROUND(100.0*SUM(Class)/COUNT(*),3) AS ty_le_pct,
       ROUND(SUM(Class*Amount),2) AS tien_gian_lan
FROM giao_dich GROUP BY ngay;
