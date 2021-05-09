DROP SEQUENCE CALENDAR_NO;
DROP TABLE CALENDAR;

CREATE SEQUENCE CALENDAR_NO;

CREATE TABLE CALENDAR(
	CALENDAR_NO NUMBER NOT NULL PRIMARY KEY,
	CALENDAR_ID VARCHAR2(100) NOT NULL REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE,
	CALENDAR_TITLE VARCHAR2(3000) NOT NULL,
	CALENDAR_START VARCHAR2(1000) NOT NULL,
	CALENDAR_END VARCHAR2(1000) NOT NULL,
	CALENDAR_ALLDAY VARCHAR2(5) NOT NULL CHECK(CALENDAR_ALLDAY IN ('Y', 'N'))
);

select * from calendar;

delete from calendar;

select * from calendar where calendar_Start < '2021-04-25T00:00:00+09:00';