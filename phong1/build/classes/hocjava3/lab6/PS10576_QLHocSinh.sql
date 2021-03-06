create database PS10576_QLHocSinh
go

use PS10576_QLHocSinh
go

create table TIEUCHUAN
(
	MATIEUCHUAN VARCHAR(10) PRIMARY KEY,
	PHI INT
)
go

create table HOCSINH
(
	MAHOCSINH VARCHAR(10) PRIMARY KEY,
	TENHOCSINH NVARCHAR(50),
	DIACHI NVARCHAR(50),
	TENCHAME NVARCHAR(50),
	DIENTHOAI VARCHAR(10),
	MATIEUCHUAN VARCHAR(10) REFERENCES TIEUCHUAN (MATIEUCHUAN)
)
go

insert into TIEUCHUAN values('TC01', 100)
insert into TIEUCHUAN values('TC02', 150)
insert into TIEUCHUAN values('TC03', 200)
go

insert into HOCSINH values('HS01', N'Ngô Tuấn Đức', N'123 Ai biết Q10 TPHCM', N'Không biết lun', '0334255377', 'TC01')
insert into HOCSINH values('HS02', N'Nguyễn Văn A', N'45 Hàn Hải Nguyên Q11 TPHCM', N'Nguyễn Văn Xoài', '0123456789', 'TC02')
insert into HOCSINH values('HS03', N'Lê Thị B', N'1 Lý Chiến Thắng Q3 TPHCM', N'Lê Nguyễn Bảo', '0987654321', 'TC03')
go

update TIEUCHUAN
set PHI = 150
where MATIEUCHUAN = 'tc02'

update HOCSINH 
set DIACHI = '', 
TENCHAME = '', 
DIENTHOAI = '', 
MATIEUCHUAN = 'tc03' 
where MAHOCSINH = 'hs03'

select HOCSINH.*, PHI
from HOCSINH, TIEUCHUAN
where HOCSINH.MATIEUCHUAN = TIEUCHUAN.MATIEUCHUAN

