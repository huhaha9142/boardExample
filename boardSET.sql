SHOW DATABASES;

# 계정 생성
create user 'testPark'@'localhost' identified BY '1234';

# 데이터 베이스 생성
create database board;

# 데이터 베이스에 대한 권한 설정
grant all privileges on board.* to 'testPark'@'localhost';

COMMIT;

SELECT * FROM mysql.user;

USE board;

# TABLE 생성
create table tbl_board(
  bno int not null auto_increment,
  title varchar(50) not null,
  content text not null,
  writer varchar(30) not null,
  regDate timestamp not null default now(),
  viewCnt int default 0,
  primary key(bno)
);

commit;

select * from tbl_board;