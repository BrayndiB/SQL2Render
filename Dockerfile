# השתמש בתמונה הרשמית של MySQL
FROM mysql:latest
USER root

# הגדרת משתני סביבה
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

# חשיפת הפורט של MySQL
EXPOSE 3306

