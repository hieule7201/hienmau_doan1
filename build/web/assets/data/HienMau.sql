create table NguoiHienMau
(
	maNHM varchar(11) primary key,
	tenNHM nvarchar(100),
	gioiTinh bit,
	nhomMau varchar(2),
	benhNen nvarchar(100),
	diaChi nvarchar(200),
	SDT varchar(10) not null  check (sdt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CCCD varchar(13) ,
	matKhau varchar(100) not null
)

create table TinhNguyenVien
(
	maTNV varchar(11) primary key,
	tenTNV nvarchar(100),
	gioiTinh bit,
	diaChi nvarchar(200),
	SDT varchar(10) not null unique check (sdt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ),
	CCCD varchar(13) unique,
	matKhau varchar(100) not null
)

			
create table NhanVienYTe
(
	maNV varchar(11) primary key,
	tenNV nvarchar(100),
	gioiTinh bit,
	diaChi nvarchar(200),
	SDT varchar(10) not null unique check (sdt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ),
	CCCD varchar(13) unique,
	matKhau varchar(100) not null
)

create table GiamDoc
(
	maGD varchar(11) primary key,
	tenGD nvarchar(100),
	gioiTinh bit,
	diaChi nvarchar(200),
	SDT varchar(10) not null unique check (sdt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ),
	CCCD varchar(13) unique,
	matKhau varchar(100) not null
)
			
create table DotHienMau
(
	maDHM varchar(11) primary key,
	tenDHM nvarchar(100),
	thoiGian date,
	diaDiem nvarchar(200),
	soLuongTNV int  ,
	soLuongNHM int
)

create table PhanHoi
(
	maPH varchar(11) primary key,
	maNHM varchar(11) foreign key (maNHM) references NguoiHienMau(maNHM),
	maNV varchar(11) foreign key (maNV) references NhanVienYTe(maNV),
	noidung nvarchar(200),
	cauTraLoi nvarchar(200) 
)

create table DanhSachCongViec
(
	maDS varchar(11) primary key,
	maDHM varchar(11) foreign key (maDHM) references DotHienMau(maDHM),
	maGD varchar(11) foreign key (maGD) references GiamDoc(maGD),
	congViec nvarchar(200)
)

create table ThongBaoHienMau
(
	maTB varchar(11) primary key,
	tenTB nvarchar(100),
	maDHM varchar(11) foreign key (maDHM) references DotHienMau(maDHM),
	ghiChu nvarchar(200),
	maNV varchar(11) foreign key (maNV) references NhanVienYTe(maNV)
)

create table LichSuHienMau
(
	maLSHM varchar(11) primary key,
	maDHM varchar(11) foreign key (maDHM) references DotHienMau(maDHM),
	maNHM varchar(11) foreign key (maNHM) references NguoiHienMau(maNHM),
	thoiGian date,
	tinhTrang nvarchar(50),
	soLuongMau int
)


create table LichSuHoTro
(
	maLSHT varchar(11) primary key,
	maDHM varchar(11) foreign key (maDHM) references DotHienMau(maDHM),
	maTNV varchar(11)  foreign key (maTNV) references TinhNguyenVien(maTNV),
	thoiGian date,
	congViec nvarchar(50)
)

create table DangKyHienMau
(
	maDKHM varchar(11) primary key,
	maDHM varchar(11) foreign key (maDHM) references DotHienMau(maDHM),
	maNHM varchar(11) foreign key (maNHM) references NguoiHienMau(maNHM),
	tinhTrang nvarchar(50)
)


create table DangKyHoTro
(
	maDKHT varchar(11) primary key,
	maDHM varchar(11)foreign key (maDHM) references DotHienMau(maDHM),
	maTNV varchar(11)  foreign key (maTNV) references TinhNguyenVien(maTNV)
)





--Function Tăng id tự động
go
create function func_nextmadh (@lastmadh varchar(15), @prefix varchar(4), @size int)
returns varchar(15)
as
begin
if(@lastmadh='')
	set @lastmadh= @prefix + REPLICATE(0,@size - len(@prefix))
	declare @num_nextmadh int , @nextmadh varchar(15) 
	set @lastmadh= LTRIM(RTRIM(@lastmadh))
	set @num_nextmadh= REPLACE(@lastmadh, @prefix, '') +1
	set @size= @size - LEN(@prefix)
	set @nextmadh = @prefix + REPLICATE(0,@size - LEN(@prefix))
	set @nextmadh= @prefix + RIGHT (REPLICATE(0,@size) + CONVERT(varchar(max),@num_nextmadh),@size)
	return @nextmadh
end
GO
create trigger tr_nextmaNHM on NguoiHienMau
for insert
as
	begin
		declare @lastUserID varchar(11)
		set @lastUserID = (select top 1 maNHM from NguoiHienMau order by maNHM desc)
		Update NguoiHienMau set maNHM = dbo.func_nextmadh(@lastUserID, 'NHM',11) where maNHM = ''
	end
go