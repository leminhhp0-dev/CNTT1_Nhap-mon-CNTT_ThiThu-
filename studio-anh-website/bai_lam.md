# BÀI LÀM – HACKATHON 01

- **Mã đề:** 15
- **Họ tên:Lê Hồng Minh** 
- **Lớp:CNTT 1** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Recurse
mv .\bang_gia_goi.txt .\docs\
mv .\logo_studio_anh.PNG .\media\
cp .\media\logo_studio_anh.PNG .\backup\
rm .\temp_238.tmp
cd .\logs\
gc .\studio.log
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   7:49 AM                backup
d-----        10/28/2026   7:43 AM                data
d-----        10/28/2026   7:49 AM                docs
d-----        10/28/2026   7:43 AM                logs
d-----        10/28/2026   7:49 AM                media
------        10/27/2026   1:32 AM             71 .env
-a----        10/27/2026   1:32 AM           2225 bai_lam.md


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           7231 logo_studio_anh.PNG


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6099 lich_chup_thang_5.xlsx


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             59 bang_gia_goi.txt


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1088 studio.log


    Directory: C:\Users\LeMinhHP\Downloads\starter-kit\starter-kit\studio-anh-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           7231 logo_studio_anh.PNG

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
gc .\logs\studio.log | sls "ERROR"
ni .\logs\daily_report.txt
gc .\logs\studio.log | sls "ERROR" > .\logs\daily_report.txt
gc .\logs\daily_report.txt -Head 2
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text

2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai

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
ni auto_report.ps1
.\auto_report.ps1
```

### Kết quả hiển thị

```text
Dang loc log...
Hoan thanh

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
gc .\logs\studio.log | sls "ERROR" | Measure-Object -Line

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Lines Words Characters Property
----- ----- ---------- --------
    7


```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
ni .\logs\tong_hop.txt
echo "===TONG HOP LOG===" > .\logs\tong_hop.txt
gc .\logs\studio.log | sls "WARNING" >> .\logs\tong_hop.txt
gc .\logs\studio.log | sls "ERROR" | Measure-Object -Line >> .\logs\tong_hop.txt
gc .\logs\tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text
2026-05-28 07:26:30 [WARNING] Thoi gian tai trang cham
2026-05-28 07:35:30 [WARNING] Lich chup cuoi tuan sap kin
2026-05-28 07:53:30 [WARNING] Thoi gian tai trang cham

Lines Words Characters Property
----- ----- ---------- --------
    7

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/lich_chup_thang_5.xlsx`, không cần ghi vào đây.
