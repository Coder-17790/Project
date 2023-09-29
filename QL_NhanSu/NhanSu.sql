

drop database NhanSu
go

--------------------------------------------------- Tao bang -------------------------------------------------
create database NhanSu
go

use NhanSu
go

--Tạo bảng bậc lương
CREATE TABLE BacLuong
(
  MaBL INT NOT NULL,
  TenBL NVARCHAR(50) NOT NULL,
  HeSBL FLOAT NOT NULL,
  PRIMARY KEY (MaBL)
);

--Tạo bảng trình độ
CREATE TABLE TrinhDo
(
  MaTD INT NOT NULL,
  TenTD NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaTD)
);

--Tạo bảng ngoại ngữ
CREATE TABLE NgoaiNgu
(
  MaNN INT NOT NULL,
  TenNN NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaNN)
);

--Tạo bảng chức vụ
CREATE TABLE ChucVu
(
  MaCV INT NOT NULL,
  TenCv NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaCV)
);

--Tạo bảng bảo hiểm
CREATE TABLE BaoHiem
(
  MaBH INT NOT NULL,
  TenBH NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaBH)
);

--Tạo bảng phòng bang
CREATE TABLE PhongBan
(
  MaPB INT NOT NULL,
  TenPB NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaPB)
);
 
--Tạo bảng chế độ
CREATE TABLE CheDo
(
  MaCD INT NOT NULL,
  TenCD NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaCD)
);

--Tạo bảng nhân viên
CREATE TABLE NhanVien
(
  MaNV INT NOT NULL,
  TenNV NVARCHAR(50) NOT NULL,
  NgaySinh DATE NOT NULL,
  DiaChi NVARCHAR(100) NOT NULL,
  GioiTinh NVARCHAR(50) NOT NULL,
  MaBL INT NOT NULL,
  MaTD INT NOT NULL,
  MaPB INT NOT NULL,
  PRIMARY KEY (MaNV),
  FOREIGN KEY (MaBL) REFERENCES BacLuong(MaBL),
  FOREIGN KEY (MaTD) REFERENCES TrinhDo(MaTD),
  FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
);

