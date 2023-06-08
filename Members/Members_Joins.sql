-- select ?
-- from ?1
-- 	inner join ?2
--     on condition
-- join 할 때 메인 테이블을 먼저 join해야 기술적으로 더 좋다.  
SELECT COUNT(*), T_MEMS.AGE
from members as T_MEMS
	inner join members_login as T_MEMS_LOGIN
	on T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID
GROUP BY T_MEMS.AGE;


SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL
from members as T_MEMS
inner join members_login as T_MEMS_LOGIN
on T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID; -- PK를 이어준다. 