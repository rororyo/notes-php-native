-- create table user
CREATE TABLE IF NOT EXISTS user (
  id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(255) NOT NULL
) 
-- create table note
CREATE TABLE IF NOT EXISTS note (
  id_note INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)

-- create table user_note
CREATE TABLE IF NOT EXISTS user_note (
  id_user INT NOT NULL,
  id_note INT NOT NULL,
  FOREIGN KEY (id_user) REFERENCES user(id_user),
  FOREIGN KEY (id_note) REFERENCES note(id_note)
)