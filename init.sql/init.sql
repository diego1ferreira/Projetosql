CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  content TEXT,
  pt_id INT REFERENCEosS posts(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT NOW()
);
