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