--Tạo bảng bản công 
CREATE TABLE BanCong
(
  NgayCong INT NOT NULL,
  MaNV INT NOT NULL,
  PRIMARY KEY (NgayCong, MaNV),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

--Tạo bảng nhân viên - ngoại ngữ
CREATE TABLE NhanVien_NgoaiNgu
(
  NgayCap DATE NOT NULL,
  MaNV INT NOT NULL,
  MaNN INT NOT NULL,
  PRIMARY KEY (MaNV, MaNN),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  FOREIGN KEY (MaNN) REFERENCES NgoaiNgu(MaNN)
);

--Tạo bảng nhân viên - chức vụ
CREATE TABLE NhanVien_ChuVu
(
  NgayBD DATE NOT NULL,
  NgayKT DATE NOT NULL,
  MaCV INT NOT NULL,
  MaNV INT NOT NULL,
  PRIMARY KEY (MaCV, MaNV),
  FOREIGN KEY (MaCV) REFERENCES ChucVu(MaCV),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

--Tạo bảng nhân viên - chế độ
CREATE TABLE NhanVien_CheDo
(
  NgayBD DATE NOT NULL,
  NgayKT DATE NOT NULL,
  MaNV INT NOT NULL,
  MaCD INT NOT NULL,
  PRIMARY KEY (MaNV, MaCD),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  FOREIGN KEY (MaCD) REFERENCES CheDo(MaCD)
);

--Tạo bảng nhân viên - bảo hiểm
CREATE TABLE NhanVien_BaoHiem
(
  NgayBD DATE NOT NULL,
  NgayKT DATE NOT NULL,
  GhiChu NVARCHAR(100) NOT NULL,
  NoiCap NVARCHAR(100) NOT NULL,
  MaBH INT NOT NULL,
  MaNV INT NOT NULL,
  PRIMARY KEY (MaBH, MaNV),
  FOREIGN KEY (MaBH) REFERENCES BaoHiem(MaBH),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

--Tạo bảng Users
CREATE TABLE Users
(
	UserName VARCHAR(100) NOT NULL,
	HoTen NVARCHAR(100) NOT NULL,
	Pass_Word VARCHAR(100) NOT NULL,
	Quyen NVARCHAR(100) NOT NULL,
	PRIMARY KEY (UserName)
)

Go

--- Thêm cột Gmail vào bảng Nhân Viên
alter table NhanVien
add Gmail varchar(225);
go

update NhanVien
set Gmail = 'chuvana@gmail.com'
where MaNV = 001
go

update NhanVien
set Gmail = 'thienan@gmail.com'
where MaNV = 002
go

update NhanVien
set Gmail = 'lamviec@gmail.com'
where MaNV = 003
go

update NhanVien
set Gmail = '211535@gmail.com'
where MaNV = 004
go

update NhanVien
set Gmail = '215664@gmail.com'
where MaNV = 005
go

update NhanVien
set Gmail = 'thienbinh@gmail.com'
where MaNV = 006
go

update NhanVien
set Gmail = 'maket@gmail.com'
where MaNV = 007
go

update NhanVien
set Gmail = 'cugiai@gmail.com'
where MaNV = 008
go

update NhanVien
set Gmail = 'sutu@gmail.com'
where MaNV = 009
go

update NhanVien
set Gmail = 'thienthach@gmail.com'
where MaNV = 010
go

update NhanVien
set Gmail = 'h2o@gmail.com'
where MaNV = 011
go

update NhanVien
set Gmail = 'fe2o3@gmail.com'
where MaNV = 012
go

update NhanVien
set Gmail = 'dilamthoi@gmail.com'
where MaNV = 013
go

update NhanVien
set Gmail = 'hocbaidi@gmail.com'
where MaNV = 014
go

update NhanVien
set Gmail = 'gmailne@gmail.com'
where MaNV = 015
go

update NhanVien
set Gmail = 'hihi@gmail.com'
where MaNV = 016
go

update NhanVien
set Gmail = 'hihaha@gmail.com'
where MaNV = 017
go

update NhanVien
set Gmail = 'gmailkhongtrung@gmail.com'
where MaNV = 018
go

update NhanVien
set Gmail = 'thu6ngay13@gmail.com'
where MaNV = 019
go

update NhanVien
set Gmail = 'matter@gmail.com'
where MaNV = 020
go

update NhanVien
set Gmail = 'matcha@gmail.com'
where MaNV = 021
go

update NhanVien
set Gmail = 'socola@gmail.com'
where MaNV = 022
go

update NhanVien
set Gmail = 'anhhatde@gmail.com'
where MaNV = 023
go

update NhanVien
set Gmail = 'bedau@gmail.com'
where MaNV = 024
go

update NhanVien
set Gmail = 'begging@gmail.com'
where MaNV = 025
go

update NhanVien
set Gmail = 'aino@gmail.com'
where MaNV = 026
go

update NhanVien
set Gmail = 'flashmod1@gmail.com'
where MaNV = 027
go

update NhanVien
set Gmail = 'flashmod2@gmail.com'
where MaNV = 028
go

update NhanVien
set Gmail = 'choreo@gmail.com'
where MaNV = 029
go

update NhanVien
set Gmail = 'kpop@gmail.com'
where MaNV = 030
go

update NhanVien
set Gmail = 'jk@gmail.com'
where MaNV = 031
go

update NhanVien
set Gmail = 'vpop@gmail.com'
where MaNV = 032
go


update NhanVien
set Gmail = 'cpop@gmail.com'
where MaNV = 033
go


update NhanVien
set Gmail = 'jpop@gmail.com'
where MaNV = 034
go


update NhanVien
set Gmail = 'v@gmail.com'
where MaNV = 035
go


update NhanVien
set Gmail = 'rm@gmail.com'
where MaNV = 036
go


update NhanVien
set Gmail = 'suga@gmail.com'
where MaNV = 037
go


update NhanVien
set Gmail = 'lisa@gmail.com'
where MaNV = 038
go


update NhanVien
set Gmail = 'jenni@gmail.com'
where MaNV = 039
go


update NhanVien
set Gmail = 'nmixx@gmail.com'
where MaNV = 040
go


update NhanVien
set Gmail = 'blackpink@gmail.com'
where MaNV = 041
go

update NhanVien
set Gmail = 'o.o@gmail.com'
where MaNV = 042
go

update NhanVien
set Gmail = 'dive@gmail.com'
where MaNV = 043
go

update NhanVien
set Gmail = 'dice@gmail.com'
where MaNV = 044
go

update NhanVien
set Gmail = 'senorita@gmail.com'
where MaNV = 045
go

update NhanVien
set Gmail = 'despasito@gmail.com'
where MaNV = 046
go

update NhanVien
set Gmail = 'psy@gmail.com'
where MaNV = 047
go

update NhanVien
set Gmail = 'chainsaw@gmail.com'
where MaNV = 048
go

update NhanVien
set Gmail = 'dark@gmail.com'
where MaNV = 049
go

update NhanVien
set Gmail = 'angel@gmail.com'
where MaNV = 050
go




--------------------------------------------------- Cac rang buoc kiem tra -------------------------------------------------
--- ràng buộc check GioiTinh nhân viên
ALTER TABLE NhanVien
ADD CONSTRAINT CK_GIOITINH CHECK(GioiTinh = N'Nam' or GioiTinh = N'Nữ') 

--- ràng buộc check NgayBD và NgayKT của NhanVien_BaoHiem
ALTER TABLE NhanVien_BaoHiem
ADD CONSTRAINT CK_Ngay CHECK(NgayBD < NgayKT)

--- ràng buộc check NgayCong > 0
ALTER TABLE BanCong
ADD CONSTRAINT CK_Cong CHECK (NgayCong > 0)

--- ràng buộc mặc định là Nam cho GioiTinh
alter table NhanVien
add constraint df_gioiTinh
default N'Nam' for GioiTinh
go

--- ràng buộc mặc định cho hệ số bậc lương là 1.0
alter table BacLuong
add constraint df_bacLuong
default 1.0 for HeSBL
go


--- ràng buộc kiểm tra quyền user
ALTER TABLE USERS
ADD CONSTRAINT CK_QUYEN CHECK (QUYEN = 'User' OR QUYEN = 'Admin')
GO


--- ràng buộc mặc định cho Quyền là user
ALTER TABLE USERS
ADD CONSTRAINT DF_QUYEN DEFAULT 'User' FOR QUYEN



--- ràng buộc Gmail là duy nhất
ALTER TABLE NhanVien
ADD CONSTRAINT UC_Gmail UNIQUE (Gmail)
go



--- Trigger kiểm tra số tuổi của nhân viên mới phải >= 18 tuổi
create trigger KT_TUOI on NhanVien
for insert
as
if (select YEAR(GETDATE()) - (select YEAR(NgaySinh) from inserted)) >= 18		
	COMMIT TRAN
else
	begin
		print N'Tuổi nhân viên không hợp lệ, phải >= 18 tuổi'
		ROLLBACK TRAN
	end

--- kiểm tra
set dateformat dmy
insert into NhanVien (MaNV, TenNV, NgaySinh, DiaChi, GioiTinh, MaBL, MaTD, MaPB) values
	('051', N'Lê Duy Khang','12-06-2009' , N'123 Lê Lư, Tân Phú, TP.HCM' , N'Nam' ,'05' ,'01' ,'123')



--- Trigger kiểm tra Thời gian bắt đầu và kết thúc của Nhân viên chế độ
create trigger KT_THOIGIANLV on NhanVien_CheDo
for insert 
as
--if (select NgayBD from inserted) < (select NgayKT from inserted)
if (select (datediff(dd, getdate(), NgayBD)) from inserted) < (select (datediff(dd, getdate(), NgayKT)) from inserted)
	COMMIT TRAN
else
	begin
		print N'Ngày bắt đầu phải trước ngày kết thúc'
		ROLLBACK TRAN
	end


--- kiểm tra
set dateformat dmy
insert into NhanVien (MaNV, TenNV, NgaySinh, DiaChi, GioiTinh, MaBL, MaTD, MaPB) values
	('052', N'Nguyễn Văn Út','11-06-2002' , N'151 Hoàng Văn Thụ, Tân Phú, TP.HCM' , N'Nam' ,'03','01', '123')

set dateformat dmy
insert into NhanVien_CheDo (NgayBD, NgayKT, MaCD, MaNV) values
	('9-12-2020' ,'10-12-2019' ,'04' ,'51')

--UPDATE NhanVien_CheDo
--SET NgayBD='9-12-2020'
--WHERE MaNV=1;


--UPDATE NhanVien_CheDo
--SET NgayKT='10-12-2019'
--WHERE MaNV=1;

select * from NhanVien_CheDo




--------------------------------------------------- Du lieu -------------------------------------------------
--Nhập data cho bảng User
Insert Into Users(UserName,HoTen,Pass_Word, Quyen)
Values ('TuanHoang' , N'Nguyễn Hoàng Tuấn' ,'2001204113' , 'Admin')
Insert Into Users(UserName,HoTen,Pass_Word, Quyen)
Values ('VuKhac' , N'Nguyễn Khắc Vũ' ,'2' , 'User')
Insert Into Users(UserName,HoTen,Pass_Word, Quyen)
Values ('CongDanh' , N'Đoàn Công Danh' ,'3' , 'User')
go

--Nhập data cho bảng bậc lương
Insert Into BacLuong(MaBL,TenBL,HeSBL)
Values ('01' , N'Nhân viên' ,'6.20')
Insert Into BacLuong(MaBL,TenBL,HeSBL)
Values ('02' , N'Trưởng phòng' ,'6.56')
Insert Into BacLuong(MaBL,TenBL,HeSBL)
Values ('03' , N'Phó giám đốc' ,'6.92')
Insert Into BacLuong(MaBL,TenBL,HeSBL)
Values ('04' , N'Giám đốc' ,'7.28')
Insert Into BacLuong(MaBL,TenBL,HeSBL)
Values ('05' , N'Tổng giám đốc' ,'7.64')
go

--Nhập data cho bảng bảo hiểm
Insert Into BaoHiem (MaBH,TenBH)
Values ('01' , N'Bảo hiểm nhân thọ')
Insert Into BaoHiem (MaBH,TenBH)
Values ('02' , N'Bảo hiểm y tế')
Insert Into BaoHiem (MaBH,TenBH)
Values ('03' , N'Bảo hiểm xã hội')
Insert Into BaoHiem (MaBH,TenBH)
Values ('04' , N'Bảo hiểm sức khỏe')
Insert Into BaoHiem (MaBH,TenBH)
Values ('05' , N'Bảo hiểm tiền gửi')
go

--Nhập data cho bảng chế độ
Insert Into CheDo(MaCD,TenCD)
Values ('01' , N'Y tế sức khỏe')
Insert Into CheDo(MaCD,TenCD)
Values ('02' , N'Gia đình')
Insert Into CheDo(MaCD,TenCD)
Values ('03' , N'Tài sản')
Insert Into CheDo(MaCD,TenCD)
Values ('04' , N'Môi trường làm việc')
Insert Into CheDo(MaCD,TenCD)
Values ('05' , N'Ngày nghỉ')
go

--Nhập data cho bảng chức vụ
Insert Into ChucVu(MaCV,TenCV)
Values ('01' , N'Giám đốc')
Insert Into ChucVu(MaCV,TenCV)
Values ('02' , N'Phó giám đốc')
Insert Into ChucVu(MaCV,TenCV)
Values ('03' , N'Trưởng phòng')
Insert Into ChucVu(MaCV,TenCV)
Values ('04' , N'Tổng giám đốc')
Insert Into ChucVu(MaCV,TenCV)
Values ('05' , N'Nhân viên')
go

--Nhập data cho bảng ngoại ngữ
Insert Into NgoaiNgu(MaNN,TenNN)
Values ('01' , N'Tiếng Anh')
Insert Into NgoaiNgu(MaNN,TenNN)
Values ('02' , N'Tiếng Pháp')
Insert Into NgoaiNgu(MaNN,TenNN)
Values ('03' , N'Tiếng Đức')
Insert Into NgoaiNgu(MaNN,TenNN)
Values ('04', N'Tiếng Nhật')
Insert Into NgoaiNgu(MaNN,TenNN)
Values ('05' , N'Tiếng Hàn')
go

--Nhập data cho bảng trình độ
Insert Into TrinhDo(MaTD,TenTD)
Values ('01' , N'Cao đẳng')
Insert Into TrinhDo(MaTD,TenTD)
Values ('02' , N'Đại học')
Insert Into TrinhDo(MaTD,TenTD)
Values ('03' , N'Cử nhân')
Insert Into TrinhDo(MaTD,TenTD)
Values ('04' , N'Thạc sĩ')
Insert Into TrinhDo(MaTD,TenTD)
Values ('05' , N'Tiến sĩ')
go

--Nhập data cho bảng phòng ban
Insert Into PhongBan(MaPB,TenPB)
Values ('123' , N'Kế toán')
Insert Into PhongBan(MaPB,TenPB)
Values ('124' , N'Hành chính')
Insert Into PhongBan(MaPB,TenPB)
Values ('125' , N'Chăm sóc khách hàng')
Insert Into PhongBan(MaPB,TenPB)
Values ('126' , N'Nhân sự')
Insert Into PhongBan(MaPB,TenPB)
Values ('127' , N'Marketing')
go

--Nhập data cho bảng nhân viên:
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('001',N'Phan Gia Huy' ,'1993-05-15' ,N'25 Phạm Văn Pha, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('002',N'Nguyễn Bùi Trọng Tín' ,'2002-03-08' ,N'2 Đường số 42, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('003',N'Cao Xuân Trường' ,'2002-11-23' ,N'12 Phạm Ngũ Lão, Bình Tân, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('004',N'Nguyễn Triệu Vỹ' ,'2001-07-05' ,N'10 Nguyễn Văn Khạ, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('005',N'Phan Công Khanh' ,'1993-06-09' ,N'112 Tân Kỳ Tân Quý, Bình Tân, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('006',N'Phan Thanh Tùng' ,'1997-05-15' ,N'10 Trần Duy Hưng, Quận 3, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('007',N'Quách Hoàng Sơn' ,'2002-05-06' ,N'25 Tỉnh lộ 8, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('008',N'Bùi Công Nam' ,'1998-12-21' ,N'07 Phạm Văn Chèo, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('009',N'Đoàn Văn Hùng' ,'1992-06-14' ,N'17 Nguyễn Văn Nì, Củ Chi, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('010',N'Lê Công Minh' ,'1993-04-27' ,N'27 Lê Trọng Tấn, Tân Bình Tân Phú, TP.HCM' ,N'Nam' ,'05' ,'01' ,'123')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('011',N'Phan Hữu Nghi' ,'1983-05-15' ,N'25 Trung Viết, Q.2, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('012',N'Nguyễn Duy Hưng' ,'1987-10-10' ,N'5 Trần Hưng Đạo, Q.1, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('013',N'Trần Minh Khang' ,'1983-05-27' ,N'19 Hai Bà Trưng, Q.2, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('014',N'Nguyễn Thanh Minh' ,'1981-01-15' ,N'112 Nguyễn Văn Ni, Q.7, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('015',N'Trần Khánh Phương' ,'1985-09-24' ,N'12 Nguyễn Viết Xuân, Q.5, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('016',N'Trần Công Nam' ,'1988-07-25' ,N'601 Phan Duy Hưng, Q.2, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('017',N'Lê Công Thành' ,'1986-01-05' ,N'25 Trần Hưng Đạo, Q.2, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('018',N'Trần Tiến Dũng' ,'1997-05-23' ,N'18 Phạm Văn Đồng, Q.3, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('019',N'Nguyễn Trung Hiếu' ,'1996-06-17' ,N'15 Quốc Lộ 22, Củ Chi, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('020',N'Phan Tấn Công' ,'1987-10-20' ,N'89 Liêu Bình Hương, Củ Chi, TP.HCM' ,N'Nam' ,'04' ,'02' ,'124')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('021',N'Phùng Thanh Sang' ,'1998-05-30' ,N'30 đường 346, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('022',N'Lê Công Lý' ,'1998-05-17' ,N'30 Phạm Văn Chèo, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('023',N'Mãi Phát Tài' ,'2002-02-20' ,N'49 Liêu Bình Hương, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('024',N'Trần Thanh Tiến' ,'1994-03-05' ,N'116 Phạm Thị Hối, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('025',N'Lê Công Vinh' ,'1991-03-07' ,N'19 Nguyễn Đình Huân, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('026',N'Lê Thanh Sang' ,'1978' ,N'26 Lê Cẩn, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('027',N'Trần Lê Trúc Phương' ,'1995-07-08' ,N'69 Tân Thông Hội, Củ Chi, TP.HCM' ,N'Nữ' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('028',N'Nguyễn Trung Trực' ,'1992-03-02' ,N'56 Bùi Thị He, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('029',N'Nguyễn Quang Anh' ,'1992-01-05' ,N'775 Nguyễn Văn Xơ, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('030',N'Dương Mạnh Cường' ,'1994-07-11' ,N'Đỗ Quang Cơ, Củ Chi, TP.HCM' ,N'Nam' ,'03' ,'03' ,'125')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('031',N'Phan Tuấn Anh' ,'1996-05-30' ,N'69 Nguyễn Viết Xuân, Lê Trọng Tấn, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('032',N'Trần Khánh Phương' ,'1980-06-30' ,N'Ngô Tất Tố, quận 7, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('033',N'Trần Tiến Tới' ,'1992-05-03' ,N'117 Phan Đình Hùng, ấp Lục Bình, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('034',N'Nguyễn Viết Thành Công' ,'1992-01-18' ,N'Đào Văn Thử, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('035',N'Nguyễn Minh Công' ,'1978-02-27' ,N'Hà Văn Lao, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('036',N'Phan Quốc Đông' ,'1996-05-17' ,N'27 Trần Thị Bàu, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('037',N'Trần Nhật Minh' ,'1979-04-29' ,N'Trần Tử Bình, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('038',N'Trần Trung Nam' ,'1992-02-02' ,N'67 Võ Thị Dòn, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('039',N'Nguyễn Hạo Nam' ,'1997-11-23' ,N'11 Cầu Giấy, Bình Tân, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('040',N'Phan Tuấn Anh' ,'1996-05-30' ,N'30 đường 373, Củ Chi, TP.HCM' ,N'Nam' ,'02' ,'04' ,'126')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('041',N'Lý Công Luân' ,'1973-12-04' ,N'19 Hai Bà Trưng, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('042',N'Nguyễn Đình Công' ,'1998-02-17' ,N'49 Nguyễn Thị Lừa, quận Bình Chánh, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('043',N'Vô Diện' ,'1997-05-09' ,N'64 Nguyễn Thị Tệp, ấp bàu sim, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('044',N'Phải Tất Tay' ,'1994-03-03' ,N'6 Mãi Chiến Thắng, xã Sáu Nút, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('045',N'Công Quyết Thắng' ,'1975-12-07' ,N'18 Nguyễn Văn Hoài, ấp bàu sim, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('046',N'Nguyễn Việt Hoàng' ,'1999-07-30' ,N'27 Đỗ Đình Nhân, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('047',N'Lê Minh Tâm' ,'1996-06-06' ,N'79 Lê Đình Duẩn, ấp Xóm Mới, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('048',N'Lê Hoài Thương' ,'1996-07-16' ,N'46/7 Phạm Ngũ Lão, ấp Tân Thạnh Tây, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('049',N'Lê Hoài Thư' ,'2000-12-03' ,N'37 Trần Duy Hưng, ấp Cây Sộp, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
Insert Into NhanVien(MaNV,TenNV,NgaySinh,DiaChi,GioiTinh,MaBL,MaTD,MaPB)
Values ('050',N'Lê Minh Tuấn' ,'1999-03-30' ,N'45D đường 377, ấp bàu sim, Củ Chi, TP.HCM' ,N'Nam' ,'01' ,'05' ,'127')
go

--Nhập data cho bảng công:
Insert Into BanCong(NgayCong,MaNV)
Values ('26','001')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','002')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','003')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','004')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','005')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','006')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','007')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','008')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','009')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','010')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','011')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','012')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','013')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','014')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','015')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','016')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','017')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','018')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','019')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','020')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','021')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','022')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','023')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','024')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','025')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','026')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','027')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','028')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','029')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','030')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','031')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','032')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','033')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','034')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','035')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','036')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','037')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','038')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','039')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','040')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','041')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','042')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','043')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','044')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','045')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','046')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','047')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','048')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','049')
Insert Into BanCong(NgayCong,MaNV)
Values ('26','050')
go

--Nhập data cho bảng nhân viên__ngoại ngữ:
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'001' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-02-18' ,'002' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'003' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'004' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-11-05' ,'005' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'006' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'007' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-09-09' ,'008' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-07-16' ,'009' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2021-12-15' ,'010' ,'01')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'011' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'012' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'013' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'014' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'015' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'016' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'017' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'018' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'019' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-10-18' ,'020' ,'02')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'021' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'022' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'023' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'024' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'025' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'026' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'027' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-29' ,'028' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'029' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'030' ,'03')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'031' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'032' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'033' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'034' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'035' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-31' ,'036' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'037' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'038' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'039' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'040' ,'04')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'041' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'042' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-07-09' ,'043' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'044' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'045' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'046' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'047' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'048' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'049' ,'05')
Insert Into NhanVien_NgoaiNgu(NgayCap,MaNV,MaNN)
Values ('2020-12-15' ,'050' ,'05')
go

