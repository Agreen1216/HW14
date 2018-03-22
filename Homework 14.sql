Create database college
Go 

create table students(
Fname varchar (30)not null,
LName varchar (30) not null, 
StudentID int identity(1,1) not null Constraint [PK_students] PRIMARY KEY CLUSTERED, 
)

create table classes(
Math varchar (11)not null, 
History varchar (12) not null,
Course int, 
Depatment varchar(10)not null, 
Course int identity(1,1) not null Constraint [PK_classes] PRIMARY KEY CLUSTERED, 
StudentID int not null CONSTRAINT FK_students_classes FOREIGN KEY (studentID)     
    REFERENCES dbo.students(studentID),
)


create table Scores(
HomeWork varchar (25)not null,
DueDate varchar(25)not null,
EarnedPoints int,
Scored int identity(1,1) not null Constraint [PK_Scores] PRIMARY KEY CLUSTERED,
Course int not null CONSTRAINT FK_classes_Scores FOREIGN KEY (Course)     
    REFERENCES dbo.classes(Course),
)

