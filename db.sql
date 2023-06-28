--------------------------------------------------------
--  File created - среда-июня-28-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CITY_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."CITY_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence EKZAMEN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EKZAMEN_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence EKZAM_STUD_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EKZAM_STUD_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence GROUPS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."GROUPS_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence KAFEDRA_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."KAFEDRA_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence PREDMETI_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PREDMETI_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence PREDM_STUD_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."PREDM_STUD_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SCHOOL_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SCHOOL_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Sequence SYSTEMLOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SYSTEMLOG_SEQUENCE"  MINVALUE 0 MAXVALUE 999999999999999999 INCREMENT BY 1 START WITH 80 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "HR"."CITY" 
   (	"ID_CITY" VARCHAR2(9), 
	"NAME_CITY" VARCHAR2(100), 
	 PRIMARY KEY ("ID_CITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table EKZAM_ROW
--------------------------------------------------------

  CREATE TABLE "HR"."EKZAM_ROW" 
   (	"ID_EKZ_ROW" VARCHAR2(9), 
	"MARK_EKZ" VARCHAR2(3), 
	"ID_STUD" VARCHAR2(9), 
	"ID_EKZ" VARCHAR2(9), 
	 PRIMARY KEY ("ID_EKZ_ROW")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("ID_STUD")
	  REFERENCES "HR"."STUDENTS" ("ID_STUD") ENABLE, 
	 FOREIGN KEY ("ID_EKZ")
	  REFERENCES "HR"."EKZAMEN" ("ID_EKZ") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

  CREATE TABLE "HR"."GROUPS" 
   (	"ID_GROUP" VARCHAR2(9), 
	"NUMBER_GROUP" VARCHAR2(100), 
	"ID_STUD" VARCHAR2(9), 
	 PRIMARY KEY ("ID_GROUP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("ID_STUD")
	  REFERENCES "HR"."STUDENTS" ("ID_STUD") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table KAFEDRA
--------------------------------------------------------

  CREATE TABLE "HR"."KAFEDRA" 
   (	"ID_KAFEDRI" VARCHAR2(9), 
	"NAME_KAFEDRI" VARCHAR2(100), 
	 PRIMARY KEY ("ID_KAFEDRI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table PREDM_PREP
--------------------------------------------------------

  CREATE TABLE "HR"."PREDM_PREP" 
   (	"ID_PREDM_PREP" VARCHAR2(9), 
	"ID_PREP" VARCHAR2(9), 
	"ID_PREDM" VARCHAR2(9), 
	 PRIMARY KEY ("ID_PREDM_PREP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("ID_PREP")
	  REFERENCES "HR"."PREPODAVATEL" ("ID_PREP") ENABLE, 
	 FOREIGN KEY ("ID_PREDM")
	  REFERENCES "HR"."PREDMETI" ("ID_PREDM") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table PREPODAVATEL
--------------------------------------------------------

  CREATE TABLE "HR"."PREPODAVATEL" 
   (	"ID_PREP" VARCHAR2(9), 
	"ID_KAFEDRI" VARCHAR2(9), 
	"NAME_PREP" VARCHAR2(100), 
	"SURNAME_PREP" VARCHAR2(100), 
	"OTCHESTVO_PREP" VARCHAR2(100), 
	 PRIMARY KEY ("ID_PREP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("ID_KAFEDRI")
	  REFERENCES "HR"."KAFEDRA" ("ID_KAFEDRI") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "HR"."STUDENTS" 
   (	"ID_STUD" VARCHAR2(9), 
	"SURNAME" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"OTCHESTVO" VARCHAR2(100), 
	"INN" VARCHAR2(12), 
	"SNILS" VARCHAR2(12), 
	"ID_SCHOOL" VARCHAR2(9), 
	"ID_CITY" VARCHAR2(9), 
	 PRIMARY KEY ("ID_STUD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 FOREIGN KEY ("ID_SCHOOL")
	  REFERENCES "HR"."SCHOOL" ("ID_SCHOOL") ENABLE, 
	 FOREIGN KEY ("ID_CITY")
	  REFERENCES "HR"."CITY" ("ID_CITY") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for Table SYSTEM_TABLE
--------------------------------------------------------

  CREATE TABLE "HR"."SYSTEM_TABLE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"TABLE_NAME" NVARCHAR2(50) NOT NULL ENABLE, 
	"CODE" NVARCHAR2(3) NOT NULL ENABLE, 
	 PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
REM INSERTING into HR.CITY
SET DEFINE OFF;
Insert into HR.CITY (ID_CITY,NAME_CITY) values ('1!0000B','Севастополь');
REM INSERTING into HR.EKZAMEN
SET DEFINE OFF;
REM INSERTING into HR.EKZAM_ROW
SET DEFINE OFF;
REM INSERTING into HR.EKZAM_STUD
SET DEFINE OFF;
REM INSERTING into HR.GROUPS
SET DEFINE OFF;
REM INSERTING into HR.INSTITUT
SET DEFINE OFF;
REM INSERTING into HR.KAFEDRA
SET DEFINE OFF;
REM INSERTING into HR.PREDMETI
SET DEFINE OFF;
REM INSERTING into HR.PREDM_PREP
SET DEFINE OFF;
REM INSERTING into HR.PREDM_STUD
SET DEFINE OFF;
REM INSERTING into HR.PREPODAVATEL
SET DEFINE OFF;
REM INSERTING into HR.SCHOOL
SET DEFINE OFF;
Insert into HR.SCHOOL (ID_SCHOOL,NAME_SCHOOL) values ('12!00000','School 39');
Insert into HR.SCHOOL (ID_SCHOOL,NAME_SCHOOL) values ('12!00001','School 22');
REM INSERTING into HR.STUDENTS
SET DEFINE OFF;
REM INSERTING into HR.SYSTEMLOG
SET DEFINE OFF;
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000r','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','SURNAME',null,'Порфирьев','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000s','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','NAME',null,'Арсений','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000t','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','OTCHESTVO',null,'Алексеевич','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000u','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','INN',null,'164450633234','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000v','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','SNILS',null,'16127297160','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000w','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','ID_SCHOOL',null,'12!00000','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000x','13!0000P',to_date('02.06.23','DD.MM.RR'),'INSERT','ID_CITY',null,'1!0000B','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000y','13!0000P',to_date('02.06.23','DD.MM.RR'),'UPDATE','SURNAME','Порфирьев','Порфирьев 2','STUDENTS','HR');
Insert into HR.SYSTEMLOG (ID,TABLE_ID,LOG_DATE,ACTION,EDIT_COLUMN,OLD_VALUE,NEW_VALUE,TABLE_NAME,USERNAME) values ('15!0000z','13!0000P',to_date('02.06.23','DD.MM.RR'),'DELETE',null,'Порфирьев 2',null,'STUDENTS','HR');
REM INSERTING into HR.SYSTEM_TABLE
SET DEFINE OFF;
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('1','CITY','A');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('2','EKZAM_ROW','B');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('3','EKZAM_STUD','C');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('4','EKZAMEN','D');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('5','GROUPS','E');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('6','INSTITUT','F');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('7','KAFEDRA','G');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('8','PREDM_PREP','H');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('9','PREDM_STUD','I');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('10','PREDMETI','J');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('11','PREPODAVATEL','K');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('12','SCHOOL','L');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('13','STUDENTS','M');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('14','UNIVERSITET','N');
Insert into HR.SYSTEM_TABLE (ID,TABLE_NAME,CODE) values ('15','SYSTEMLOG','O');
REM INSERTING into HR.UNIVERSITET
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Trigger INN_CHECK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."INN_CHECK" 
BEFORE  INSERT OR UPDATE OF INN
ON STUDENTS 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
--WHEN (
--new.inn is not null
 --     )
declare lnSumma1 NUMBER;
               lnProv NUMBER;
               lnNamber NUMBER;
               lcInn NVARCHAR2(30);  

TYPE tArrayInn is table of NUMBER index by binary_integer;
       xArrayInn tArrayInn;

TYPE tArrayProv11 is table of NUMBER index by binary_integer;
      xArrayProv11 tArrayProv11;
   
TYPE tArrayProv12 is table of NUMBER index by binary_integer;
      xArrayProv12 tArrayProv12;
   
begin

         
             if trim(:new.INN) is null then
                      raise_application_error(
                      -20001,
                       'Введите код  ИНН (Если у сотрудника нет кода ИНН введите двенадтать нулей) !'
                      );
             else   
             
                lcInn:=  trim(:new.INN);
                if (length(lcInn) = 12)   then    -- Проверяем кол-во символов в значении ИНН 
                     lnProv:= 1;
                      FOR i in 1..12 loop          
                           if substr(lcInn, i, 1) not in ('0','1','2','3','4','5','6','7','8','9') then lnProv:= 0;  --Проверяем что бы не было других символов кроме ('0','1','2','3','4','5','6','7','8','9')
                           end if;
                      end loop;
                   
                      if lnProv = 0 then                     -- Выводим ошибку если хоть один символ не цифра
                           raise_application_error(
                         -20001,
                          'Код  ИНН содержит недопустимые символы !'
                         );
                     end if; 

                      xArrayProv11( 1):= 7;  -- Определяем множетели для 11 контрольного числа
                      xArrayProv11( 2):= 2;
                      xArrayProv11( 3):= 4;
                      xArrayProv11( 4):= 10;
                      xArrayProv11( 5):= 3;
                      xArrayProv11( 6):= 5;
                      xArrayProv11( 7):= 9;
                      xArrayProv11( 8):= 4;
                      xArrayProv11( 9):= 6;
                      xArrayProv11(10):= 8;

                      xArrayProv12( 1):= 3; -- Определяем множетели для 12 контрольного числа
                      xArrayProv12( 2):= 7;
                      xArrayProv12( 3):= 2;
                      xArrayProv12( 4):= 4;
                      xArrayProv12( 5):= 10;
                      xArrayProv12( 6):= 3;
                      xArrayProv12( 7):= 5;
                      xArrayProv12( 8):= 9;
                      xArrayProv12( 9):= 4;
                      xArrayProv12(10):= 6;
                     xArrayProv12(11):= 8; 
                     
                      FOR i in 1..12 loop
                           xArrayInn(i) := to_number(substr(lcInn, i, 1)); --Преабразуем код ИНН из CHAR в NUMBER и пишем в массив
                      end loop;

                      lnSumma1 := 0;
                      FOR i in 1..10 loop                                             -- Находим сумму для проверки контрольного числа (11 цифра)
                          lnSumma1 := lnSumma1 + (xArrayInn(i)  *  xArrayProv11(i));
                      end loop;
                 
                     lnNamber  := lnSumma1 - TRUNC(lnSumma1/11) * 11; --Находим контрольное число кода ИНН (11 цифра)
                     if lnNamber = 10 then lnNamber := 0;
                     end if;

                     if xArrayInn(11) = lnNamber then                  -- Проверяем контрольное число кода ИНН , если числа равны ищем контрольное число (12 цифра)
                             lnSumma1 := 0;
                            FOR i in 1..11 loop                                -- Находим сумму для проверки контрольного числа (12 цифра)
                                lnSumma1:= lnSumma1 + xArrayInn(i) * xArrayProv12(i);
                            end loop;
                         
                            lnNamber   := lnSumma1 - TRUNC(lnSumma1/11) * 11;  --Находим контрольное число кода ИНН (12 цифра)
                            if lnNamber = 10 then lnNamber:= 0;
                            end if;
                      
                            if xArrayInn(12) <> lnNamber then 
                                  raise_application_error(
                                 -20001,
                                 'Не верное значение ИНН(sum12) !'
                                 );
                            end if;

                     else
                          raise_application_error(
                         -20001,
                          'Не верное значение ИНН(sum11) !'
                         );
                     end if;
                else 
                      raise_application_error(
                      -20001,
                      'Не верное значение ИНН(<>12)  !'
                      );
                end if;
              end if;            
 End;
ALTER TRIGGER "HR"."INN_CHECK" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_CITY_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_CITY_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON CITY
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;
  
  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
  
  IF INSERTING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
    VALUES (:NEW.Id_CITY, 'CITY', genprimkey('SYSTEMLOG') ,SYSDATE, action,'NAME_CITY', username, :NEW.NAME_CITY);
    RETURN;
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_CITY, 'CITY', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.NAME_CITY);
    RETURN;
  END IF;  
  
  IF UPDATING THEN
    IF :OLD.NAME_CITY != :NEW.NAME_CITY THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_CITY, 'CITY', genprimkey('SYSTEMLOG'), SYSDATE, action, 'NAME_CITY', :OLD.NAME_CITY, :NEW.NAME_CITY, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_CITY_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_EKZAM_ROW_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_EKZAM_ROW_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON EKZAM_ROW
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;
  
  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
  
  IF INSERTING THEN
    IF :NEW.MARK_EKZ IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG') ,SYSDATE, action,'MARK_EKZ', username, :NEW.MARK_EKZ);
    END IF;
    
    IF :NEW.ID_STUD IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_STUD', username, :NEW.ID_STUD);
    END IF;
    
    IF :NEW.ID_EKZ IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_EKZ', username, :NEW.ID_EKZ);
    END IF;
    
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.MARK_EKZ);
  END IF;
  
  IF UPDATING THEN
    IF :OLD.MARK_EKZ != :NEW.MARK_EKZ THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG'), SYSDATE, action, 'MARK_EKZ', :OLD.MARK_EKZ, :NEW.MARK_EKZ, username);
    END IF;

    IF :OLD.ID_STUD != :NEW.ID_STUD THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_STUD', :OLD.ID_STUD, :NEW.ID_STUD, username);
    END IF;

    IF :OLD.ID_EKZ != :NEW.ID_EKZ THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_ekz_row, 'EKZAM_ROW', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_EKZ', :OLD.ID_EKZ, :NEW.ID_EKZ, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_EKZAM_ROW_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_GROUPS_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_GROUPS_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON GROUPS
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;

  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
  
  IF INSERTING THEN
    IF :NEW.NUMBER_GROUP IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_GROUP, 'GROUPS', genprimkey('SYSTEMLOG') ,SYSDATE, action,'NUMBER_GROUP', username, :NEW.NUMBER_GROUP);
    END IF;
    
    IF :NEW.ID_STUD IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_GROUP, 'GROUPS', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_STUD', username, :NEW.ID_STUD);
    END IF;
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_GROUP, 'GROUPS', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.NUMBER_GROUP);
    RETURN;
  END IF;  

  IF UPDATING THEN
    IF :OLD.NUMBER_GROUP != :NEW.NUMBER_GROUP THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_GROUP, 'GROUPS', genprimkey('SYSTEMLOG'), SYSDATE, action, 'NUMBER_GROUP', :OLD.NUMBER_GROUP, :NEW.NUMBER_GROUP, username);
    END IF;

    IF :OLD.ID_STUD != :NEW.ID_STUD THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_GROUP, 'GROUPS', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_STUD', :OLD.ID_STUD, :NEW.ID_STUD, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_GROUPS_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_KAFEDRA_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_KAFEDRA_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON KAFEDRA
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;
  
  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
  
  IF INSERTING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
    VALUES (:NEW.Id_KAFEDRI, 'KAFEDRA', genprimkey('SYSTEMLOG') ,SYSDATE, action, 'NAME_KAFEDRI', username, :NEW.NAME_KAFEDRI);
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_KAFEDRI, 'KAFEDRA', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.NAME_KAFEDRI);
    RETURN;
  END IF;  

  IF UPDATING THEN
    IF :OLD.NAME_KAFEDRI != :NEW.NAME_KAFEDRI THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_KAFEDRI, 'KAFEDRA', genprimkey('SYSTEMLOG'), SYSDATE, action, 'NAME_KAFEDRI', :OLD.NAME_KAFEDRI, :NEW.NAME_KAFEDRI, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_KAFEDRA_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_PREDM_PREP_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_PREDM_PREP_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON PREDM_PREP
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;

  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
  
  IF INSERTING THEN
    IF :NEW.ID_PREP IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_PREDM_PREP, 'PREDM_PREP', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_PREP', username, :NEW.ID_PREP);
    END IF;  
    
    IF :NEW.ID_PREDM IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_PREDM_PREP, 'PREDM_PREP', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_PREDM', username, :NEW.ID_PREDM);
    END IF; 
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_PREDM_PREP, 'PREDM_PREP', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.ID_PREP);
    RETURN;
  END IF;  

  IF UPDATING THEN
    IF :OLD.ID_PREP != :NEW.ID_PREP THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_PREDM_PREP, 'PREDM_PREP', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_PREP', :OLD.ID_PREP, :NEW.ID_PREP, username);
    END IF;

    IF :OLD.ID_PREDM != :NEW.ID_PREDM THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_PREDM_PREP, 'PREDM_PREP', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_PREDM', :OLD.ID_PREDM, :NEW.ID_PREDM, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_PREDM_PREP_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_PREPODAVATEL_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_PREPODAVATEL_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON PREPODAVATEL
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;

  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;

  IF INSERTING THEN
    IF :NEW.ID_KAFEDRI IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG') ,SYSDATE, action,'ID_KAFEDRI', username, :NEW.ID_KAFEDRI);
    END IF;
    
    IF :NEW.NAME_PREP IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG') ,SYSDATE, action,'NAME_PREP', username, :NEW.NAME_PREP);
    END IF;
    
    IF :NEW.SURNAME_PREP IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG') ,SYSDATE, action,'SURNAME_PREP', username, :NEW.SURNAME_PREP);
    END IF;
    
    IF :NEW.OTCHESTVO_PREP IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG') ,SYSDATE, action,'OTCHESTVO_PREP', username, :NEW.OTCHESTVO_PREP);
    END IF;
    
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG'), SYSDATE, action, username, :OLD.NAME_PREP);
    RETURN;
  END IF;

  IF UPDATING THEN
    IF :OLD.ID_KAFEDRI != :NEW.ID_KAFEDRI THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG'), SYSDATE, action, 'ID_KAFEDRI', :OLD.ID_KAFEDRI, :NEW.ID_KAFEDRI, username);
    END IF;

    IF :OLD.NAME_PREP != :NEW.NAME_PREP THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG'), SYSDATE, action, 'NAME_PREP', :OLD.NAME_PREP, :NEW.NAME_PREP, username);
    END IF;

    IF :OLD.SURNAME_PREP != :NEW.SURNAME_PREP THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG'), SYSDATE, action, 'SURNAME_PREP', :OLD.SURNAME_PREP, :NEW.SURNAME_PREP, username);
    END IF;
    
    IF :OLD.OTCHESTVO_PREP != :NEW.NAME_PREP THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.ID_PREP, 'PREPODOVATEL', genprimkey('SYSTEMLOG'), SYSDATE, action, 'OTCHESTVO_PREP', :OLD.OTCHESTVO_PREP, :NEW.OTCHESTVO_PREP, username);
    END IF;

  END IF;
END;
ALTER TRIGGER "HR"."TRIGGER_PREPODAVATEL_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Trigger TRIGGER_STUDENTS_LOGI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_STUDENTS_LOGI" 
AFTER INSERT OR UPDATE OR DELETE ON STUDENTS
FOR EACH ROW
DECLARE
  action VARCHAR2(20);
  username VARCHAR2(100);
BEGIN
  IF INSERTING THEN
    action := 'INSERT';
  ELSIF UPDATING THEN
    action := 'UPDATE';
  ELSIF DELETING THEN
    action := 'DELETE';
  END IF;
    
  -- Получение информации о текущем пользователе
  SELECT USER INTO username FROM DUAL;
    
  IF INSERTING THEN
    IF :NEW.SURNAME IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'SURNAME', username, :NEW.SURNAME);
    END IF;
    
    IF :NEW.NAME IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'NAME', username, :NEW.NAME);
    END IF;
    
    IF :NEW.OTCHESTVO IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'OTCHESTVO', username, :NEW.OTCHESTVO);
    END IF;
    
    IF :NEW.INN IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'INN', username, :NEW.INN);
    END IF;
    
    IF :NEW.SNILS IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'SNILS', username, :NEW.SNILS);
    END IF;
    
    IF :NEW.ID_SCHOOL IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'ID_SCHOOL', username, :NEW.ID_SCHOOL);
    END IF;
    
    IF :NEW.ID_CITY IS NOT NULL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, username, new_value)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG') ,SYSDATE, action, 'ID_CITY', username, :NEW.ID_CITY);
    END IF;
    
  END IF;  
    
  If DELETING THEN
  INSERT INTO systemlog (table_id, table_name, id, log_date, action, username, old_value)
    VALUES (:OLD.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, username, :OLD.SURNAME);
    RETURN;
  END IF;  
    
  IF UPDATING THEN
    IF :OLD.SURNAME != :NEW.SURNAME THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'SURNAME', :OLD.SURNAME, :NEW.SURNAME, username);
    END IF;

    IF :OLD.NAME != :NEW.NAME THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'NAME', :OLD.NAME, :NEW.NAME, username);
    END IF;

    IF :OLD.OTCHESTVO != :NEW.OTCHESTVO THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'OTCHESTVO', :OLD.OTCHESTVO, :NEW.OTCHESTVO, username);
    END IF;

    IF :OLD.INN != :NEW.INN THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'INN', :OLD.INN, :NEW.INN, username);
    END IF;

    IF :OLD.SNILS != :NEW.SNILS THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'SNILS', :OLD.SNILS, :NEW.SNILS, username);
    END IF;

    IF :OLD.ID_SCHOOL != :NEW.ID_SCHOOL THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'ID_SCHOOL', :OLD.ID_SCHOOL, :NEW.ID_SCHOOL, username);
    END IF;

    IF :OLD.ID_CITY != :NEW.ID_CITY THEN
      INSERT INTO systemlog (table_id, table_name, id, log_date, action, edit_column, old_value, new_value, username)
      VALUES (:NEW.Id_stud, 'STUDENTS', genPrimKey('SYSTEMLOG'), SYSDATE, action, 'ID_CITY', :OLD.ID_CITY, :NEW.ID_CITY, username);
    END IF;
  END IF;
  
