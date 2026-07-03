-- Fix double-encoded Chinese data
-- Data was: UTF-8 bytes -> interpreted as Latin-1 -> re-encoded as UTF-8
-- Fix: decode UTF-8 to Latin-1 bytes, then re-encode as UTF-8

UPDATE sys_user SET nickname = CONVERT(CAST(CONVERT(nickname USING latin1) AS BINARY) USING utf8mb4) WHERE id = 1;
UPDATE afv_system_config SET config_value = CONVERT(CAST(CONVERT(config_value USING latin1) AS BINARY) USING utf8mb4) WHERE config_key = 'site_base_url';