--Nhập data cho bảng nhân viên__chức vụ:
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'001')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'002')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'004')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'005')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2021-12-19' ,'2026-12-19' ,'01' ,'006')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'007')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'008')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2018-12-20' ,'2023-12-20' ,'01' ,'009')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'010')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'011')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'012')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'013')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'014')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'015')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'016')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2017-12-19' ,'2022-12-19' ,'02' ,'017')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'018')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'019')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'020')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'021')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'022')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'023')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'024')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'025')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'026')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'027')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'028')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'029')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'030')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'031')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'032')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'033')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'034')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'035')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'036')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'037')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'038')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'039')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'040')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'041')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'042')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'043')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'044')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'045')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'046')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'047')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'048')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'049')
Insert Into NhanVien_ChuVu(NgayBD,NgayKT,MaCV,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'050')
go


--Nhập data cho bảng nhân viên__chế độ:
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'001')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'002')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'003')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'004')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'005')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'006')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'007')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'008')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'009')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'01' ,'010')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'011')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'012')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'013')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'014')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'015')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'016')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'017')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'018')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'019')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'02' ,'020')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'021')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'022')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'023')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'024')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'025')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'026')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'027')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'028')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'029')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'03' ,'030')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'031')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'032')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'033')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'034')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'035')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'036')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'037')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'038')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'039')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'04' ,'040')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'041')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'042')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'043')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'044')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'045')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'046')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'047')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'048')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'049')
Insert Into NhanVien_CheDo(NgayBD,NgayKT,MaCD,MaNV)
Values ('2020-12-19' ,'2025-12-19' ,'05' ,'050')
go