END;
ALTER TRIGGER "HR"."TRIGGER_STUDENTS_LOGI" ENABLE
--------------------------------------------------------
--  DDL for Function GENPRIMKEY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."GENPRIMKEY" (pTABLE_NAME   NVARCHAR2) return NVARCHAR2 is
  xResult   NVARCHAR2(10);
  xNextVal  NUMBER;
  xSQL      VARCHAR2(1000);

  lcRegistr1 NVARCHAR2(1);
  lcRegistr2 NVARCHAR2(1);
  lcRegistr3 NVARCHAR2(1);
  lcRegistr4 NVARCHAR2(1);
  lcRegistr5 NVARCHAR2(1);

  lnRegistr1 NUMBER;
  lnRegistr2 NUMBER;
  lnRegistr3 NUMBER;
  lnRegistr4 NUMBER;
  lnRegistr5 NUMBER;

   cursor cGet(pTABLE_NAME  NVARCHAR2) is
     select ID
       from SYSTEM_TABLE
      where lower(TABLE_NAME) = lower(pTABLE_NAME);

   rGet        cGet%ROWTYPE;   
   eExtend     exception;
   eObjNull    exception;
   eNextVal    exception;

   TYPE tArray is table of NVARCHAR2(1) index by binary_integer;
   xArrayLV tArray;

begin
  open cGet(pTABLE_NAME);
  fetch cGet into rGet;
  close cGet;

  if (rGet.ID is null) then
    raise eObjNull;
  end if;

  xSQL:='select '||upper(replace(trim(pTABLE_NAME),'_'))||'_SEQUENCE.nextval from dual';

  execute immediate xSQL into xNextVal;

  if (xNextVal is null) then
    raise eNextVal;
  end if;

  if (62 * 62 * 62 * 62 * 62) < xNextVal then
   raise eExtend;
  end if;

  --инициализация  
  lcRegistr1:= '0';
  lcRegistr2:= '0';
  lcRegistr3:= '0';
  lcRegistr4:= '0';
  lcRegistr5:= '0';

  lnRegistr1:= 0;
  lnRegistr2:= 0;
  lnRegistr3:= 0;
  lnRegistr4:= 0;
  lnRegistr5:= 0;


  xArrayLV( 1):= '0';
  xArrayLV( 2):= '1';
  xArrayLV( 3):= '2';
  xArrayLV( 4):= '3';
  xArrayLV( 5):= '4';
  xArrayLV( 6):= '5';
  xArrayLV( 7):= '6';
  xArrayLV( 8):= '7';
  xArrayLV( 9):= '8';
  xArrayLV(10):= '9';
  xArrayLV(11):= 'A';
  xArrayLV(12):= 'B';
  xArrayLV(13):= 'C';
  xArrayLV(14):= 'D';
  xArrayLV(15):= 'E';
  xArrayLV(16):= 'F';
  xArrayLV(17):= 'G';
  xArrayLV(18):= 'H';
  xArrayLV(19):= 'I';
  xArrayLV(20):= 'J';
  xArrayLV(21):= 'K';
  xArrayLV(22):= 'L';
  xArrayLV(23):= 'M';
  xArrayLV(24):= 'N';
  xArrayLV(25):= 'O';
  xArrayLV(26):= 'P';
  xArrayLV(27):= 'Q';
  xArrayLV(28):= 'R';
  xArrayLV(29):= 'S';
  xArrayLV(30):= 'T';
  xArrayLV(31):= 'U';
  xArrayLV(32):= 'V';
  xArrayLV(33):= 'W';
  xArrayLV(34):= 'X';
  xArrayLV(35):= 'Y';
  xArrayLV(36):= 'Z';
  xArrayLV(37):= 'a';
  xArrayLV(38):= 'b';
  xArrayLV(39):= 'c';
  xArrayLV(40):= 'd';
  xArrayLV(41):= 'e';
  xArrayLV(42):= 'f';
  xArrayLV(43):= 'g';
  xArrayLV(44):= 'h';
  xArrayLV(45):= 'i';
  xArrayLV(46):= 'j';
  xArrayLV(47):= 'k';
  xArrayLV(48):= 'l';
  xArrayLV(49):= 'm';
  xArrayLV(50):= 'n';
  xArrayLV(51):= 'o';
  xArrayLV(52):= 'p';
  xArrayLV(53):= 'q';
  xArrayLV(54):= 'r';
  xArrayLV(55):= 's';
  xArrayLV(56):= 't';
  xArrayLV(57):= 'u';
  xArrayLV(58):= 'v';
  xArrayLV(59):= 'w';
  xArrayLV(60):= 'x';
  xArrayLV(61):= 'y';
  xArrayLV(62):= 'z';

  --смотрим первый регистр
  IF (1 * 62 * 62 * 62 * 62) < xNextVal then
    FOR i in 1..62 loop
      IF (i * 62 * 62 * 62 * 62) < xNextVal  then
        lnRegistr1:= i * 62 * 62 * 62 * 62;
        lcRegistr1:= xArrayLV(i + 1);
      end if;
    end loop;
  END IF;

  xNextVal:= xNextVal - lnRegistr1; 

  --смотрим второй регистр
  IF (1 * 62 * 62 * 62 ) < xNextVal then
    FOR i in 1..62 loop
      IF (i * 62 * 62 * 62) < xNextVal then 
          lnRegistr2:= i * 62 * 62 * 62;
          lcRegistr2:= xArrayLV(i + 1);
      END IF;
    end loop;
  END IF; 

  xNextVal:= xNextVal - lnRegistr2; 

  --смотрим третий регистр
  IF (1 * 62 * 62) < xNextVal then
    FOR i in 1..61 loop
      IF (i * 62 * 62) < xNextVal then 
        lnRegistr3:= i * 62 * 62; 
        lcRegistr3:= xArrayLV(i + 1);
      END IF;
    end loop;
  END IF; 

  xNextVal:= xNextVal - lnRegistr3; 

  --смотрим четвертый регистр
  IF (1 * 62) < xNextVal then
    FOR i in 1..61 loop 
      IF (i * 62) < xNextVal then
        lnRegistr4:= i * 62;
        lcRegistr4:= xArrayLV(i + 1);
      END IF;
    end loop;
  END IF;

  xNextVal:= xNextVal - lnRegistr4; 

  --смотрим пятый регистр
  IF xNextVal BETWEEN 1 and 62 then
    lcRegistr5:= xArrayLV(xNextVal);
  END IF; 

  xResult:= lcRegistr1 || lcRegistr2 || lcRegistr3 || lcRegistr4 || lcRegistr5;

  return rGet.ID||'!'||xResult;

  exception
    when eNextVal then
      raise_application_error(-20000,'Не получен следующий ID из последовательности! Обратитесь к разработчику программы!');
      return '';
    when eObjNull then
      raise_application_error(-20000,'ID таблицы не найдено в SYSTEM_TABLE! Обратитесь к разработчику программы!');
      return '';
    when eExtend then
      raise_application_error(-20000,'Не возможно приращение кода! Обратитесь к разработчику программы!');
      return '';
    when others then
      raise_application_error(-20000,sqlerrm);
      return '';
