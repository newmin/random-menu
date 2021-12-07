drop table history;
drop table category;
drop table menu;
drop sequence menu_mcd_seq;
drop sequence catlist_ccd_seq;

create TABLE menu(
    mcd number(3),      --음식코드  / 삭제될 경우 목록에 출력은 안되고
    menu varchar2(30),  --음식명
    way varchar2(30),   --매장/방문/포장 등
    status char(1),     --삭제된 코드는 D 부여
    constraint MENU_mcd_pk primary key(mcd)
);

create table catlist(
    ccd number(3),
    cat varchar2(15),   --카테고리
    constraint category_ccd_pk primary key(ccd)
);

create table category(
    ccd number(3),
    mcd number(3),
    constraint category_cat_pk primary key(ccd,mcd),
    constraint category_mcd_fk foreign key(mcd) references menu(mcd),
    constraint catlist_ccd_fk foreign key(ccd) references catlist(ccd)
);

create table history(
    hcd number(7),  --2112030 형태의 index
    hisdate timestamp default SYSTIMESTAMP,
    mcd number(3),
    constraint HISTORY_hcd_pk primary key(hcd),
    constraint HISTORY_mcd_fk FOREIGN key(mcd) references menu(mcd)
);

create sequence menu_mcd_seq;
create sequence catlist_ccd_seq;