--Nhập data cho bảng Nhân viên__bảo hiểm
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '001' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '002' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '003' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '004' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '005' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '006' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '007' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '008' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '009' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '01', '010' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '011' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '012' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '013' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '014' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '015' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '016' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '017' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '018' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '019' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '02', '020' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '021' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '022' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '023' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '024' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '025' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '026' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '027' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '028' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '029' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '03', '030' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '031' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '032' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '033' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '034' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '035' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '036' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '037' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '038' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '039' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '04', '040' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '041' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '042' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '043' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '044' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '045' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '046' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '047' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '048' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '049' )
Insert Into NhanVien_BaoHiem  (NgayBD, NgayKT, GhiChu, NoiCap, MaBH, MaNV)
Values ('2019-12-26' , '2024-12-26', N'', N'TP.HCM', '05', '050' )
go




--------------------------------------------------- Thu tuc -------------------------------------------------
-- TT1. Thủ tục truyền vào MaNV và cho biết TenPB của họ
Create Proc TenPhongBan @maNV int, @tenPB nvarchar(50) output As Begin 	Select @tenPB = TenPB From NhanVien NV, PhongBan PB where NV.MaPB = PB.MaPB and NV.maNV = @maNV  End  Declare @tenPB nvarchar(50) Exec TenPhongBan 3, @tenPB out Print (@tenPB)  -- TT2. Thủ tục truyền vào MaNV và cho biết Trình độ của họ
Create Proc TimTrinhDo @maNV int, @tenTrinhDo nvarchar(50) output As Begin 	Select @tenTrinhDo = TenTD From NhanVien NV, TrinhDo TD where NV.MaTD = TD.MaTD and NV.maNV = @maNV End  Declare @tenTrinhDo nvarchar(50) Exec TimTrinhDo 20, @tenTrinhDo out Print (@tenTrinhDo)  -- TT3. Thủ tục truyền vào MaNV và cho biết tên bậc lương của họ
Create Proc TenBacLuong @maNV int, @tenBL nvarchar(50) output As Begin 	Select @tenBL = TenBL From NhanVien NV, BacLuong BL where NV.MaBL = BL.MaBL and NV.maNV = @maNV  End  drop proc TenBacLuong  Declare @tenBL nvarchar(50) Exec TenBacLuong 01, @tenBL out Print (@tenBL)   -- TT4. Thủ tục truyền vào MaNV và cho biết NgayBD và NgayKT bảo hiểm của Nhân viên đó
CREATE PROC SP_BDKTBH @MaNV INT, @NgayBD DATE OUTPUT, @NgayKT DATE OUTPUT 
AS 
	SELECT @NgayBD = NgayBD, @NgayKT = NgayKT
	FROM NHANVIEN_BAOHIEM
	WHERE MaNV = @MaNV

