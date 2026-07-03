-- V1.0.7.0.4: Fix Chinese encoding
-- Root cause: MySQL connection charset was latin1, causing double-encoding.
-- Data from V1.0.7.0.3 may have been corrupted to '?'. Fix by writing correct bytes.

-- Set admin nickname using hex literal to bypass charset issues entirely
UPDATE sys_user SET nickname = _utf8mb4 0xE8B685E7BAA7E7AEA1E79086E59198 WHERE id = 1;