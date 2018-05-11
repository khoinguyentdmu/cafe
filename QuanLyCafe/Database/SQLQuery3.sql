--Lay danh sach thuc uong
CREATE PROCEDURE USP_GetDinksList
AS select * from TBL_THUCUONG; 

--Lay 1 item nuoc uong
CREATE PROCEDURE USP_GetDrink @id int
AS select * from TBL_THUCUONG where @id = ID;

exec USP_GetDrink 5

--insert 1 nuoc uong

CREATE PROCEDURE USP_InsertDrink @name NVARCHAR, @unitPrice INT
AS INSERT INTO TBL_THUCUONG VALUES (@name, @unitPrice);

exec USP_InsertDrink "hihi", 3

select * from TBL_THUCUONG