DECLARE @NgayBDBH DATE, @NgayKTBH DATE
EXEC SP_BDKTBH 1, @NgayBDBH OUTPUT, @NgayKTBH OUTPUT
PRINT @NgayBDBH 
PRINT @NgayKTBH   
-- TT5. Thủ tục truyền vào MaPB và đếm số nhân viên của phòng ban
create proc sp_in_soNV
@mapb int
as
	declare @dem int
	declare @pb nvarchar(50)
	--- Đếm số nhân viên của phòng
	select @pb = pb.TenPB, @dem = count(nv.MaNV)
	from PhongBan pb, NhanVien nv
	where nv.MaPB = pb.MaPB and pb.MaPB = @mapb
	group by pb.TenPB
	print N'Phòng ban ' + convert(nvarchar(50), @pb) + N' có số nhân viên: ' + convert(char(10), @dem)

	

drop proc sp_in_soNV

--Gọi thực hiện thủ tục
exec sp_in_soNV @mapb = '123'




-- TT6. Thủ tục truyền vào MaPB và xem danh sách nhân viên của 1 phòng ban
create proc sp_xem_dsNV (@MaPB int)
as
begin
	select nv.*
	from dbo.NhanVien nv, dbo.PhongBan pb
	where pb.MaPB = @MaPB and pb.MaPB = nv.MaPB
