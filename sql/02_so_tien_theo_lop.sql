-- Q2. So sánh số tiền giao dịch gian lận và bình thường
SELECT Class, COUNT(*) AS so_gd, ROUND(AVG(Amount),2) AS tb, ROUND(MIN(Amount),2) AS nho_nhat,
       ROUND(MAX(Amount),2) AS lon_nhat, SUM(Amount=0) AS so_gd_0_dong
FROM giao_dich GROUP BY Class;
