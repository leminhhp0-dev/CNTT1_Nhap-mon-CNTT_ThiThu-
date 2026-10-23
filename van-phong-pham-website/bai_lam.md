# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:Lê Hồng Minh** 
- **Lớp:CNTT1** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Recurse
mv .\nhap_hang.txt .\docs\
mv .\logo_van_phong_pham.PNG .\media\
cp .\media\logo_van_phong_pham.PNG .\backup\
rm .\temp_131.tmp
cd .\logs\
gc .\shop.log
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/23/2026   8:50 AM                backup
d-----        10/23/2026   8:41 AM                data
d-----        10/23/2026   8:48 AM                docs
d-----        10/23/2026   8:41 AM                logs
d-----        10/23/2026   8:49 AM                media
------        10/19/2026   9:41 AM             78 .env
-a----        10/19/2026  10:00 AM           2253 bai_lam.md


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.PNG


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6105 don_ban_thang_10.xlsx


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM             51 nhap_hang.txt


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           1053 shop.log


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\van-phong-pham-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.PNG

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
gc .\logs\shop.log | sls "ERROR"
ni .\logs\daily_report.txt
gc .\logs\shop.log | sls "ERROR" > .\logs\daily_report.txt
gc .\logs\daily_report.txt -Head 2

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1
Dang loc log...
Hoan thanh!

```

### Nội dung file logs/auto_report.txt

```text
# Script: auto_report.ps1
# Tac gia: Lê Hồng Minh
# Ngay tao: 23/10/2026
 
Write-Host "Dang loc log..."
 
"=== BAO CAO LOI ===" > logs/auto_report.txt
Get-Content logs/shop.log | Select-String "ERROR" >> logs/auto_report.txt
 
Write-Host "Hoan thanh!"

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
gc .\logs\shop.log | sls "ERROR" | Measure-Object -Line

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Lines Words Characters Property
----- ----- ---------- --------
    6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
ni .\logs\tong_hop.txt
echo "=== TONG HOP LOG ===" > .\logs\tong_hop.txt
gc .\logs\shop.log | sls "WARNING" >> .\logs\tong_hop.txt
gc .\logs\shop.log | sls "ERROR" | Measure-Object -Line >> .\logs\tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text
2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham



Lines Words Characters Property
----- ----- ---------- --------
    6

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
