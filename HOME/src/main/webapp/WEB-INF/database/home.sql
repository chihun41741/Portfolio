create table userinfo(
	userid varchar(200) not null primary key ,
	password varchar(200) not null ,
	name varchar(200) not null,
	phone varchar(200) not null,
	addr varchar(200),
	email varchar(200),
	type varchar(1) not null, -- 0: 일반고객, 1 : 공인중개사
	mediation_num varchar(200), -- 공인 중개사 등록 번호
	register_num varchar(200) -- 사업자 등록 번호 
);

create table saleinfo( -- 매물등록하는 (방 등록)
    saleno int(11) not null primary key auto_increment, -- 매물 번호
    writer varchar(200),   -- 작성자
    loc varchar(200) not null,   -- 지역
    leasetype int(3) not null,   -- 세 종류. 월세, 전세, 반전세 등
    roomtype int(3) not null,   -- 방종류 원룸 투룸 등등
    monthlyrent int,         -- 월세
    deposit int,         -- 보증금/전세
    startdate date,           -- 최소 입주 가능일자
    duedate date,           -- 최대 거주 가능일자
    comment varchar(200),  -- 코멘트
    filename	VARCHAR(20)	
); 



create table purchaseinfo( -- 매입신청하는 (원하는방 신청)
   purchaseno int(11) not null primary key auto_increment, -- 매입 번호
   writer varchar(200),   -- 작성자
    loc varchar(200) not null,   -- 지역
    leasetype int(3) not null,   -- 세 종류. 월세, 전세, 반전세 등
    roomtype int(3) not null,   -- 방종류 원룸 투룸 등등
    monthlyrent int,         -- 월세
    deposit int,         -- 보증금/전세
    duration varchar(200),		-- 거주기간
    comment varchar(200)  -- 코멘트
);
select * from saleinfo where writer = "test1"	
select * from userinfo;
select * from purchaseinfo;
select * from saleinfo;

UPDATE purchaseinfo SET
writer="test",loc="광주",leasetype='3',roomtype='3',monthlyrent='3',deposit='3',duration="",comment="" 
WHERE purchaseno="1"


desc saleinfo;