end

drop proc sp_xem_dsNV

exec sp_xem_dsNV @MaPB = 123



-- TT7. Thủ tục truyền vào MaBL và tăng 0.1 hệ số bậc lương cho tất cả nhân sự
create proc sp_cong
as
	UPDATE BacLuong SET BacLuong.HeSBL = CASE BacLuong.MaBL
                          WHEN 1 THEN BacLuong.HeSBL + 0.1
						  WHEN 2 THEN BacLuong.HeSBL + 0.1
						  WHEN 3 THEN BacLuong.HeSBL + 0.1
						  WHEN 4 THEN BacLuong.HeSBL + 0.1
						  WHEN 5 THEN BacLuong.HeSBL + 0.1
						  else BacLuong.HeSBL
						  end

drop proc sp_cong

exec sp_cong

select * from BacLuong      
-- TT8. Thủ tục đăng ký tài khoản
CREATE PROC SP_DANGKY @UserName VARCHAR(100), @Pass_Word VARCHAR(100), @HoTen NVARCHAR(100)
AS
BEGIN 
	INSERT INTO Users(UserName, HoTen, Pass_Word)
	VALUES(@UserName, @HoTen, @Pass_Word)
END
GO
EXEC SP_DANGKY 'CONAN', '1412', 'SHINICHI'     -- TT9. Thủ tục cập nhật tài khoản
CREATE PROC SP_CAPNHATTAIKHOAN @HoTen NVARCHAR(100), @UserCU VARCHAR(100), @Pass_CU VARCHAR(100), @UserMOI VARCHAR(100), @Pass_MOI VARCHAR(100)
AS
BEGIN
	UPDATE Users
	SET HoTen = @HoTen , UserName = @UserMOI, Pass_Word = @Pass_MOI
	WHERE UserName = @UserCU AND Pass_Word =@Pass_CU
