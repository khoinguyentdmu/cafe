USE [CSDL_QLCAFE]
GO
SET IDENTITY_INSERT [dbo].[TBL_THUCUONG] ON 

INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (2, N'Coffe w milk', 28000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (4, N'Americano', 25000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (5, N'Cappuccino', 30000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (9, N'Vanilla Frappe', 41000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (11, N'Startupuccino', 39000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (20, N'Black Coffee', 25000)
INSERT [dbo].[TBL_THUCUONG] ([ID], [TENTHUCUONG], [DONGIA]) VALUES (25, N'Latte', 30000)
SET IDENTITY_INSERT [dbo].[TBL_THUCUONG] OFF
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (12, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (12, 4, 25000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (12, 11, 39000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (13, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (13, 20, 25000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (14, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (15, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (16, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (17, 2, 28000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (17, 4, 25000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (17, 9, 41000)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (18, 2, 1)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (18, 11, 1)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (19, 2, 1)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (20, 2, 1)
INSERT [dbo].[TBL_CTHOADON] ([IDHOADON], [IDSANPHAM], [SOLUONG]) VALUES (20, 5, 1)
SET IDENTITY_INSERT [dbo].[TBL_CHAMCONG] ON 

INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (9, 4, CAST(0x0000A8DE00000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (10, 4, CAST(0x0000A8DF00000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (11, 4, CAST(0x0000A8E000000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (12, 5, CAST(0x0000A8D000000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (13, 5, CAST(0x0000A8E000000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (14, 6, CAST(0x0000A8BF00000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (15, 6, CAST(0x0000A8C000000000 AS DateTime))
INSERT [dbo].[TBL_CHAMCONG] ([ID], [IDNHANVIEN], [NGAYLAM]) VALUES (16, 6, CAST(0x0000A8E000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_CHAMCONG] OFF
SET IDENTITY_INSERT [dbo].[TBL_HOADON] ON 

INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (12, CAST(0x0000A8DF00C791EA AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (13, CAST(0x0000A8DF00C8CD1F AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (14, CAST(0x0000A8DF00CF49F1 AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (15, CAST(0x0000A8DF00CFC7FF AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (16, CAST(0x0000A8DF00D0B384 AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (17, CAST(0x0000A8DF00D256FE AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (18, CAST(0x0000A8DF00D58358 AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (19, CAST(0x0000A8DF00DC42C9 AS DateTime))
INSERT [dbo].[TBL_HOADON] ([ID], [NGAYLAP]) VALUES (20, CAST(0x0000A8DF00DC6149 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_HOADON] OFF
SET IDENTITY_INSERT [dbo].[TBL_NHANVIEN] ON 

INSERT [dbo].[TBL_NHANVIEN] ([ID], [HOTEN], [SDT], [DIACHI], [HESOLUONG]) VALUES (4, N'Nguyễn Văn A', N'0123456789', N'1/95d Nguyễn Bỉnh Khiêm', 150000)
INSERT [dbo].[TBL_NHANVIEN] ([ID], [HOTEN], [SDT], [DIACHI], [HESOLUONG]) VALUES (5, N'Nguyễn Văn B', N'0969961235', N'12 Nguyễn Công Trứ', 170000)
INSERT [dbo].[TBL_NHANVIEN] ([ID], [HOTEN], [SDT], [DIACHI], [HESOLUONG]) VALUES (6, N'Nguyễn Văn C', N'0321654987', N'3 Trần Đại Nghĩa', 200000)
SET IDENTITY_INSERT [dbo].[TBL_NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[TBL_TAIKHOAN] ON 

INSERT [dbo].[TBL_TAIKHOAN] ([ID], [TENDANGNHAP], [MATKHAU]) VALUES (3, N'admin2', N'37122481812811963631412001801901341221542')
INSERT [dbo].[TBL_TAIKHOAN] ([ID], [TENDANGNHAP], [MATKHAU]) VALUES (6, N'admin', N'33354741122871651676713774147412831195')
SET IDENTITY_INSERT [dbo].[TBL_TAIKHOAN] OFF
