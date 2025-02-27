-- יצירת מסד נתונים
CREATE DATABASE UsersDB;
GO

-- שימוש במסד הנתונים החדש
USE UsersDB;
GO

-- יצירת טבלה לדוגמה
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
GO

-- הכנסת נתונים לדוגמה
INSERT INTO Users (Username, Email) VALUES ('user1', 'user1@example.com'), ('user2', 'user2@example.com');
GO
