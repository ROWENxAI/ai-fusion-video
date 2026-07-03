-- Fix corrupted Chinese data: UTF-8 bytes were stored as Latin-1 characters
-- CONVERT(CAST(col AS BINARY) USING utf8mb4) reinterprets the raw bytes as UTF-8

UPDATE sys_user SET nickname = CONVERT(CAST(nickname AS BINARY) USING utf8mb4) WHERE id = 1;
UPDATE sys_user SET nickname = CONVERT(CAST(nickname AS BINARY) USING utf8mb4) WHERE nickname LIKE '%ã%';
UPDATE sys_user SET nickname = CONVERT(CAST(nickname AS BINARY) USING utf8mb4) WHERE nickname LIKE '%ç%';
UPDATE sys_user SET nickname = CONVERT(CAST(nickname AS BINARY) USING utf8mb4) WHERE nickname LIKE '%è%';