END
GO
EXEC SP_CAPNHATTAIKHOAN 'HO HO', 'SHINICHI', '1412', 'HOHO', '1212'     --------------------------------------------------- Ham ------------------------------------------------- -- H1. Viết hàm truyền vào MaPB và cho biết mã nhân viên và tên nhân viên phòng ban đó Create Function F_NhanVienPhongBan (@maPB int) Returns Table As	 Return (Select NV.MaNV, NV.TenNV From  NhanVien NV, PhongBan PB 			Where NV.MaPB = PB.maPB and PB.maPB = @maPB)  Select * From F_NhanVienPhongBan(123)  -- H2. Viết hàm truyền vào mã chức vụ cho biết tên mã nhân viên và tên nhân viên có chức vụ đó Create Function F_NhanVienChucVu (@maCV int) Returns Table As	 Return (Select NV.MaNV, NV.TenNV From NhanVien NV, ChucVu CV, NhanVien_ChuVu NV_CV 						  where NV_CV.MaCV = CV.MaCV and NV_CV.maNV = NV.MaNV and CV.MaCV = @maCV)  Select * From F_NhanVienChucVu(3)  -- H3. Viết hàm truyền mã bảo hiểm cho biết mã nhân viên và tên nhân viên có Đăng kí bảo hiểm đó Create Function F_NhanVienbaoHiem (@maBH int) Returns Table As	 Return (Select NV.MaNV, NV.TenNV From NhanVien NV, BaoHiem BH, NhanVien_BaoHiem NV_BH 						  where NV_BH.MaBH = BH.MaBH and NV_BH.maNV = NV.MaNV and BH.MaBH = @maBH)  Select * From F_NhanVienbaoHiem(3)  
-- H4. Viết hàm xem số lượng nhân viên từng phòng ban
CREATE FUNCTION FN_KT_SLNVPB()
RETURNS TABLE
AS    
    RETURN SELECT PhongBan.MaPB,COUNT(NhanVien.MaPB) AS N'Số Lượng' 
	FROM NHANVIEN,PHONGBAN
    WHERE NhanVien.MaPB = PhongBan.MaPB 
    GROUP BY PhongBan.MaPB

