-- criação e remoção de usuario no BD

create user ana identified by '1222';
create user joao@localhost identified by '1222';
create user julia@webloc.com identified by '1222';
select * from mysql.user;

-- removendo usuarios 

drop user joao@localhost;
select * from mysql.user;

-- trocando senha do usuario 

set password for julia@webloc.com = '4441';

-- aplicando privilégios aos usuarios 

grant select, insert, update, delete
on sakila.*
to julia@webloc.com;

show grants for julia@webloc.com;

-- ADMIN

grant all
on sakila.*
to julia@webloc.com;

show grants for julia@webloc.com;

grant all
on *.*
to ana;

show grants for ana;

-- remover acessos e privilégios

create user joao@localhost identified by '1222';

grant select, insert, update, delete
on sakila.*
to joao@localhost;
show grants for joao@localhost;

revoke update
on sakila.*
from joao@localhost;
show grants for joao@localhost;