end genPrimKey;
--------------------------------------------------------
--  Constraints for Table SYSTEMLOG
--------------------------------------------------------

  ALTER TABLE "HR"."SYSTEMLOG" ADD CONSTRAINT "SYSTEM_LOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("ID" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("TABLE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("LOG_DATE" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("ACTION" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("TABLE_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEMLOG" MODIFY ("USERNAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table SYSTEM_TABLE
--------------------------------------------------------

  ALTER TABLE "HR"."SYSTEM_TABLE" MODIFY ("ID" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEM_TABLE" MODIFY ("TABLE_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEM_TABLE" MODIFY ("CODE" NOT NULL ENABLE)
 
  ALTER TABLE "HR"."SYSTEM_TABLE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table EKZAM_ROW
--------------------------------------------------------

  ALTER TABLE "HR"."EKZAM_ROW" ADD PRIMARY KEY ("ID_EKZ_ROW")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table PREDM_PREP
--------------------------------------------------------

  ALTER TABLE "HR"."PREDM_PREP" ADD PRIMARY KEY ("ID_PREDM_PREP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table EKZAMEN
--------------------------------------------------------

  ALTER TABLE "HR"."EKZAMEN" ADD PRIMARY KEY ("ID_EKZ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table INSTITUT
--------------------------------------------------------

  ALTER TABLE "HR"."INSTITUT" ADD PRIMARY KEY ("ID_INSTITUTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table PREDMETI
--------------------------------------------------------

  ALTER TABLE "HR"."PREDMETI" ADD PRIMARY KEY ("ID_PREDM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Constraints for Table SCHOOL
--------------------------------------------------------

  ALTER TABLE "HR"."SCHOOL" ADD PRIMARY KEY ("ID_SCHOOL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table EKZAM_ROW
--------------------------------------------------------

  ALTER TABLE "HR"."EKZAM_ROW" ADD FOREIGN KEY ("ID_STUD")
	  REFERENCES "HR"."STUDENTS" ("ID_STUD") ENABLE
 
  ALTER TABLE "HR"."EKZAM_ROW" ADD FOREIGN KEY ("ID_EKZ")
	  REFERENCES "HR"."EKZAMEN" ("ID_EKZ") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table GROUPS
--------------------------------------------------------

  ALTER TABLE "HR"."GROUPS" ADD FOREIGN KEY ("ID_STUD")
	  REFERENCES "HR"."STUDENTS" ("ID_STUD") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PREDMETI
--------------------------------------------------------

  ALTER TABLE "HR"."PREDMETI" ADD FOREIGN KEY ("ID_KAFEDRI")
	  REFERENCES "HR"."KAFEDRA" ("ID_KAFEDRI") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PREDM_STUD
--------------------------------------------------------

  ALTER TABLE "HR"."PREDM_STUD" ADD FOREIGN KEY ("ID_STUD")
	  REFERENCES "HR"."STUDENTS" ("ID_STUD") ENABLE
 
  ALTER TABLE "HR"."PREDM_STUD" ADD FOREIGN KEY ("ID_PREDM")
	  REFERENCES "HR"."PREDMETI" ("ID_PREDM") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table STUDENTS
--------------------------------------------------------

  ALTER TABLE "HR"."STUDENTS" ADD FOREIGN KEY ("ID_SCHOOL")
	  REFERENCES "HR"."SCHOOL" ("ID_SCHOOL") ENABLE
 
  ALTER TABLE "HR"."STUDENTS" ADD FOREIGN KEY ("ID_CITY")
	  REFERENCES "HR"."CITY" ("ID_CITY") ENABLE
