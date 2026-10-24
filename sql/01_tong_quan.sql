-- Q1. Tổng quan: số giao dịch, số gian lận, tỷ lệ, tổng tiền
SELECT COUNT(*) AS so_giao_dich, SUM(Class) AS so_gian_lan,
       ROUND(100.0*SUM(Class)/COUNT(*),3) AS ty_le_gian_lan_pct,
       ROUND(SUM(Amount),2) AS tong_tien, ROUND(SUM(CASE WHEN Class=1 THEN Amount END),2) AS tien_gian_lan
FROM giao_dich;
