delete from studentteachers
where id in (
	select id from studentteachers
);

DBCC CHECKIDENT (studentteachers, RESEED, 0);




delete from teachers
where id in (
	select id from teachers
);

DBCC CHECKIDENT (teachers, RESEED, 0);




delete from studentaddresses
where id in (
	select id from studentaddresses
);

DBCC CHECKIDENT (studentaddresses, RESEED, 0);




delete from deadlines
where id in (
	select id from deadlines
);

DBCC CHECKIDENT (deadlines, RESEED, 0);




delete from students
where id in (
	select id from students
);

DBCC CHECKIDENT (students, RESEED, 0);







SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT into [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [RefreshToken]) 
VALUES 
(1, N'email2@gmail.com', N'EMAIL2@GMAIL.COM', N'email2@gmail.com', N'EMAIL2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP/t3UCvEXziMgFa1Wl+NmjT++DY+aeXMInPioMuE0TW461KN4cswg6c7igVd8moTQ==', N'6T7OXA3FUWOMJLV67EVBD46NQHAE42YZ', N'fa81fa66-8d29-4699-84be-d7570feff00b', NULL, 0, 0, NULL, 1, 0, N'OiVK3Pd7aZpprFxkSzcDBtCEX1FIt8zSdLTUsKTOPmY='),
(2, N'email3@gmail.com', N'EMAIL3@GMAIL.COM', N'email3@gmail.com', N'EMAIL3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEee1VnWxA3mHE1+zN9UANSKiBShPX+dTr2fsuqOQn/MpA++b7ukVy+3piZSfix+eA==', N'DJGIOQQVXY4K2ZA2VUQQDWXM6XBSKWTQ', N'03887533-59bd-43e4-95fa-0d5acd4e1139', NULL, 0, 0, NULL, 1, 0, N'99dKqWkFhxV9SB45gXFf8wigo1WLViIjB4uvrWi39qQ=');
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF





insert into students(name, major, email)
values
('Michael', 'Math', 'email2@gmail.com'),
('Franklin', 'History', NULL),
('Trevor', 'Anatomy', NULL),
('Richard', 'Geography', NULL),
('Kanye', 'Music', NULL),
('Daniel', 'History', NULL),
('Bryan', 'Music', NULL),
('John', 'Physics', NULL),
('Alex', 'Math', NULL),
('William', 'Geography', NULL),
('Michael', 'Physics', NULL),
('Steven', 'Chemistry', NULL),
('Bill', 'Social Sciences', NULL),
('Jeff', 'Humanities', NULL),
('Allan', 'Arts', NULL),
('Rachael', 'Math', NULL),
('Jessica', 'Humanities', NULL),
('Kim', 'Chemistry', NULL),
('Michelle', 'Social Sciences', NULL),
('Ronald', 'Math', NULL),
('Donald', 'Business', NULL);




insert into studentaddresses(city, country, studentid)
values
('Bucharest', 'Romania', 1),
('Madrid', 'Spain', 2),
('London', 'UK', 3),
('Paris', 'France', 4),
('Berlin', 'Germany', 5),
('Warsaw', 'Poland', 6),
('Moscow', 'Russia', 7),
('Kiev', 'Ukraine', 8),
('Stockholm', 'Sweden', 9),
('Oslo', 'Norway', 10);





insert into deadlines(title, daysleft, studentid)
values
('Math Project', 15, 1),
('Geography Homework', 3, 1),
('Physics Exam', 14, 1),
('Algebra Test', 42, 1),
('Math Project', 3, 1),
('Job Interview', 7, 1),
('Olympiad Enrollment', 5, 1),
('Math Olympiad', 76, 1),
('Volunteering Event', 19, 1),
('Math Exam', 45, 1),
('Job Event', 17, 1);




insert into teachers(name, course)
values
('Nicolas', 'Intro To Computer Science'),
('Jimmy', 'Phyilosophy'),
('Jamey', 'Geopolitics'),
('Randy', 'Advanced Algorithms'),
('Roman', 'Polynomial Probabilities'),
('Seth', 'Quantum Physics');




insert into studentteachers(studentid, teacherid)
values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 5);




