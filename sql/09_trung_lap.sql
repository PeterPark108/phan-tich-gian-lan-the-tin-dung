-- Q9. Giao dịch trùng lặp hoàn toàn (cùng Time, Amount, V1..V28, Class)
SELECT COUNT(*) - COUNT(DISTINCT key) AS so_dong_trung FROM (SELECT Time||'|'||Amount||'|'||V1||'|'||V2||'|'||V3||'|'||V14||'|'||Class AS key FROM giao_dich);
