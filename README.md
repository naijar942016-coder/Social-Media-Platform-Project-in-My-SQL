# Social-Media-Platform-Project-in-My-SQL
Designed and implemented a relational social media database using SQL, including users, posts, and follower relationships. Performed data filtering, date-based queries, and NULL handling to extract meaningful insights.
# 📱 Social Media Database Project (SQL)

## 📌 Project Overview

This project is a SQL-based implementation of a simple **Social Media Platform Database**. It includes database creation, table relationships, sample data insertion, and queries to analyze user activity and posts.

---

## 🎯 Objectives

* Design a relational database for a social media platform
* Implement relationships using foreign keys
* Insert and manage user and post data
* Perform data filtering and analysis using SQL queries

---

## 🛠️ Tools & Technologies

* MySQL
* SQL (DDL, DML, Filtering Queries)

---

## 🗄️ Database Schema

### 1️⃣ Users Table

* user_id (Primary Key)
* username
* email

### 2️⃣ Posts Table

* post_id (Primary Key)
* user_id (Foreign Key)
* caption
* posted_at

### 3️⃣ Followers Table

* follower_id (Foreign Key)
* following_id (Foreign Key)
* follow_date

---

## 📥 Raw Data (Inserted Data)

### 🔹 Users Data

```sql
INSERT INTO users (username, email) VALUES
('arun','arun@gmail.com'),
('ajay','ajay@yahoo.com'),
('bala','bala@hotmail.com'),
('david','david@gmail.com'),
('kumar','kumar@yahoo.com');
```

### 🔹 Posts Data

```sql
INSERT INTO posts (user_id, caption) VALUES
(1,'My first post'),
(2,'Learning SQL'),
(3,NULL),
(4,'Hello world'),
(5,'Data analyst journey');
```

---

## 🔍 SQL Queries Used

### 1️⃣ Filter Users (Name starts with 'a')

```sql
SELECT * FROM users
WHERE username LIKE 'a%';
```

### 2️⃣ Posts Between Dates

```sql
SELECT * FROM posts
WHERE posted_at BETWEEN '2024-01-01' AND '2024-12-31';
```

### 3️⃣ Find NULL Captions

```sql
SELECT * FROM posts
WHERE caption IS NULL;
```

### 4️⃣ Filter Emails by Domain

```sql
SELECT * FROM users
WHERE email LIKE '%@gmail.com'
   OR email LIKE '%@hotmail.com'
   OR email LIKE '%@yahoo.com';
```

---

## 📊 Key Insights

* Identified users based on name patterns
* Filtered posts within a specific date range
* Detected missing (NULL) captions
* Categorized users based on email domains

---

## 💡 Learning Outcomes

* Understanding relational database design
* Using primary and foreign keys
* Writing filtering queries using LIKE, BETWEEN, and IS NULL
* Handling real-world data scenarios

---

## 🚀 How to Run the Project

1. Open MySQL Workbench
2. Run the database creation script
3. Insert the sample data
4. Execute queries to analyze results

---

## 📂 Project Structure

```
SocialMedia-SQL-Project/
│
├── socialmedia.sql
├── README.md
```

---

## 🙌 Conclusion

This project demonstrates basic to intermediate SQL skills by simulating a real-world social media database and performing meaningful data analysis.

---

## 📬 Contact

Feel free to reach out for feedback or collaboration!
