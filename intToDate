DELIMITER $$
CREATE FUNCTION FormatTime(sec INTEGER)
RETURNS TEXT DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;

    SET days = FLOOR(sec / 86400);
    SET sec = sec MOD 86400;

    SET hours = FLOOR(sec / 3600);
    SET sec = sec MOD 3600;

    SET minutes = FLOOR(sec / 60);
    SET seconds = sec MOD 60;

    RETURN CONCAT_WS(' ', days, IF(days = 1, 'day', 'days'),
                      hours, IF(hours = 1, 'hour', 'hours'),
                      minutes, IF(minutes = 1, 'minute', 'minutes'),
                      seconds, IF(seconds = 1, 'second', 'seconds'));
END$$
DELIMITER ;
