-- select ?
-- from ?1
-- 	inner join ?2
--     on condition

SELECT COUNT(*), T_MEMS.AGE
from members as T_MEMS
	inner join members_login as T_MEMS_LOGIN
	on T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID
GROUP BY T_MEMS.AGE;


SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL
from members as T_MEMS
inner join members_login as T_MEMS_LOGIN
on T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID; -- PK를 이어준다. 