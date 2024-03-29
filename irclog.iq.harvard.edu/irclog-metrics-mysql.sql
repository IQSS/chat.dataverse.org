# to upload the sql database
# download the latest mysql dump from http://dvn-vm1.hmdc.harvard.edu/data/mysql/
# mysql -u username -h host -p  < your-sql-dump.sql

# after the last community meeting, so after 2016-07-13, which is equivalent to timestamp > 1468503692

# this will count anons as people

SELECT (SELECT COUNT(distinct nick) as userCount FROM irclog WHERE timestamp > 1468503692) +
	(SELECT COUNT(nick) as userCount FROM irclog WHERE nick LIKE "dataverse-user%" and timestamp > 1468503692) as userCount;


# this will not count lines like "blank joined #dataverse"

SELECT COUNT(line) FROM irclog WHERE line NOT LIKE '%joined #dataverse' and timestamp > 1468503692;

# metrics for Dataverse Community Meeting 2018

SELECT COUNT(line) FROM irclog WHERE line NOT LIKE '%joined #dataverse' and timestamp > 1497326400;

# 358 feels quite high:
SELECT (SELECT COUNT(distinct nick) as userCount FROM irclog WHERE timestamp > 1497326400) + (SELECT COUNT(nick) as userCount FROM irclog WHERE nick LIKE "dataverse-user%" and timestamp > 1497326400) as userCount;
# 76 is more realistic. After this query, duplicates were removed by hand to come up with 76:
SELECT distinct nick FROM irclog WHERE timestamp > 1497326400 order by LOWER(nick);

# metrics for Dataverse Community Meeting 2020

# 23464
SELECT COUNT(line) FROM irclog WHERE line NOT LIKE '%joined #dataverse' and timestamp > 1560657600;

# 426 feels quite high:
SELECT (SELECT COUNT(distinct nick) as userCount FROM irclog WHERE timestamp > 1560657600) + (SELECT COUNT(nick) as userCount FROM irclog WHERE nick LIKE "dataverse-user%" and timestamp > 1560657600) as userCount;
# 98 is more realistic. After this query, duplicates were removed by hand to come up with 98:
SELECT distinct nick FROM irclog WHERE timestamp > 1560657600 order by LOWER(nick);

# metrics for Dataverse Community Meeting 2021

# 10171
SELECT COUNT(line) FROM irclog WHERE line NOT LIKE '%joined #dataverse' and timestamp > 1592280000;

# 384 feels quite high:
SELECT (SELECT COUNT(distinct nick) as userCount FROM irclog WHERE timestamp > 1592280000) + (SELECT COUNT(nick) as userCount FROM irclog WHERE nick LIKE "dataverse-user%" and timestamp > 1592280000) as userCount;
# 82 is more realistic. After this query, duplicates were removed by hand to come up with 82:
SELECT distinct nick FROM irclog WHERE timestamp > 1592280000 order by LOWER(nick);
