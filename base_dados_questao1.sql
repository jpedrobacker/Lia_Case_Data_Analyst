CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    enrolled_at DATE NOT NULL,
    course_id INT NOT NULL
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC NOT NULL,
    school_id INT NOT NULL
);

CREATE TABLE schools (
    school_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- Inserir dados
INSERT INTO schools (name) VALUES ('Escola A'), ('Escola B'), ('Escola C'), ('Escola D');

INSERT INTO courses (name, price, school_id) VALUES
('Data Science', 1000, 1),
('Data Analytics', 1200, 2),
('Machine Learning', 1500, 2),
('Front-end', 800, 3),
('Back-end', 1000, 4),
('Cybersecurity', 1100, 1),
('Cloud Computing', 1300, 2),
('AI Fundamentals', 1400, 1),
('DevOps', 900, 2);

INSERT INTO students (name, enrolled_at, course_id) VALUES
('João', '2025/03/01', 1),
('Maria', '2025/03/01', 1),
('Carlos', '2025/03/02', 4),
('Ana', '2025/03/02', 3),
('Pedro', '2025/03/03', 2),
('Clara', '2025/03/03', 5),
('Lucas', '2025/03/04', 6),
('Fernanda', '2025/03/04', 7),
('Rafael', '2025/03/05', 8),
('Beatriz', '2025/03/05', 9),
('Gabriel', '2025/03/06', 4),
('Sofia', '2025/03/06', 1),
('Miguel', '2025/03/07', 2);

-- DROP TABLE schools;
-- DROP TABLE courses;
-- DROP TABLE students;

