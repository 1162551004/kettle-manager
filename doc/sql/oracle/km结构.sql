--------------------------------------------
-- Export file for user KM                --
-- Created by jinju on 2016/8/3, 10:08:30 --
--------------------------------------------

spool km�ṹ.log

prompt
prompt Creating table EOVA_BUTTON
prompt ==========================
prompt
create table EOVA_BUTTON
(
  ID        NUMBER(10) not null,
  MENU_CODE VARCHAR2(255) not null,
  NAME      VARCHAR2(255) not null,
  ICON      VARCHAR2(255),
  UI        VARCHAR2(255),
  BS        VARCHAR2(500),
  ORDER_NUM NUMBER(10) default '0',
  GROUP_NUM NUMBER(10) default '0',
  IS_BASE   CHAR(1) default '0',
  IS_DEL    CHAR(1) default '0'
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_BUTTON.MENU_CODE
  is '�˵�Code';
comment on column EOVA_BUTTON.NAME
  is '��ť����';
comment on column EOVA_BUTTON.ICON
  is 'ͼ��';
comment on column EOVA_BUTTON.UI
  is '��ťUI·��';
comment on column EOVA_BUTTON.BS
  is '��ťBS·��';
comment on column EOVA_BUTTON.ORDER_NUM
  is '�����';
comment on column EOVA_BUTTON.GROUP_NUM
  is '�����';
comment on column EOVA_BUTTON.IS_BASE
  is '�Ƿ��������';
comment on column EOVA_BUTTON.IS_DEL
  is '�Ƿ�ɾ��';
alter table EOVA_BUTTON
  add constraint PK_EOVA_BUTTON primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_DICT
prompt ========================
prompt
create table EOVA_DICT
(
  ID     NUMBER(10) not null,
  VALUE  VARCHAR2(50) not null,
  NAME   VARCHAR2(50) not null,
  OBJECT VARCHAR2(50) not null,
  FIELD  VARCHAR2(50) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table EOVA_DICT
  add constraint PK_EOVA_DICT primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_FIELD
prompt =========================
prompt
create table EOVA_FIELD
(
  ID          NUMBER(10) not null,
  OBJECT_CODE VARCHAR2(50) not null,
  PO_CODE     VARCHAR2(255),
  EN          VARCHAR2(50) not null,
  CN          VARCHAR2(50) not null,
  IS_AUTO     CHAR(1) default '0',
  DATA_TYPE   VARCHAR2(20) default 'string',
  TYPE        VARCHAR2(10) default '�ı���',
  ORDER_NUM   NUMBER(10) default '9',
  EXP         VARCHAR2(800),
  IS_QUERY    CHAR(1) default '0',
  IS_SHOW     CHAR(1) default '1',
  IS_DISABLE  CHAR(1) default '0',
  IS_ORDER    CHAR(1) default '1',
  IS_ADD      CHAR(1) default '1',
  IS_UPDATE   CHAR(1) default '1',
  IS_EDIT     CHAR(1) default '1',
  IS_REQUIRED CHAR(1) default '1',
  IS_MULTIPLE CHAR(1) default '0',
  PLACEHOLDER VARCHAR2(255),
  VALIDATOR   VARCHAR2(255),
  DEFAULTER   VARCHAR2(255),
  FORMATTER   VARCHAR2(2000),
  WIDTH       NUMBER(10) default '130',
  HEIGHT      NUMBER(10) default '20',
  CONFIG      VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_FIELD.ID
  is 'ID';
comment on column EOVA_FIELD.PO_CODE
  is '�־û�����';
comment on column EOVA_FIELD.EN
  is 'Ӣ����';
comment on column EOVA_FIELD.CN
  is '������';
comment on column EOVA_FIELD.IS_AUTO
  is '�����Ƿ�������';
comment on column EOVA_FIELD.DATA_TYPE
  is '��������';
comment on column EOVA_FIELD.TYPE
  is '�ؼ�����';
comment on column EOVA_FIELD.ORDER_NUM
  is '��������';
comment on column EOVA_FIELD.EXP
  is '�ؼ����ʽ';
comment on column EOVA_FIELD.IS_QUERY
  is '�Ƿ�ɲ�ѯ';
comment on column EOVA_FIELD.IS_SHOW
  is '�Ƿ����ʾ';
comment on column EOVA_FIELD.IS_DISABLE
  is '�Ƿ����';
comment on column EOVA_FIELD.IS_ORDER
  is '�Ƿ������';
comment on column EOVA_FIELD.IS_ADD
  is '�Ƿ�������ֶ�';
comment on column EOVA_FIELD.IS_UPDATE
  is '�Ƿ���޸��ֶ�';
comment on column EOVA_FIELD.IS_EDIT
  is '�Ƿ�ɱ༭�ֶ�';
comment on column EOVA_FIELD.IS_REQUIRED
  is '�Ƿ����';
comment on column EOVA_FIELD.IS_MULTIPLE
  is '�Ƿ��ѡ��';
comment on column EOVA_FIELD.PLACEHOLDER
  is '������ʾ';
comment on column EOVA_FIELD.VALIDATOR
  is 'UIУ����ʽ';
comment on column EOVA_FIELD.DEFAULTER
  is 'Ĭ��ֵ���ʽ';
comment on column EOVA_FIELD.FORMATTER
  is '��ʽ����';
comment on column EOVA_FIELD.WIDTH
  is '�ؼ����';
comment on column EOVA_FIELD.HEIGHT
  is '�ؼ��߶�';
comment on column EOVA_FIELD.CONFIG
  is '��չ����';
alter table EOVA_FIELD
  add constraint PK_EOVA_FIELD primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_LOG
prompt =======================
prompt
create table EOVA_LOG
(
  ID      NUMBER(10) not null,
  USER_ID NUMBER(10) not null,
  TYPE    NUMBER(10) not null,
  IP      VARCHAR2(255) not null,
  INFO    VARCHAR2(500)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_LOG.USER_ID
  is '�����û�';
comment on column EOVA_LOG.TYPE
  is '��־����';
comment on column EOVA_LOG.IP
  is '����IP';
comment on column EOVA_LOG.INFO
  is '��������';
alter table EOVA_LOG
  add constraint PK_EOVA_LOG primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_MENU
prompt ========================
prompt
create table EOVA_MENU
(
  ID            NUMBER(10) not null,
  CODE          VARCHAR2(255) not null,
  NAME          VARCHAR2(100) not null,
  TYPE          VARCHAR2(20) not null,
  ICON          VARCHAR2(255),
  ORDER_NUM     NUMBER(10) default '0',
  PARENT_ID     NUMBER(10) default '0',
  IS_COLLAPSE   CHAR(1) default '0',
  BIZ_INTERCEPT VARCHAR2(255),
  URL           VARCHAR2(255),
  CONFIG        VARCHAR2(500),
  DIY_JS        VARCHAR2(255),
  IS_DEL        CHAR(1) default '0',
  FILTER        VARCHAR2(500)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_MENU.CODE
  is '����';
comment on column EOVA_MENU.NAME
  is '����';
comment on column EOVA_MENU.TYPE
  is '�˵�����';
comment on column EOVA_MENU.ICON
  is 'ͼ��';
comment on column EOVA_MENU.ORDER_NUM
  is '���';
comment on column EOVA_MENU.PARENT_ID
  is '���ڵ�';
comment on column EOVA_MENU.IS_COLLAPSE
  is '�Ƿ��۵�';
comment on column EOVA_MENU.BIZ_INTERCEPT
  is '�Զ���ҵ��������';
comment on column EOVA_MENU.URL
  is '�Զ���URL';
comment on column EOVA_MENU.CONFIG
  is '�˵�����JSON';
comment on column EOVA_MENU.DIY_JS
  is '����JS�ļ�';
comment on column EOVA_MENU.IS_DEL
  is '�Ƿ�����';
comment on column EOVA_MENU.FILTER
  is '��ʼ���ݹ�������';
alter table EOVA_MENU
  add constraint PK_EOVA_MENU primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_MENU_OBJECT
prompt ===============================
prompt
create table EOVA_MENU_OBJECT
(
  ID          NUMBER(10) not null,
  MENU_CODE   VARCHAR2(50) not null,
  OBJECT_CODE VARCHAR2(50) not null,
  INDEXS      NUMBER(10) default '0'
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EOVA_MENU_OBJECT.MENU_CODE
  is '�˵�����';
comment on column EOVA_MENU_OBJECT.OBJECT_CODE
  is '�������';
comment on column EOVA_MENU_OBJECT.INDEXS
  is '��������';
alter table EOVA_MENU_OBJECT
  add constraint PK_EOVA_MENU_OBJECT primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EOVA_OBJECT
prompt ==========================
prompt
create table EOVA_OBJECT
(
  ID            NUMBER(10) not null,
  CODE          VARCHAR2(100) not null,
  NAME          VARCHAR2(100) not null,
  VIEW_NAME     VARCHAR2(255),
  TABLE_NAME    VARCHAR2(255),
  PK_NAME       VARCHAR2(50) not null,
  DATA_SOURCE   VARCHAR2(50) default 'main',
  IS_SINGLE     CHAR(1) default '1',
  IS_CELLEDIT   CHAR(1) default '0',
  IS_SHOW_NUM   CHAR(1) default '1',
  IS_FIRST_LOAD CHAR(1) default '1',
  FILTER        VARCHAR2(500),
  DEFAULT_ORDER VARCHAR2(255),
  DIY_CARD      VARCHAR2(255),
  DIY_JS        VARCHAR2(255),
  BIZ_INTERCEPT VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_OBJECT.CODE
  is '�������';
comment on column EOVA_OBJECT.NAME
  is '��������';
comment on column EOVA_OBJECT.VIEW_NAME
  is '��ѯ������ͼ';
comment on column EOVA_OBJECT.TABLE_NAME
  is '������������';
comment on column EOVA_OBJECT.PK_NAME
  is '����';
comment on column EOVA_OBJECT.DATA_SOURCE
  is '����Դ';
comment on column EOVA_OBJECT.IS_SINGLE
  is '�Ƿ�ѡ';
comment on column EOVA_OBJECT.IS_CELLEDIT
  is '�Ƿ�����ڱ༭';
comment on column EOVA_OBJECT.IS_SHOW_NUM
  is '�Ƿ���ʾ�к�';
comment on column EOVA_OBJECT.IS_FIRST_LOAD
  is '�Ƿ��ʼ��������';
comment on column EOVA_OBJECT.FILTER
  is '��ʼ���ݹ�������';
comment on column EOVA_OBJECT.DEFAULT_ORDER
  is 'Ĭ�������ֶ�(desc)';
comment on column EOVA_OBJECT.DIY_CARD
  is '�Զ��忨Ƭ���';
comment on column EOVA_OBJECT.DIY_JS
  is '����JS�ļ�';
comment on column EOVA_OBJECT.BIZ_INTERCEPT
  is '�Զ���ҵ��������';
alter table EOVA_OBJECT
  add constraint PK_EOVA_OBJECT primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_ROLE
prompt ========================
prompt
create table EOVA_ROLE
(
  ID   NUMBER(10) not null,
  NAME VARCHAR2(255) not null,
  INFO VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_ROLE.NAME
  is '��ɫ��';
comment on column EOVA_ROLE.INFO
  is '��ɫ����';
alter table EOVA_ROLE
  add constraint PK_EOVA_ROLE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_ROLE_BTN
prompt ============================
prompt
create table EOVA_ROLE_BTN
(
  ID  NUMBER(10) not null,
  RID NUMBER(10) not null,
  BID NUMBER(10) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_ROLE_BTN.RID
  is '��ɫ';
comment on column EOVA_ROLE_BTN.BID
  is '����';
alter table EOVA_ROLE_BTN
  add constraint PK_EOVA_ROLE_BTN primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_TASK
prompt ========================
prompt
create table EOVA_TASK
(
  ID    NUMBER(10) not null,
  STATE NUMBER(10) default '0' not null,
  NAME  VARCHAR2(255) not null,
  EXP   VARCHAR2(50) not null,
  CLASS VARCHAR2(255) not null,
  INFO  VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_TASK.STATE
  is '״̬��0=ֹͣ��1=����';
comment on column EOVA_TASK.NAME
  is '����';
comment on column EOVA_TASK.EXP
  is '���ʽ';
comment on column EOVA_TASK.CLASS
  is 'ʵ����';
comment on column EOVA_TASK.INFO
  is '˵��';
alter table EOVA_TASK
  add constraint PK_EOVA_TASK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_USER
prompt ========================
prompt
create table EOVA_USER
(
  ID        NUMBER(10) not null,
  LOGIN_ID  VARCHAR2(30) not null,
  LOGIN_PWD VARCHAR2(50) not null,
  NICKNAME  VARCHAR2(255),
  RID       NUMBER(10) default '0',
  HOTEL_ID  NUMBER(10) default '0'
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_USER.LOGIN_ID
  is '�ʺ�';
comment on column EOVA_USER.LOGIN_PWD
  is '����';
comment on column EOVA_USER.NICKNAME
  is '������';
comment on column EOVA_USER.RID
  is '��ɫID';
comment on column EOVA_USER.HOTEL_ID
  is '�����Ƶ�';
alter table EOVA_USER
  add constraint PK_EOVA_USER primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EOVA_WIDGET
prompt ==========================
prompt
create table EOVA_WIDGET
(
  ID          NUMBER(10) not null,
  TYPE        NUMBER(10) default '1' not null,
  VALUE       VARCHAR2(50) not null,
  NAME        VARCHAR2(50) not null,
  VERSION     VARCHAR2(5) default '1.0',
  PATH        VARCHAR2(50),
  DESCRIPTION VARCHAR2(3000),
  CONFIG      VARCHAR2(3000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column EOVA_WIDGET.TYPE
  is '�ؼ����ͣ�1=EOVA�ؼ���2=DIY�ؼ�';
comment on column EOVA_WIDGET.VALUE
  is '�ؼ�ֵ';
comment on column EOVA_WIDGET.NAME
  is '����';
comment on column EOVA_WIDGET.VERSION
  is '�汾��';
comment on column EOVA_WIDGET.PATH
  is '·��';
comment on column EOVA_WIDGET.DESCRIPTION
  is '����';
comment on column EOVA_WIDGET.CONFIG
  is '�ؼ�������ϢJSON';
alter table EOVA_WIDGET
  add constraint PK_EOVA_WIDGET primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table METL_CHINESE_SPELL
prompt =================================
prompt
create table METL_CHINESE_SPELL
(
  OID          VARCHAR2(32) default sys_guid() not null,
  OCODE        VARCHAR2(100),
  ONAME        VARCHAR2(100),
  ODESCRIBE    VARCHAR2(500),
  OORDER       NUMBER,
  SIMPLE_SPELL VARCHAR2(200),
  FULL_SPELL   VARCHAR2(500),
  CREATE_DATE  VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  UPDATE_DATE  VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  CREATE_USER  VARCHAR2(100),
  UPDATE_USER  VARCHAR2(100),
  EXPAND       VARCHAR2(2000),
  IS_DISABLE   VARCHAR2(10) default '0',
  FLAG1        VARCHAR2(200),
  FLAG2        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 3M
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table METL_CHINESE_SPELL
  is '���ݿ�';
comment on column METL_CHINESE_SPELL.OID
  is '��������';
comment on column METL_CHINESE_SPELL.OCODE
  is '�������';
comment on column METL_CHINESE_SPELL.ONAME
  is '��������';
comment on column METL_CHINESE_SPELL.ODESCRIBE
  is '��������';
comment on column METL_CHINESE_SPELL.OORDER
  is '��������';
comment on column METL_CHINESE_SPELL.SIMPLE_SPELL
  is '�����ƴ';
comment on column METL_CHINESE_SPELL.FULL_SPELL
  is '����ȫƴ';
comment on column METL_CHINESE_SPELL.CREATE_DATE
  is '����ʱ��';
comment on column METL_CHINESE_SPELL.UPDATE_DATE
  is '����ʱ��';
comment on column METL_CHINESE_SPELL.CREATE_USER
  is '������';
comment on column METL_CHINESE_SPELL.UPDATE_USER
  is '������';
comment on column METL_CHINESE_SPELL.EXPAND
  is '��չ��Ϣ';
comment on column METL_CHINESE_SPELL.IS_DISABLE
  is '�Ƿ����';
comment on column METL_CHINESE_SPELL.FLAG1
  is '����1';
comment on column METL_CHINESE_SPELL.FLAG2
  is '����2';
alter table METL_CHINESE_SPELL
  add constraint PK_METL_CHINESE_SPELL primary key (OID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_C_SPELL_CREATE_DATE on METL_CHINESE_SPELL (CREATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_C_SPELL_ONAME on METL_CHINESE_SPELL (ONAME)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_C_SPELL_UPDATE_DATE on METL_CHINESE_SPELL (UPDATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table METL_DATABASE
prompt ============================
prompt
create table METL_DATABASE
(
  OID               VARCHAR2(32) default sys_guid() not null,
  OCODE             VARCHAR2(100),
  ONAME             VARCHAR2(100),
  ODESCRIBE         VARCHAR2(500),
  OORDER            NUMBER,
  SIMPLE_SPELL      VARCHAR2(200),
  FULL_SPELL        VARCHAR2(500),
  CREATE_DATE       VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  UPDATE_DATE       VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  CREATE_USER       VARCHAR2(100),
  UPDATE_USER       VARCHAR2(100),
  EXPAND            VARCHAR2(2000),
  IS_DISABLE        VARCHAR2(10) default '0',
  FLAG1             VARCHAR2(200),
  FLAG2             VARCHAR2(200),
  ORGANIZATION_NAME VARCHAR2(500),
  ORGANIZATION_CODE VARCHAR2(100),
  TYPE              VARCHAR2(100),
  ACCESS_WAY        VARCHAR2(100),
  JNDI              VARCHAR2(100),
  URL               VARCHAR2(1000),
  USERNAME          VARCHAR2(100),
  PASSWORD          VARCHAR2(32),
  STATUS            VARCHAR2(100) default 0,
  VALIDATION_QUERY  VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table METL_DATABASE
  is '���ݿ�';
comment on column METL_DATABASE.OID
  is '��������';
comment on column METL_DATABASE.OCODE
  is '�������';
comment on column METL_DATABASE.ONAME
  is '��������';
comment on column METL_DATABASE.ODESCRIBE
  is '��������';
comment on column METL_DATABASE.OORDER
  is '��������';
comment on column METL_DATABASE.SIMPLE_SPELL
  is '�����ƴ';
comment on column METL_DATABASE.FULL_SPELL
  is '����ȫƴ';
comment on column METL_DATABASE.CREATE_DATE
  is '����ʱ��';
comment on column METL_DATABASE.UPDATE_DATE
  is '����ʱ��';
comment on column METL_DATABASE.CREATE_USER
  is '������';
comment on column METL_DATABASE.UPDATE_USER
  is '������';
comment on column METL_DATABASE.EXPAND
  is '��չ��Ϣ';
comment on column METL_DATABASE.IS_DISABLE
  is '�Ƿ����';
comment on column METL_DATABASE.FLAG1
  is '����1';
comment on column METL_DATABASE.FLAG2
  is '����2';
comment on column METL_DATABASE.ORGANIZATION_NAME
  is '��������';
comment on column METL_DATABASE.ORGANIZATION_CODE
  is '��������';
comment on column METL_DATABASE.TYPE
  is '���ݿ�����';
comment on column METL_DATABASE.ACCESS_WAY
  is '���ʷ�ʽ';
comment on column METL_DATABASE.JNDI
  is 'JNDI����';
comment on column METL_DATABASE.URL
  is '���Ӵ�';
comment on column METL_DATABASE.USERNAME
  is '�û���';
comment on column METL_DATABASE.PASSWORD
  is '����';
comment on column METL_DATABASE.STATUS
  is '״̬';
comment on column METL_DATABASE.VALIDATION_QUERY
  is '�������';
alter table METL_DATABASE
  add constraint PK_METL_DATABASE primary key (OID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_DATABASE_CREATE_DATE on METL_DATABASE (CREATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_DATABASE_UPDATE_DATE on METL_DATABASE (UPDATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table METL_TASK_TIMING
prompt ===============================
prompt
create table METL_TASK_TIMING
(
  OID              VARCHAR2(32) default sys_guid() not null,
  OCODE            VARCHAR2(100),
  ONAME            VARCHAR2(100),
  ODESCRIBE        VARCHAR2(500),
  OORDER           NUMBER,
  SIMPLE_SPELL     VARCHAR2(200),
  FULL_SPELL       VARCHAR2(500),
  CREATE_DATE      VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  UPDATE_DATE      VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  CREATE_USER      VARCHAR2(100),
  UPDATE_USER      VARCHAR2(100),
  EXPAND           VARCHAR2(2000),
  IS_DISABLE       VARCHAR2(10) default '0',
  FLAG1            VARCHAR2(200),
  FLAG2            VARCHAR2(200),
  IS_REPEAT        VARCHAR2(10),
  SCHEDULER_TYPE   VARCHAR2(100),
  INTERVAL_SECONDS NUMBER,
  INTERVAL_MINUTES NUMBER,
  HOUR             NUMBER,
  MINUTES          NUMBER,
  WEEK_DAY         VARCHAR2(100),
  DAY_OF_MONTH     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table METL_TASK_TIMING
  is '����ʱ';
comment on column METL_TASK_TIMING.OID
  is '��������';
comment on column METL_TASK_TIMING.OCODE
  is '�������';
comment on column METL_TASK_TIMING.ONAME
  is '��������';
comment on column METL_TASK_TIMING.ODESCRIBE
  is '��������';
comment on column METL_TASK_TIMING.OORDER
  is '��������';
comment on column METL_TASK_TIMING.SIMPLE_SPELL
  is '�����ƴ';
comment on column METL_TASK_TIMING.FULL_SPELL
  is '����ȫƴ';
comment on column METL_TASK_TIMING.CREATE_DATE
  is '����ʱ��';
comment on column METL_TASK_TIMING.UPDATE_DATE
  is '����ʱ��';
comment on column METL_TASK_TIMING.CREATE_USER
  is '������';
comment on column METL_TASK_TIMING.UPDATE_USER
  is '������';
comment on column METL_TASK_TIMING.EXPAND
  is '��չ��Ϣ';
comment on column METL_TASK_TIMING.IS_DISABLE
  is '�Ƿ����';
comment on column METL_TASK_TIMING.FLAG1
  is '����1';
comment on column METL_TASK_TIMING.FLAG2
  is '����2';
comment on column METL_TASK_TIMING.IS_REPEAT
  is '�����ظ�';
comment on column METL_TASK_TIMING.SCHEDULER_TYPE
  is '��ʱ����';
comment on column METL_TASK_TIMING.INTERVAL_SECONDS
  is '����';
comment on column METL_TASK_TIMING.INTERVAL_MINUTES
  is '�ּ��';
comment on column METL_TASK_TIMING.HOUR
  is 'ÿ�켸ʱ';
comment on column METL_TASK_TIMING.MINUTES
  is 'ÿ�켸��';
comment on column METL_TASK_TIMING.WEEK_DAY
  is 'ÿ���ܼ�';
comment on column METL_TASK_TIMING.DAY_OF_MONTH
  is 'ÿ�¼���';
alter table METL_TASK_TIMING
  add constraint PK_METL_TASK_TIMING primary key (OID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_T_TIMING_CREATE_DATE on METL_TASK_TIMING (CREATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_T_TIMING_UPDATE_DATE on METL_TASK_TIMING (UPDATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table METL_UNIFY_DICT
prompt ==============================
prompt
create table METL_UNIFY_DICT
(
  OID           VARCHAR2(32) default sys_guid() not null,
  OCODE         VARCHAR2(100),
  ONAME         VARCHAR2(100),
  ODESCRIBE     VARCHAR2(500),
  OORDER        NUMBER,
  SIMPLE_SPELL  VARCHAR2(200),
  FULL_SPELL    VARCHAR2(500),
  CREATE_DATE   VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  UPDATE_DATE   VARCHAR2(14) default to_char(sysdate,'yyyymmddhh24miss'),
  CREATE_USER   VARCHAR2(100),
  UPDATE_USER   VARCHAR2(100),
  EXPAND        VARCHAR2(4000) default '{}',
  IS_DISABLE    VARCHAR2(10) default '0',
  FLAG1         VARCHAR2(200),
  FLAG2         VARCHAR2(200),
  DICT_CATEGORY VARCHAR2(100),
  BELONG_OBJ    VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table METL_UNIFY_DICT
  is 'ͳһ�ֵ�';
comment on column METL_UNIFY_DICT.OID
  is '��������';
comment on column METL_UNIFY_DICT.OCODE
  is '�������';
comment on column METL_UNIFY_DICT.ONAME
  is '��������';
comment on column METL_UNIFY_DICT.ODESCRIBE
  is '��������';
comment on column METL_UNIFY_DICT.OORDER
  is '��������';
comment on column METL_UNIFY_DICT.SIMPLE_SPELL
  is '�����ƴ';
comment on column METL_UNIFY_DICT.FULL_SPELL
  is '����ȫƴ';
comment on column METL_UNIFY_DICT.CREATE_DATE
  is '����ʱ��';
comment on column METL_UNIFY_DICT.UPDATE_DATE
  is '����ʱ��';
comment on column METL_UNIFY_DICT.CREATE_USER
  is '������';
comment on column METL_UNIFY_DICT.UPDATE_USER
  is '������';
comment on column METL_UNIFY_DICT.EXPAND
  is '��չ��Ϣ';
comment on column METL_UNIFY_DICT.IS_DISABLE
  is '�Ƿ����';
comment on column METL_UNIFY_DICT.FLAG1
  is '����1';
comment on column METL_UNIFY_DICT.FLAG2
  is '����2';
comment on column METL_UNIFY_DICT.DICT_CATEGORY
  is '�ֵ����';
comment on column METL_UNIFY_DICT.BELONG_OBJ
  is '��������';
alter table METL_UNIFY_DICT
  add constraint PK_METL_UNIFY_DICT primary key (OID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_U_DICT_CREATE_DATE on METL_UNIFY_DICT (CREATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_M_U_DICT_UPDATE_DATE on METL_UNIFY_DICT (UPDATE_DATE)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence SEQ_EOVA_BUTTON
prompt =================================
prompt
create sequence SEQ_EOVA_BUTTON
minvalue 1
maxvalue 9999999999
start with 11023
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_DICT
prompt ===============================
prompt
create sequence SEQ_EOVA_DICT
minvalue 1
maxvalue 9999999999
start with 1051
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_FIELD
prompt ================================
prompt
create sequence SEQ_EOVA_FIELD
minvalue 1
maxvalue 9999999999
start with 21671
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_LOG
prompt ==============================
prompt
create sequence SEQ_EOVA_LOG
minvalue 1
maxvalue 9999999999
start with 3405
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_MENU
prompt ===============================
prompt
create sequence SEQ_EOVA_MENU
minvalue 1
maxvalue 9999999999
start with 10303
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_MENU_OBJECT
prompt ======================================
prompt
create sequence SEQ_EOVA_MENU_OBJECT
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_OBJECT
prompt =================================
prompt
create sequence SEQ_EOVA_OBJECT
minvalue 1
maxvalue 9999999999
start with 10263
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_ROLE
prompt ===============================
prompt
create sequence SEQ_EOVA_ROLE
minvalue 1
maxvalue 9999999999
start with 51
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_ROLE_BTN
prompt ===================================
prompt
create sequence SEQ_EOVA_ROLE_BTN
minvalue 1
maxvalue 9999999999
start with 2871
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_TASK
prompt ===============================
prompt
create sequence SEQ_EOVA_TASK
minvalue 1
maxvalue 9999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_USER
prompt ===============================
prompt
create sequence SEQ_EOVA_USER
minvalue 1
maxvalue 9999999999
start with 51
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_EOVA_WIDGET
prompt =================================
prompt
create sequence SEQ_EOVA_WIDGET
minvalue 1
maxvalue 9999999999
start with 151
increment by 1
cache 20;

prompt
prompt Creating function F_GET_FULL_SPELL
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION F_GET_FULL_SPELL
(
    p_chinese IN VARCHAR2 DEFAULT NULL
)
RETURN VARCHAR2
AS
  v_result VARCHAR2(500);
  v_Len    INTEGER;
  v_Temp   INTEGER;
  v_TempSpell VARCHAR2(100);
  v_chinese  VARCHAR2(150);
BEGIN
  v_result := '';
  v_Temp := 1;
  v_Len := length(replace(replace(Trim(p_chinese),'��',''),' ',''));---ȥ��ȫ�ǿո񡢰�ǿո�
  WHILE(v_Temp <= v_Len)
  LOOP
     BEGIN
        v_chinese := substr(replace(replace(Trim(p_chinese),'��',''),' ',''),v_Temp,1);
        v_TempSpell := '';
        FOR REC IN (SELECT t.full_spell FROM metl_chinese_spell t WHERE t.oname = v_chinese and t.is_disable='0' and rownum<2)
        LOOP
          v_TempSpell := REC.full_spell;
        END LOOP;
        v_result := v_result || nvl(v_TempSpell,v_chinese);
        v_Temp   := v_Temp + 1;
      END;
  END LOOP;
  Return Upper(Trim(v_result));
END
/*
��ȡ�����ַ���������ȫƴ
*/
;
/

prompt
prompt Creating function F_GET_SIMPLE_SPELL
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION F_GET_SIMPLE_SPELL
(
    p_chinese IN VARCHAR2 DEFAULT NULL
)
RETURN VARCHAR2
AS
  v_result VARCHAR2(500);
  v_Len    INTEGER;
  v_Temp   INTEGER;
  v_TempSpell VARCHAR2(100);
  v_chinese  VARCHAR2(150);
BEGIN
  v_result := '';
  v_Temp := 1;
  v_Len := length(replace(replace(Trim(p_chinese),'��',''),' ',''));---ȥ��ȫ�ǿո񡢰�ǿո�
  WHILE(v_Temp <= v_Len)
  LOOP
     BEGIN
        v_chinese := substr(replace(replace(Trim(p_chinese),'��',''),' ',''),v_Temp,1);
        v_TempSpell := '';
        FOR REC IN (SELECT t.simple_spell FROM metl_chinese_spell t WHERE t.oname = v_chinese and t.is_disable='0' and rownum<2)
        LOOP
          v_TempSpell := REC.simple_spell;
        END LOOP;
        v_result := v_result || nvl(v_TempSpell,v_chinese);
        v_Temp   := v_Temp + 1;
      END;
  END LOOP;
  Return Upper(Trim(v_result));
END
/*
��ȡ�����ַ��������ļ�ƴ
*/
;
/

prompt
prompt Creating function MD5
prompt =====================
prompt
CREATE OR REPLACE FUNCTION MD5(in_str IN VARCHAR2)
RETURN VARCHAR2
IS
retval varchar2(32);
BEGIN
retval := utl_raw.cast_to_raw(DBMS_OBFUSCATION_TOOLKIT.MD5(INPUT_STRING => in_str));
--dbms_output.put_line('<'||in_str||'>��MD5:'||retval);
RETURN retval;
END;
/


spool off