SELECT* FROM DBO.FN_KT_SLNVPB()


-- H5. Viết hàm Truyền vào MANV và xem thông tin của 1 nhân viên
create function f_xem_ThongTinNV (@manv int)
returns table
as
	return (select nv.*, pb.TenPB
			from NhanVien nv, PhongBan pb
			where nv.MaPB = pb.MaPB and nv.MaNV = @manv)

drop function f_xem_ThongTinNV

select * from f_xem_ThongTinNV (001)



-- H6. Viết hàm truyền vào MaBL và in danh sách nhân viên có cùng bậc lương đó
create function f_xem_nv_cungBL_ (@mabl int)
returns table
as
	return (select nv.*, bl.TenBL
			from NhanVien nv, BacLuong bl
			where nv.MaBL = bl.MaBL and bl.MaBL = @mabl)

drop function f_xem_nv_cungBL_

select * from f_xem_nv_cungBL_ (5)



-- H7. Viết hàm truyền vào MaNV in ra số ngày công của nhân viên đó
create function f_xem_songaycong (@manv int)
returns table
as
	return (select nv.MaNV, nv.TenNV, bc.NgayCong
			from NhanVien nv, BanCong bc
			where nv.MaNV = bc.MaNV and nv.MaNV = @manv)

drop function f_xem_songaycong

select * from f_xem_songaycong (1)



-- H8. Viết hàm đăng nhập tài khoản
GO
CREATE FUNCTION F_DANGNHAP(@UserName VARCHAR(100), @Pass_Word VARCHAR(100))
RETURNS TABLE
AS
	RETURN (SELECT * FROM Users WHERE UserName = @UserName AND Pass_Word = @Pass_Word)
GO
SELECT * FROM F_DANGNHAP('phuc', '1111')



-- H9. Viết hàm kiểm tra quyền của user
GO
CREATE FUNCTION F_KIEMTRAQUYEN(@UserName VARCHAR(100), @Pass_Word VARCHAR(100))
RETURNS TABLE
AS
	RETURN (SELECT COUNT(*) AS N'TONG' FROM Users WHERE UserName = @UserName AND Pass_Word = @Pass_Word AND Quyen = 'Admin')
GO
SELECT * FROM F_KIEMTRAQUYEN('CONAN', '1412')




