SELECT * FROM PMA_COMMENT;

SELECT * FROM PMA_SHOP;
delete from PMA_COMMENT;
SELECT * FROM PMA_USER;

SELECT * FROM FORB;

SELECT C.SEQ ,C.PSEQ,C.IDSEQ,C.WDATE,C.SCORE,C.IMG,C.DEL,C.CONTENT,U.NICKNAME FROM PMA_COMMENT C,PMA_USER U WHERE C.IDSEQ=C.IDSEQ AND PSEQ=101;

CREATE SEQUENCE SEQ_FORB
	START WITH 1
	INCREMENT BY 1;

insert into pma_user values(seq_pma_user.nextval,'admin',1,'admin','admin','',0)

INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 51,1, '20170519', 5, 0, 'noimage',0, 'nocontent');


-- PMA_USER AUTH 
-- 1:관리자
-- 3:일반회원
-- 4:우수회원ㅡㅓ
-- 5:특별회원

alter table PMA_COMMENT add content varchar2(500) not null

SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		ORDER BY SEQ ASC
		
INSERT INTO PMA_SHOP VALUES(SEQ_PMA_SHOP.NEXTVAL,'식당3','경상남도 부산','02-1234-5678','도나쓰','등킨도나쓰',0,0,'noimage',0,'강알리 등킨도나쓰')
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 60,1, '20170519', 5, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 60,1, '20170519', 4, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 60,1, '20170519', 3, 0, 'noimage',0, 'nocontent');

INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 61,1, '20170519', 5, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 61,1, '20170519', 4, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 61,1, '20170519', 3, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 61,1, '20170519', 2, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 61,1, '20170519', 1, 0, 'noimage',0, 'nocontent');

INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 62,1, '20170519', 5, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 62,1, '20170519', 4, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 62,1, '20170519', 3, 0, 'noimage',0, 'nocontent');
INSERT INTO PMA_COMMENT VALUES (seq_PMA_COMMENT.NEXTVAL, 62,1, '20170519', 2, 0, 'noimage',0, 'nocontent');

commit

SELECT * FROM PMA_SHOP;		
		
SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		WHERE ADDR LIKE '%�꽌�슱%'
		
SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		ORDER BY SEQ ASC
		
		
commit
delete forb
delete PMA_SHOP 
delete PMA_COMMENT

update PMA_USER set auth=1 where seq = 41;


SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL,CONTENT, SCORES, COUNTS
	FROM PMA_SHOP, (SELECT PSEQ, AVG(SCORE) SCORES, COUNT(SCORE) COUNTS FROM PMA_COMMENT GROUP BY PSEQ) CMT
	WHERE CMT.PSEQ = PMA_SHOP.SEQ
	ORDER BY SEQ ASC

	SELECT PSEQ, AVG(SCORE), count(Score) FROM PMA_COMMENT GROUP BY PSEQ
SELECT PSEQ, AVG(SCORE), count(Score) FROM PMA_COMMENT GROUP BY PSEQ
SELECT PSEQ, AVG(SCORE), count(Score) FROM PMA_COMMENT GROUP BY PSEQ

update pma_shop set imgfile='';



SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL,CONTENT, SCORES, COUNTS
		FROM PMA_SHOP
		LEFT OUTER JOIN (SELECT PSEQ, AVG(SCORE) SCORES, COUNT(SCORE) COUNTS FROM PMA_COMMENT GROUP BY PSEQ) CMT
		ON CMT.PSEQ = PMA_SHOP.SEQ
		WHERE ADDR LIKE '%서울%'
		
insert into forb values(seq_forb.nextval, 1, 0, 61)
insert into forb values(seq_forb.nextval, 1, 1, 62)
insert into forb values(seq_forb.nextval, 1, 2, 60)


delete from pma_shop where seq > 65

		SELECT shop.SEQ , shop.NAME, shop.ADDR, shop.TEL, shop.CATEGORY, shop.MENU, shop.XPOS, shop.YPOS, shop.imgFile, shop.DEL, shop.CONTENT,
		users.ID userid, users.SEQ userseq,
		FORB.forbs
		FROM PMA_SHOP shop, PMA_USER users, FORB 
		WHERE shop.SEQ=60
		AND shop.seq = FORB.shop_seq
		AND FORB.id_seq = users.seq

		SELECT shop.SEQ , shop.NAME, shop.ADDR, shop.TEL, shop.CATEGORY, shop.MENU, shop.XPOS, shop.YPOS, shop.imgFile, shop.DEL, shop.CONTENT,
		users.ID, users.SEQ,
		FORB.forbs
		FROM PMA_SHOP shop, PMA_USER users, FORB 
		WHERE shop.SEQ=60
		AND shop.seq = FORB.shop_seq
		AND FORB.id_seq = users.seq
		
		SELECT shop.SEQ , shop.NAME, shop.ADDR, shop.TEL, shop.CATEGORY, shop.MENU, shop.XPOS, shop.YPOS, shop.imgFile, shop.DEL, shop.CONTENT,
				users.ID userid, users.SEQ userseq,
				FORB.forbs
		FROM PMA_SHOP shop, 
			LEFT OUTER JOIN FORB 
			ON shop.seq = FORB.shop_seq
			LEFT OUTER JOIN PMA_USER users
			ON FORB.id_seq = users.seq
		WHERE shop.SEQ=#{seq}
		
		
		SELECT shop.SEQ , shop.NAME, shop.ADDR, shop.TEL, shop.CATEGORY, shop.MENU, shop.XPOS, shop.YPOS, shop.imgFile, shop.DEL, shop.CONTENT,
				users.ID userid, users.SEQ userseq,
				FORB.forbs
		FROM PMA_SHOP shop
			LEFT OUTER JOIN FORB 
			ON shop.seq = FORB.shop_seq
			LEFT OUTER JOIN PMA_USER users
			ON FORB.id_seq = users.seq
		WHERE shop.SEQ=#{seq}
	
		
		
SELECT p.SEQ ,p.NAME, p.ADDR,p.TEL,p.CATEGORY,p.MENU,p.XPOS,p.YPOS,p.IMGFILE,p.DEL,p.CONTENT, f.FORBS, u.ID
	FROM PMA_SHOP p
	INNER JOIN FORB f
	ON p.seq = f.shop_seq
	INNER JOIN PMA_USER u
	ON f.id_seq = u.seq
	WHERE u.seq = 1		

		
