-- Add new auth_provider column
ALTER TABLE users
ADD COLUMN auth_provider VARCHAR(15);

-- Update users signed up with LOCAL auth method
UPDATE users
SET auth_provider = 'LOCAL'
WHERE auth_provider IS NULL;