
--
-- Update the default settings to be in sync with the initial settings
--

UPDATE `settings_k8055` SET SET `enabled`=0 WHERE `id`='0';

UPDATE `settings_plugwise` SET SET `enabled`=0 WHERE `id`='0';

--
-- Finally update to 1.0.011
--

LOCK TABLES version WRITE;
INSERT INTO version VALUES (56,'1.0.011');
UNLOCK TABLES;

