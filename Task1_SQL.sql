create table ACCOUNT
(ACCOUNT_ID number(4),
FIRST_NAME varchar2(30),
LAST_NAME varchar2(50),
COUNTRY varchar2(30));

create sequence SEQ start with 1 increment by 1 nocache nocycle;

alter table account add constraint ACCOUNT_PK primary key(ACCOUNT_ID);

create table CREDIT_CARD
(CARD_ID number(10),
ACCOUNT_ID number(4),
CASH_AMOUNT number(8,2)
);
create sequence SEQ_CREDIT start with 1 increment by 1 nocache nocycle;

alter table CREDIT_CARD add constraint CARD_PK primary key(CARD_ID);
alter table CREDIT_CARD  add constraint ACCOUNT_FK foreign key(ACCOUNT_ID)
references account(ACCOUNT_ID);


create table transaction
(TRANSACTION_ID number(10),
FROM_CARD number(10),
TO_CARD number(10),
AMOUNT number(8,2));


create sequence SEQ_TRANSACT start with 1 increment by 1 nocache nocycle;

ALTER TABLE TRANSACTION ADD CONSTRAINT TRANSACTION_PK PRIMARY KEY(TRANSACTION_ID);

alter table transaction  add constraint FROM_CARD_FK foreign key(FROM_CARD)
references CREDIT_CARD(CARD_ID);
alter table transaction  add constraint to_CARD_FK foreign key(to_CARD)
REFERENCES CREDIT_CARD(CARD_ID);



