SELECT * FROM PMA_COMMENT;

SELECT * FROM PMA_SHOP;

SELECT * FROM PMA_USER;
insert into pma_user values(seq_pma_user.nextval,'admin',1,'admin','admin','',0)

-- PMA_USER AUTH 
-- 1:愿�由ъ옄 / 3:�궗�슜�옄

alter table PMA_COMMENT add content varchar2(500) not null

SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		ORDER BY SEQ ASC
		
INSERT INTO PMA_SHOP(SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL) 
		VALUES(SEQ_PMA_SHOP.NEXTVAL,'援��쉶�쓽�궗�떦 踰꾧굅�궧2','�꽌�슱�떆 �쁺�벑�룷援�2','02-1234-5678','�뙣�뒪�듃�뫖�뱶','���띁',0,0,'',0)
		
commit

SELECT * FROM PMA_SHOP;		
		
SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		WHERE ADDR LIKE '%�꽌�슱%'
		
SELECT SEQ ,NAME, ADDR,TEL,CATEGORY,MENU,XPOS,YPOS,IMGFILE,DEL
		FROM PMA_SHOP
		ORDER BY SEQ ASC
		
		
commit


update PMA_USER set auth=1 where seq = 41;
		