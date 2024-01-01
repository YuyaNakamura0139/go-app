CREATE TABLE
    sample (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        artist VARCHAR(255) NOT NULL,
        price NUMERIC(10, 2) NOT NULL,
        updated_at TIMESTAMP NOT NULL
    );

CREATE INDEX idx_sample_updated_at ON sample (updated_at);