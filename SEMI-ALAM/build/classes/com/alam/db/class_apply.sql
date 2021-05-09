
DROP TABLE CLASS_APPLY;

CREATE SEQUENCE CLASSAPPLYNOSEQ;

CREATE TABLE CLASS_APPLY(
	CLASS_APPLY_NO NUMBER NOT NULL PRIMARY KEY,
	CLASS_APPLY_CATEGORY NUMBER NOT NULL,
	CLASS_APPLY_ID VARCHAR2(30) NOT NULL,
	CLASS_APPLY_TITLE VARCHAR2(3000) NOT NULL,
	CLASS_APPLY_CONTENT VARCHAR2(3000) NOT NULL,
	CLASS_APPLY_HOW VARCHAR2(30) NOT NULL,
	CLASS_APPLY_LOC VARCHAR2(30),
	CLASS_APPLY_DATE DATE NOT NULL,
	CONSTRAINT CLASS_APPLY_ID_FK FOREIGN KEY(CLASS_APPLY_ID) REFERENCES MEMBER(MEMBER_ID),
	CONSTRAINT CLASS_APPLY_CATEGORY_FK FOREIGN KEY(CLASS_APPLY_CATEGORY) REFERENCES CATEGORY(CATEGORY_NUM)
);

ALTER TABLE CLASS_APPLY
DROP CONSTRAINT CLASS_APPLY_ID_FK;

ALTER TABLE CLASS_APPLY ADD CONSTRAINT CLASS_APPLY_ID_FK FOREIGN KEY (CLASS_APPLY_ID)
REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE;