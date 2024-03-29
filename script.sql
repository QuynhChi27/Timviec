create database recruitWeb
USE [recruitWeb]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/6/2023 03:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[display_name] [varchar](50) NOT NULL,
	[contact] [varchar](50) NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[role] [varchar](20) NOT NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company]    Script Date: 11/6/2023 03:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[owner] [varchar](50) NOT NULL,
	[contact] [nvarchar](50) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 11/6/2023 03:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [varchar](50) NOT NULL,
	[company_id] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[content] [text] NOT NULL,
	[salary] [int] NOT NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[submission]    Script Date: 11/6/2023 03:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[submission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[owner] [varchar](50) NOT NULL,
	[post_id] [int] NOT NULL,
	[detail] [text] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'a', N'1', N'manh1', N'11', N'a@gmail.com', N'user', N'Available')
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'admin', N'1', N'admin', N'aaaa', N'admin@gmail.com', N'admin', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'hr1', N'1', N'HR 1', N'09123456789', N'hr1@gmail.com', N'user', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'hr2', N'1', N'HR 2', N'09123456788', N'hr2@gmail.com', N'user', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'manh', N'1', N'manh', N'1', N'a@gmail.com', N'user', N'Available')
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'nhanvien1', N'nhanvien1', N'Nhan Vien 1', N'09123456787', N'nhanvien1@gmail.com', N'user', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'nhanvien2', N'nhanvien2', N'Nhan Vien 2', N'09123456786', N'nhanvien2@gmail.com', N'user', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'nhanvien3', N'nhanvien3', N'Nhan Vien 3', N'09123456785', N'nhanvien3@gmail.com', N'user', NULL)
INSERT [dbo].[account] ([username], [password], [display_name], [contact], [mail], [role], [status]) VALUES (N'sa', N'123', N'SA', N'xxxxxxxxxx', N'admin@gmail.com', N'admin', NULL)
GO
SET IDENTITY_INSERT [dbo].[company] ON 

INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (1, N'FPT Software', N'sa', N'0123456789', N'image/hotelbacgiang.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (2, N'Software', N'sa', N'0123456789', N'image/hotelhadong.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (3, N'Hola Bana', N'sa', N'0123456789', N'image/hotelhanoi.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (4, N'Banana Ha', N'sa', N'0123456789', N'image/hotelhola.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (5, N'Nam Pro Max', N'admin', N'0123456789', N'image/hotelsonla.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (6, N'Manasd', N'sa', N'0123456789', N'image/hotelthachhoa.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (7, N'Test Companay', N'admin', N'0123456789', N'image/hoteldongnai.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (8, N'OHNONONO', N'admin', N'0123456789', N'image/hotelhcm.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (9, N'Ba Na Hiu', N'admin', N'0123456789', N'image/hotelsaigon.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (10, N'MB Bank', N'hr2', N'0123456789', N'image/hotelbinhthuan.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (11, N'Zing Me', N'hr2', N'0123456789', N'image/hotelninhthuan.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (12, N'Dragon CIty', N'hr2', N'0123456789', N'image/hotelthanhhoa.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (13, N'VNG GAME', N'hr1', N'0123456789', N'image/hotelquangninh.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (14, N'RIot Client', N'hr1', N'0123456789', N'image/hotelnamdinh.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (15, N'Chess LoL', N'hr1', N'0123456789', N'image/hotelphuquoc.png', N'nam@gmail.com', N'Hola, Thach That, Ha Noi')
INSERT [dbo].[company] ([id], [name], [owner], [contact], [img], [mail], [location]) VALUES (16, N'luong', N'admin', N'1', N'https://img.vn/uploads/thuvien/singa-png-20220719150401Tdj1WAJFQr.png', N'1', N'1')

SET IDENTITY_INSERT [dbo].[company] OFF
GO
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (6, N'sa', 1, N'Tuyển Backend', N'We are looking for an experienced Back-end Technical Senior to join our product team to build: a “Top 1 in the world ” Smart city and smart home solution

Be part of an agile team designing and developing high-performance components/micro-services for a wide range of smart city and smart home project ( Access Control, Camera AI, Smart Parking, Waste Management...)', 10000, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (7, N'hr1', 15, N'Tuyển Tester', N'Lập trình phát triển các phần mềm mới, nghiên cứu áp dụng các giải pháp công nghệ đáp ứng nhu cầu nghiệp vụ phát sinh.
Chính xác, cải tiến, hoàn thiện các phần mềm có sẵn, phối hợp với đối tác cung cấp phần mềm nếu cần thiết.
Tham gia nghiên cứu, dừng thử và đánh giá các giải pháp mà đối tác đề xuất trong dự án nâng cấp hệ thống CNTT của công ty.
Tham gia dựng, nâng cấp, vận hành môi trường kiểm thử phần mềm của người dựng trước khi dựa vào triển khai chính thức.', 10, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (8, N'hr2', 10, N'Tuyển Frontend', N'You want to see your code making work easier for others? You want to see a project through, being involved in all steps? Then apply to us now! As a software company operating within the laser scanning industry, we are looking for a freelancer based in Hanoi, Vietnam to help us improve and transform our products starting now.', 30, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (9, N'hr2', 10, N'Tuyển Senior', N'Analyzing requirements for website and applications.
Writing and building efficient PHP or NodeJs modules.
Developing back-end modules with an optimized database.
Troubleshooting application and code issues.
Conducting test for development cycle from unit test to system test.
Updating and altering application features to enhance performance.', 20000, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (10, N'sa', 3, N'Tuyển Sercurity', N'Work closely with product owners, QA team, DevOps team and fellow product engineers to be able to provide right feedback to the team for V-Key products to be successfully integrated into the target mobile application
Provide guidance to customers in terms of how the integration of the mobile SDK needs to be carried out such as documenting the right sequence of APIs, with right parameters for customers to refer to.
Work closely with pre-sales engineers in technically assisting potential customers to be able to complete integration with their mobile apps successfully
Actively work with technical writing team in order to produce well documented steps for achieving successful integration on a specific mobile app development platform', 999, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (11, N'hr2', 10, N'Tuyển Senior', N'Phát tri?n các h? th?ng LMS (PHP Developer)
Programming Language: PHP (Zend Framework, CakePHP), LAMP,...
Database: MySQL, PostgreSQL,...
Others: LMS, SCORM, Smarty...
Phát triển ứng dụng mobile
Programming Language: Python (Django), Dart (Flutter)
Database: PostgreSQL
Others: Logictics, Map, Routing', 20000, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (12, N'hr1', 10, N'Tuyển Senior', N'Develop, maintain, and launch new mobile products and extend platform functionality.
Work collaboratively with product management, governance and your scrum team to design and deliver new and innovative customer solutions.
Bring to bear your experience leveraging best in class tools and technologies (CI/CD, cloud computing, web service development) to refine and improve software development practices.
Engage in innovative problem-solving activities, requiring conceptual thinking creating out of the box solutions with prototypes and pilots.
Utilize TDD practices to ensure delivery of high-quality code with low rates of production defects.
Instrument services and solutions to ensure deployed software is scalable and reliable.', 20000, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (14, N'sa', 1, N'Tuyển Backend', N'The research applied data science problems in our ads systems to improve prediction accuracy, auction strategies, and drive advertiser value;
Work closely with engineering and product teams to develop hypotheses, run experiments and prototype new product ideas;
Collaborate with data engineering teams to build/maintain reports, dashboards, and metrics to monitor the performance of our products, provide insights, and identify new opportunities.;
Apply technical expertise with quantitative analysis, experimentation, data mining, and the presentation of data to develop an understanding of the ads targeting/auction/delivery system
', 20000, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (15, N'sa', 3, N'Tuyển Senior', N'To develop software applications with limited support from senior engineers.
To write program from design specifications in compliance with established coding quality standard of the company.
To write unit tests and run through all the test cases for assigned tasks and ensure all cases tested and passed before release for testing.
To perform code review, code refactor if required.
To document detailed designs as part of technical leaders (lead by Technical Architect or Solution Architect).
To self-train on new technologies.
To follow strictly all the customer’s process if being requested, company’s', 999, NULL)
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (16, N'sa', 1, N'help me from tu ban FPT Hic hic hic', N'Require 100 years experiencesa', 100000, N'Available')
INSERT [dbo].[post] ([id], [owner], [company_id], [title], [content], [salary], [status]) VALUES (19, N'admin', 5, N'1111', N'11111', 1111, N'Available')
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[submission] ON 

INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (6, N'sa', 7, N'a. a', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (7, N'sa', 7, N'1. 1', N'Rejected')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (8, N'sa', 8, N'1. 1', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (10, N'sa', 12, N'1. 1', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (11, N'sa', 10, N'1. 1', N'Approved')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (12, N'sa', 12, N'1. 1', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (13, N'admin', 19, N'a. a', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (14, N'admin', 6, N'a. a', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (15, N'admin', 8, N'a. a', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (16, N'admin', 8, N'ccc. ccc', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (17, N'a', 8, N'toi muon vao vi tri fontend. abc', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (18, N'a', 8, N'b. c', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (19, N'a', 8, N'I manh. manh', N'Pending')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (20, N'a', 8, N'abcz. abcz', N'Approved')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (21, N'a', 7, N'1 nam. dszaaa', N'Approved')
INSERT [dbo].[submission] ([id], [owner], [post_id], [detail], [status]) VALUES (22, N'a', 6, N'a. a', N'Pending')
SET IDENTITY_INSERT [dbo].[submission] OFF
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[submission]  WITH CHECK ADD FOREIGN KEY([owner])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[submission]  WITH CHECK ADD FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([id])
ON DELETE CASCADE
GO
delete