
-- Example initialization script for Bots EDI
CREATE TABLE IF NOT EXISTS example_table (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);
