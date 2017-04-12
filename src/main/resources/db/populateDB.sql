DELETE FROM user_roles;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password');

INSERT INTO users (name, email, password)
VALUES ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);



DELETE FROM meals;

INSERT INTO meals (userId, dateTime, description, calories)
VALUES (100000, now(), 'Chees', 200);

INSERT INTO meals (userId, dateTime, description, calories)
VALUES (100000, now(), 'Bred', 300);

INSERT INTO meals (userId, dateTime, description, calories)
VALUES (100001, now(), 'Potato', 400);