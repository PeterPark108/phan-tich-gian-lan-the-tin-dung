# Hướng dẫn mở dashboard Power BI

1. Chạy notebook `phan_tich_gian_lan_the.ipynb` (hoặc dùng sẵn các CSV trong `powerbi/`).
2. Mở `powerbi/dashboard/PeterPark_Gian_Lan_The.pbip` bằng Power BI Desktop.
3. Nếu đường dẫn thư mục khác `C:\Users\PETTER\Desktop\python\du_an_gian_lan_the_tin_dung`, vào **Transform data → Data source settings → Change Source** và trỏ tới thư mục `powerbi/` của bạn.
4. Bấm **Refresh** (có thể cần 2 lần ở lần mở đầu), rồi **Ctrl+S** để lưu dữ liệu.

| Bảng | Nội dung |
|---|---|
| `fact_giao_dich` | 284.807 giao dịch: thời gian (giây), ngày, giờ tương đối, số tiền, nhãn, khoảng tiền, V14/V10/V12 |
| `dim_gio`, `dim_khoang_tien` | Giờ (0–23, buổi) và 10 khoảng số tiền |
| `fact_du_doan` | Điểm RF và LR cho 85.443 giao dịch kiểm tra, mức rủi ro và cờ cảnh báo (ngưỡng 0,22) |
| `tom_tat_nguong`, `tom_tat_mo_hinh`, `tom_tat_dac_trung`, `tom_tat_gains` | Bảng tóm tắt ngưỡng/chi phí, so sánh mô hình, KS theo đặc trưng, số cảnh báo cần xem |

Theme: `powerbi/peterpark_theme.json`. 4 trang: Tổng quan · Thời gian & số tiền · Mô hình · Insight.
