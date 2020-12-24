--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOARD" 
   (	"TITLE" VARCHAR2(30 BYTE), 
	"CONTENT1" VARCHAR2(120 BYTE), 
	"USER_ID" VARCHAR2(30 BYTE), 
	"B_DATE" DATE DEFAULT SYSDATE, 
	"ADD_CONTENT" VARCHAR2(120 BYTE), 
	"CONTENT2" VARCHAR2(120 BYTE), 
	"BOARD_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DDIT"."BOARD"."TITLE" IS '제목';
   COMMENT ON COLUMN "DDIT"."BOARD"."CONTENT1" IS '식당문의';
   COMMENT ON COLUMN "DDIT"."BOARD"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "DDIT"."BOARD"."B_DATE" IS '작성시간';
   COMMENT ON COLUMN "DDIT"."BOARD"."ADD_CONTENT" IS '공지사항';
   COMMENT ON COLUMN "DDIT"."BOARD"."CONTENT2" IS '건의사항';
   COMMENT ON COLUMN "DDIT"."BOARD"."BOARD_NO" IS '글고유번호';
REM INSERTING into DDIT.BOARD
SET DEFINE OFF;
Insert into DDIT.BOARD (TITLE,CONTENT1,USER_ID,B_DATE,ADD_CONTENT,CONTENT2,BOARD_NO) values ('식당문의','식당추가좀','user',to_date('2020/12/24','RRRR/MM/DD'),null,null,1);
Insert into DDIT.BOARD (TITLE,CONTENT1,USER_ID,B_DATE,ADD_CONTENT,CONTENT2,BOARD_NO) values ('건의사항',null,'user2',to_date('2020/12/24','RRRR/MM/DD'),null,'db너무 노가다야',2);
Insert into DDIT.BOARD (TITLE,CONTENT1,USER_ID,B_DATE,ADD_CONTENT,CONTENT2,BOARD_NO) values ('필독!',null,'admin',to_date('2020/12/24','RRRR/MM/DD'),'별거없음',null,3);
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."BOARD_PK" ON "DDIT"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DDIT"."BOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
