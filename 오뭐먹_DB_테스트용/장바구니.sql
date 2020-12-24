--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "DDIT"."CART" 
   (	"CART_NO" NUMBER(5,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"RES_ID" NUMBER, 
	"FOOD" VARCHAR2(50 BYTE), 
	"QTY" NUMBER, 
	"RESERVE_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DDIT"."CART"."CART_NO" IS '장바구니번호';
   COMMENT ON COLUMN "DDIT"."CART"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "DDIT"."CART"."RES_ID" IS '가게ID';
   COMMENT ON COLUMN "DDIT"."CART"."FOOD" IS '메뉴명';
   COMMENT ON COLUMN "DDIT"."CART"."QTY" IS '수량';
   COMMENT ON COLUMN "DDIT"."CART"."RESERVE_NO" IS '예약번호';
REM INSERTING into DDIT.CART
SET DEFINE OFF;
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (1,'user',1,'생연어 사시미',3,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (2,'user',1,'참치사시미',1,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (3,'user',1,'참치초밥',1,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (4,'user2',1,'타코야끼',2,2);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (5,'user3',1,'치킨가라아게',1,3);
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."CART_PK" ON "DDIT"."CART" ("CART_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "DDIT"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DDIT"."CART" MODIFY ("CART_NO" NOT NULL ENABLE);
