--Lay danh sach thuc uong
CREATE PROCEDURE USP_GetDinksList
AS select * from TBL_THUCUONG; 

--Lay 1 item nuoc uong
CREATE PROCEDURE USP_GetDrink @id int
AS select * from TBL_THUCUONG where @id = ID;

exec USP_GetDrink 5



--insert 1 nuoc uong
ALTER PROCEDURE USP_InsertDrink @name NVARCHAR(50), @unitPrice INT
AS 
BEGIN
	DECLARE @CNT INT= (SELECT COUNT(*) FROM TBL_THUCUONG WHERE @name = TENTHUCUONG AND @unitPrice = DONGIA);
	IF (@CNT=0) INSERT INTO TBL_THUCUONG VALUES (@name, @unitPrice);
END

exec USP_InsertDrink "hihi", 3

select * from TBL_THUCUONG

--delete 1 thuc uong

CREATE PROCEDURE USP_DeleteDrink @ID INT
AS DELETE FROM TBL_THUCUONG WHERE @ID = ID

EXEC USP_DeleteDrink 13

--update 1 thuc uong

CREATE PROCEDURE USP_UpdateDrink @ID INT, @NAME NVARCHAR(50), @UNITPRICE INT
AS UPDATE TBL_THUCUONG SET TENTHUCUONG = @NAME, DONGIA = @UNITPRICE WHERE ID = @ID;




--Kiem tra dang nhap

ALTER PROCEDURE USP_DangNhap @USERNAME VARCHAR(50), @PASSWORD VARCHAR(500)
AS SELECT * from TBL_TAIKHOAN WHERE @USERNAME = TENDANGNHAP AND @PASSWORD = MATKHAU

insert into TBL_TAIKHOAN values ('admin','admin');

--Get danh sach admin
CREATE PROCEDURE USP_GetAccountAdminsList
AS SELECT * FROM TBL_TAIKHOAN

--Them 1 tai khoan admin
CREATE PROCEDURE USP_InsertAccountAdmin @username VARCHAR(50), @password VARCHAR(500)
AS 
BEGIN
	DECLARE @CNT INT= (SELECT COUNT(*) FROM TBL_TAIKHOAN WHERE @username = TENDANGNHAP);
	IF (@CNT=0) INSERT INTO TBL_TAIKHOAN VALUES (@username, @password);
END

--delete tai khoan admin
CREATE PROCEDURE USP_DeleteAccountAdmin @ID INT
AS DELETE FROM TBL_TAIKHOAN WHERE @ID = ID

--update tai khoan admin
CREATE PROCEDURE USP_UpdateAccountAdmin @ID INT, @username VARCHAR(50), @password VARCHAR(500)
AS UPDATE TBL_TAIKHOAN SET TENDANGNHAP = @username, MATKHAU = @password WHERE ID = @ID;

--Get danh sach nhan vien
CREATE PROCEDURE USP_GetStaffsList
AS select * from TBL_NHANVIEN

--insert nhan vien
CREATE PROCEDURE USP_InsertStaff @name NVARCHAR(50), @tel VARCHAR(11), @address NVARCHAR(100), @unitSalary INT
AS 
BEGIN
	DECLARE @CNT INT= (SELECT COUNT(*) FROM TBL_NHANVIEN WHERE @name = HOTEN AND @tel = SDT AND @address = DIACHI AND @unitSalary = HESOLUONG);
	IF (@CNT=0) INSERT INTO TBL_NHANVIEN VALUES (@name, @tel, @address, @unitSalary);
END


--delete nhan vien
CREATE PROCEDURE USP_DeleteStaff @ID INT
AS DELETE FROM TBL_NHANVIEN WHERE @ID = ID

--update nhan vien
CREATE PROCEDURE USP_UpdateStaff @ID INT, @name NVARCHAR(50), @tel VARCHAR(11), @address NVARCHAR(100), @unitSalary INT
AS UPDATE TBL_NHANVIEN SET HOTEN = @name, SDT = @tel, DIACHI = @address, HESOLUONG = @unitSalary WHERE ID = @ID;

-Get danh sach nhan vien + ngay di lam
CREATE PROCEDURE USP_GetAStaffWorkScheduleList @ID INT 
AS SELECT TBL_NHANVIEN.ID, HOTEN, NGAYLAM 
FROM TBL_NHANVIEN, TBL_CHAMCONG 
WHERE TBL_NHANVIEN.ID = TBL_CHAMCONG.ID AND @ID = TBL_NHANVIEN.ID