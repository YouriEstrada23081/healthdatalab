CREATE TABLE IF NOT EXISTS patient (
  patient_id SERIAL PRIMARY KEY,
  sex TEXT CHECK (sex IN ('M','F','O')),
  birth_date DATE,
  created_at TIMESTAMP DEFAULT now()
);

INSERT INTO patient (sex, birth_date) VALUES
('F', '1990-05-12'),
('M', '1984-11-03'),
('O', '2001-07-21');
