USE [webonline_mvc5]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[ad_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_name] [nvarchar](50) NOT NULL,
	[ad_password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](50) NOT NULL,
	[cat_image] [nvarchar](max) NOT NULL,
	[ad_id_fk] [int] NULL,
	[cat_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_table]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_table](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[o_fk_pro] [int] NULL,
	[o_fk_invoice] [int] NULL,
	[o_date] [datetime] NULL,
	[o_qty] [int] NULL,
	[o_bill] [float] NULL,
	[o_unitprice] [int] NULL,
	[o_fk_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pro_id] [int] IDENTITY(1,1) NOT NULL,
	[pro_name] [nvarchar](50) NOT NULL,
	[pro_image] [nvarchar](max) NOT NULL,
	[pro_price] [int] NULL,
	[pro_desc] [nvarchar](max) NOT NULL,
	[cat_id_fk] [int] NULL,
	[pro_user_id_fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_invoice]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_invoice](
	[in_id] [int] IDENTITY(1,1) NOT NULL,
	[in_fk_user] [int] NULL,
	[in_date] [datetime] NULL,
	[in_totalbill] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[in_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 4/6/2024 7:16:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[u_password] [nvarchar](50) NOT NULL,
	[u_image] [nvarchar](max) NOT NULL,
	[u_phone] [nvarchar](50) NOT NULL,
	[u_email] [nvarchar](50) NOT NULL,
	[ad_id_fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([ad_id], [ad_name], [ad_password]) VALUES (1, N'AbdulBasit', N'abc123')
INSERT [dbo].[admin] ([ad_id], [ad_name], [ad_password]) VALUES (2, N'AbdulRehman', N'abc124')
INSERT [dbo].[admin] ([ad_id], [ad_name], [ad_password]) VALUES (3, N'Duy', N'Duy@123')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([cat_id], [cat_name], [cat_image], [ad_id_fk], [cat_status]) VALUES (1, N'Macbook', N'~/Content/upload/997453051macbook.png', 2, 1)
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_image], [ad_id_fk], [cat_status]) VALUES (2, N'Iphone', N'~/Content/upload/45560379iPhone.jpg', 2, 1)
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_image], [ad_id_fk], [cat_status]) VALUES (3, N'Airpod', N'~/Content/upload/627154811airpods.jpg', 2, 1)
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_image], [ad_id_fk], [cat_status]) VALUES (6, N'Samsung', N'~/Content/upload/1736095505ss-s24-ultra-xam-222.jpg', 3, 1)
INSERT [dbo].[category] ([cat_id], [cat_name], [cat_image], [ad_id_fk], [cat_status]) VALUES (7, N'Nokia', N'~/Content/upload/379343435dien-thoai-vertu-signature-s-vertu-signature-gold-dragon-like-new.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[order_table] ON 

INSERT [dbo].[order_table] ([o_id], [o_fk_pro], [o_fk_invoice], [o_date], [o_qty], [o_bill], [o_unitprice], [o_fk_user]) VALUES (21, 18, 16, CAST(N'2024-04-06T12:55:37.080' AS DateTime), 1, 500000, 500000, 2)
INSERT [dbo].[order_table] ([o_id], [o_fk_pro], [o_fk_invoice], [o_date], [o_qty], [o_bill], [o_unitprice], [o_fk_user]) VALUES (22, 18, 17, CAST(N'2024-04-06T15:19:36.183' AS DateTime), 2, 1000000, 500000, 2)
INSERT [dbo].[order_table] ([o_id], [o_fk_pro], [o_fk_invoice], [o_date], [o_qty], [o_bill], [o_unitprice], [o_fk_user]) VALUES (23, 17, 17, CAST(N'2024-04-06T15:19:36.220' AS DateTime), 1, 990000000, 990000000, 2)
SET IDENTITY_INSERT [dbo].[order_table] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (2, N'Macbook Pro', N'~/Content/upload/1599558670pexels-photo-415829.jpg', 24000000, N'Macbook Pro 16inc', 1, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (14, N'Ariprod Pro', N'~/Content/upload/356821013images (2).jpg', 20999999, N'About this item
The Airpods protective case is made from flexible, shock-resistant silicone material to protect your Airpods case from scratches and external impacts.
Easy access to all functions and buttons without any interference. And don''t need to remove the case when you want to charge your earphone (Front LED Unvisible).
High quality anti-lost carabiner And Equipped with a headphone rope, make your device easy to carry along,Easily and safely hook the device to your handbag,backpack,pants belt. No more device slipping out and falling out. this earpods case will keep your $200 device safer and stylish.
This cute cartoon shockproof and drop proof cases compatible with air pods case cover are in good pack, it''s have very unique and cute shape, that is a good gift for your family, kids and friends, it will give a big smile to your honey or kids face.
Your satisfaction is first, if you have any questions and unsatisfied, We offer a 60-Day 100% Money Back Guarantee and 1 Year Replacement Warranty.', 3, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (15, N'Samsung Galaxy Note 20 Ultra', N'~/Content/upload/500792445(600x600)_crop_samsung-galaxy-note-20-ultra-256-gb_1.jpg', 72000000, N'Luxurious and class are always the leading element of Samsung and Galaxy Note 20 Ultra 5G 256GB Korean equipment is no exception. It owns a monolithic design with square lines and large screen. The manufacturer has used aluminum frames to cover the product, both ensuring the toughness and the elegance of a handheld mobile device.', 6, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (16, N'Samsung Galaxy S23 Ultra 256GB', N'~/Content/upload/650165391s23-ultra-tim.jpg', 27000000, N'Outstanding features unleash photos, professional video recording - Camera up to 200MP, Improved Night Shooting mode, Exploding Smart Game Game Games - Snapdragon 8 Gen 2 Gen 2 Chip Gen 2 FIGHT. Figure 120Hz, 5,000mAh battery enhances performance with built -in S Pen, easy to mark the event from durable, friendly image or video - color inspired by nature, materials Glasses and recycled PET coating', 6, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (17, N'Vertu Signature S Gold Dragon', N'~/Content/upload/1018395947dien-thoai-vertu-su-dung-he-dieu-hanh-gi-1.jpg', 990000000, N'Vertu Signature S is designed from 388 different mechanical components created, so complicated that it is almost impossible to be manufactured by meticulous details, almost absolutely accurate. Experienced craftsmen have taken up to 3 years just to learn how to fully assemble a phone and only a few people around the world can do this. The Vertu Signature S Design phone has 74 patents to protect intellectual property rights. Nearly 100 strict tests to ensure that each device is perfect before leaving the factory.', 7, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (18, N'Nokia phone neck 3310', N'~/Content/upload/15171923913310-cổ-1.jpg', 500000, N'Product specifications
Network: 2g GSM 900/1800
Launch: January 2000
Size: 113 x 48 x 22mm, 97cc
Weight: 133 g
Monochromatic screen resolution: 84 x 48 pixels
Internal memory: no
Memory card slot: no
Bluetooth: no
Radio: no
USB: No
Standard battery, 900mAh nimh wait up to 260 hours
Use: From 1 day to 3 days.', 7, 1)
INSERT [dbo].[product] ([pro_id], [pro_name], [pro_image], [pro_price], [pro_desc], [cat_id_fk], [pro_user_id_fk]) VALUES (19, N'MUW63 – MacBook Pro', N'~/Content/upload/334054034macbook-pro-m3-max-16-inch-black-applecareplus-900x900.jpg', 94500000, N'MUW63 – MacBook Pro 16 inch 2023 – (M3 Max/48GB/1TB) - New, AppleCare+ 3Yrs', 1, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_invoice] ON 

INSERT [dbo].[tbl_invoice] ([in_id], [in_fk_user], [in_date], [in_totalbill]) VALUES (16, 2, CAST(N'2024-04-06T12:55:36.920' AS DateTime), 500000)
INSERT [dbo].[tbl_invoice] ([in_id], [in_fk_user], [in_date], [in_totalbill]) VALUES (17, 2, CAST(N'2024-04-06T15:19:35.960' AS DateTime), 991000000)
SET IDENTITY_INSERT [dbo].[tbl_invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([u_id], [u_name], [u_password], [u_image], [u_phone], [u_email], [ad_id_fk]) VALUES (1, N'Quyet', N'123456', N'~/Content/upload/125968219rr.jpg', N'0937912184', N'Quyet@gmail.com', NULL)
INSERT [dbo].[tbl_user] ([u_id], [u_name], [u_password], [u_image], [u_phone], [u_email], [ad_id_fk]) VALUES (2, N'Duy', N'Duy@123', N'~/Content/upload/909376237360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg', N'0372847369', N'duy@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__84D9FB7A4B523874]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[ad_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__B0D041C2CD660838]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[ad_password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__category__FA8C1790FDD1A44A]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[category] ADD UNIQUE NONCLUSTERED 
(
	[cat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__3DF9EF22E54A82AD]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__714E4E37E7F94179]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__7FC437E3AFE5EA4F]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__B38ABBE43E323182]    Script Date: 4/6/2024 7:16:09 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD FOREIGN KEY([ad_id_fk])
REFERENCES [dbo].[admin] ([ad_id])
GO
ALTER TABLE [dbo].[order_table]  WITH CHECK ADD FOREIGN KEY([o_fk_pro])
REFERENCES [dbo].[product] ([pro_id])
GO
ALTER TABLE [dbo].[order_table]  WITH CHECK ADD FOREIGN KEY([o_fk_invoice])
REFERENCES [dbo].[tbl_invoice] ([in_id])
GO
ALTER TABLE [dbo].[order_table]  WITH CHECK ADD  CONSTRAINT [FK_order_table_tbl_user] FOREIGN KEY([o_fk_user])
REFERENCES [dbo].[tbl_user] ([u_id])
GO
ALTER TABLE [dbo].[order_table] CHECK CONSTRAINT [FK_order_table_tbl_user]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cat_id_fk])
REFERENCES [dbo].[category] ([cat_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([pro_user_id_fk])
REFERENCES [dbo].[tbl_user] ([u_id])
GO
ALTER TABLE [dbo].[tbl_invoice]  WITH CHECK ADD FOREIGN KEY([in_fk_user])
REFERENCES [dbo].[product] ([pro_id])
GO
ALTER TABLE [dbo].[tbl_user]  WITH CHECK ADD  CONSTRAINT [FK_tbl_user_admin] FOREIGN KEY([ad_id_fk])
REFERENCES [dbo].[admin] ([ad_id])
GO
ALTER TABLE [dbo].[tbl_user] CHECK CONSTRAINT [FK_tbl_user_admin]
GO
