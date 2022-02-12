USE [VehicleShop]
GO
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Buyer')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Seller')
GO
INSERT [dbo].[ACCOUNT] ([Username], [Password], [Status], [Role]) VALUES (N'admin', N'123456', N'active', 1)
GO
SET IDENTITY_INSERT [dbo].[ReportType] ON 

INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (1, N'Hàng kém chất lượng')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (2, N'Hàng không giống mô tả')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (5, N'Loại khác')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (3, N'Phản hồi chậm trễ')
INSERT [dbo].[ReportType] ([TypeId], [ReportName]) VALUES (4, N'Thông tin người bán sai lệch')
SET IDENTITY_INSERT [dbo].[ReportType] OFF
GO
INSERT [dbo].[VehicleType] ([VehicleTypeId], [VehicleTypeName]) VALUES (1, N'Car')
INSERT [dbo].[VehicleType] ([VehicleTypeId], [VehicleTypeName]) VALUES (2, N'Moto')
GO
