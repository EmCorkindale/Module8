-- Active: 1700278504603@@127.0.0.1@3306@exercise3
USE Exercise3;

CREATE TABLE
    Posts(
        postID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(100),
        description VARCHAR(2000),
        image VARCHAR(100),
        userID INT NOT NULL,
        timeID INT NOT NULL,
        FOREIGN KEY (userID) REFERENCES Users(userID),
        FOREIGN KEY (timeID) REFERENCES Time(timeID)
    );

CREATE TABLE
    Comments(
        commentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        commentContent VARCHAR(150),
        userID INT NOT NULL,
        Foreign Key (userID) REFERENCES Users(userID)
    );
CREATE TABLE
    Likes(
        likesID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        userID INT NOT NULL,
        commentID INT NOT NULL,
        postID INT NOT NULL,
        FOREIGN KEY (userID) REFERENCES Users(userID),
        FOREIGN KEY (postID) REFERENCES Posts(postID),
        FOREIGN KEY (commentID) REFERENCES Comments(commentID)
    );