
create table ACCCBENEFIT
(
  POLICYNO      VARCHAR2(30) not null,
  CUSTOMERNO    VARCHAR2(60) not null,
  POLNO         VARCHAR2(30) not null,
  BNFTYPE       VARCHAR2(1) not null,
  BNFNO         INTEGER not null,
  ORDERNO       VARCHAR2(10) not null,
  NAME          VARCHAR2(60),
  GENDER        VARCHAR2(1),
  BIRTHDAY      DATE,
  CRITTYPE      VARCHAR2(2),
  CRITCODE      VARCHAR2(30),
  RLSHTOINSURED VARCHAR2(2),
  PROPORTION    NUMBER(3,2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
alter table ACCCBENEFIT
  add constraint XPKACCCBENEFIT primary key (POLICYNO, CUSTOMERNO, POLNO, BNFTYPE, BNFNO, ORDERNO);


create table ACCCCOVERAGE
(
  POLICYNO         VARCHAR2(30) not null,
  CUSTOMERNO       VARCHAR2(60) not null,
  POLNO            VARCHAR2(30) not null,
  LIABILITYCODE    VARCHAR2(60) not null,
  LIABILITYNAME    VARCHAR2(200),
  EFFECTIVEDATE    DATE,
  EXPIREDATE       DATE,
  LIABILITYSTATUS  VARCHAR2(2),
  LIABILITYPREMIUM NUMBER(20,2),
  LIMITAMOUNT      NUMBER(20,2),
  WAITINGPERIOD    NUMBER(8),
  REMARK           VARCHAR2(600),
  MAKEDATE         DATE,
  MAKETIME         VARCHAR2(8),
  MODIFYDATE       DATE,
  MODIFYTIME       VARCHAR2(8)
)
;
alter table ACCCCOVERAGE
  add constraint XPKACCCCOVERAGE primary key (POLICYNO, CUSTOMERNO, POLNO, LIABILITYCODE);


create table ACCCINSURED
(
  POLICYNO          VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(60) not null,
  NAME              VARCHAR2(60),
  GENDER            VARCHAR2(1),
  BIRTHDAY          DATE,
  CRITTYPE          VARCHAR2(2),
  CRITCODE          VARCHAR2(30),
  MOBILE            VARCHAR2(20),
  OFFERSTATUS       VARCHAR2(2),
  SUBSTARTDATE      DATE,
  SUBENDDATE        DATE,
  APPOINTEDBENEFIT  VARCHAR2(1),
  INSUREDTYPE       VARCHAR2(2),
  SNOFMAININSURED   VARCHAR2(30),
  RLSHTOMAININSURED VARCHAR2(2),
  INSUREDPREMIUM    NUMBER(20,2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table ACCCINSURED
  add constraint XPKACCCINSURED primary key (POLICYNO, CUSTOMERNO);


create table ACCCPERSONPH
(
  POLICYNO      VARCHAR2(30) not null,
  APPNTNO       VARCHAR2(30) not null,
  NAME          VARCHAR2(120),
  GENDER        VARCHAR2(1),
  BIRTHDAY      DATE,
  CRITTYPE      VARCHAR2(2),
  CRITCODE      VARCHAR2(30),
  RLSHTOINSURED VARCHAR2(2),
  MOBILE        VARCHAR2(20),
  CONTACT       VARCHAR2(120),
  CONTACTTEL    VARCHAR2(20),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
alter table ACCCPERSONPH
  add constraint XPKACCCPERSONPH primary key (POLICYNO, APPNTNO);

create table ACCCPOLICYINFO
(
  POLICYNO                VARCHAR2(30) not null,
  BUSSBATCHNO             VARCHAR2(30),
  SUBTASKNO               VARCHAR2(30),
  CONTRACTTYPE            VARCHAR2(2),
  SPLITPOLICYNO           VARCHAR2(1),
  APPLICATIONFORMNO       VARCHAR2(30),
  APPLICATIONDATE         DATE,
  POLICYSTARTDATE         DATE,
  POLICYENDDATE           DATE,
  RENEWALMETHOD           VARCHAR2(2),
  RENEWALTIMES            NUMBER(3),
  SALES                   VARCHAR2(2),
  SALESCHANNELCODE        VARCHAR2(20),
  SALESCHANNELNAME        VARCHAR2(100),
  PRODUCTNAME             VARCHAR2(500),
  POLICYHOLDERNUM         NUMBER(8),
  EFFECTIVINSUREDNUM      NUMBER(8),
  PREMIUM                 NUMBER(20,2),
  SPECIALREMARK           VARCHAR2(900),
  SENDSTATE               VARCHAR2(2),
  ERRORREASON             VARCHAR2(4000),
  POLICYSEQUENCENO        VARCHAR2(50),
  OPERATOR                VARCHAR2(10),
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8),
  BUSINESSADDRESS         VARCHAR2(200),
  UNDERWRITNGDATE         DATE,
  SINGLEDATE              DATE,
  SALESCHANNELNAMECOMMENT VARCHAR2(100)
)
;
alter table ACCCPOLICYINFO
  add constraint XPKACCCPOLICYINFO primary key (POLICYNO);


create table ACCCUPCOVERAGE
(
  POLICYNO             VARCHAR2(30) not null,
  CUSTOMERNO           VARCHAR2(60) not null,
  POLNO                VARCHAR2(30) not null,
  COVERAGECODE         VARCHAR2(5),
  COMCOVERAGECODE      VARCHAR2(60),
  COVERAGENAME         VARCHAR2(200),
  EFFECTIVEDATE        DATE,
  EXPIREDATE           DATE,
  MAINATTACHEDFLAG     VARCHAR2(1),
  COVERAGEPREMIUM      NUMBER(20,2),
  COVERAGEAMOUNT       NUMBER(20,2),
  PAYMENTMETHOD        VARCHAR2(2),
  PAYMENTYEARS         NUMBER(4),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSEINSSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8)
)
;
alter table ACCCUPCOVERAGE
  add constraint XPKACCCUPCOVERAGE primary key (POLICYNO, CUSTOMERNO, POLNO);


create table ACCPBENEFIT
(
  EDORNO        VARCHAR2(30) not null,
  EDORTYPE      VARCHAR2(2) not null,
  POLICYNO      VARCHAR2(30) not null,
  CUSTOMERNO    VARCHAR2(60) not null,
  POLNO         VARCHAR2(30) not null,
  BNFTYPE       VARCHAR2(1) not null,
  BNFNO         INTEGER not null,
  ORDERNO       VARCHAR2(10) not null,
  NAME          VARCHAR2(60),
  GENDER        VARCHAR2(1),
  BIRTHDAY      DATE,
  CRITTYPE      VARCHAR2(2),
  CRITCODE      VARCHAR2(30),
  RLSHTOINSURED VARCHAR2(2),
  PROPORTION    NUMBER(3,2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
alter table ACCPBENEFIT
  add constraint XPKACCPBENEFIT primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO, POLNO, BNFTYPE, BNFNO, ORDERNO);


create table ACCPCOVERAGE
(
  EDORNO           VARCHAR2(30) not null,
  EDORTYPE         VARCHAR2(2) not null,
  POLICYNO         VARCHAR2(30) not null,
  CUSTOMERNO       VARCHAR2(60) not null,
  POLNO            VARCHAR2(30) not null,
  LIABILITYCODE    VARCHAR2(60) not null,
  LIABILITYNAME    VARCHAR2(200),
  EFFECTIVEDATE    DATE,
  EXPIREDATE       DATE,
  LIABILITYSTATUS  VARCHAR2(2),
  LIABILITYPREMIUM NUMBER(20,2),
  LIMITAMOUNT      NUMBER(20,2),
  WAITINGPERIOD    NUMBER(8),
  REMARK           VARCHAR2(600),
  MAKEDATE         DATE,
  MAKETIME         VARCHAR2(8),
  MODIFYDATE       DATE,
  MODIFYTIME       VARCHAR2(8)
)
;
alter table ACCPCOVERAGE
  add constraint XPKACCPCOVERAGE primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO, POLNO, LIABILITYCODE);


create table ACCPEDORINFO
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(2) not null,
  POLICYNO          VARCHAR2(30) not null,
  BUSSBATCHNO       VARCHAR2(30),
  SUBTASKNO         VARCHAR2(30),
  CONTRACTTYPE      VARCHAR2(30),
  EDORAPPLYDATE     DATE,
  EDOREFFECTIVEDATE DATE,
  EDORCONFDATE      DATE,
  EDORCONFTIME      VARCHAR2(8),
  SENDSTATE         VARCHAR2(2),
  ERRORREASON       VARCHAR2(4000),
  EDORSEQUENCENO    VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table ACCPEDORINFO
  add constraint XPKACCPEDORINFO primary key (EDORNO, EDORTYPE, POLICYNO);


create table ACCPINSURED
(
  EDORNO                VARCHAR2(30) not null,
  EDORTYPE              VARCHAR2(2) not null,
  POLICYNO              VARCHAR2(30) not null,
  CUSTOMERNO            VARCHAR2(60) not null,
  NAME                  VARCHAR2(60),
  GENDER                VARCHAR2(1),
  BIRTHDAY              DATE,
  CRITTYPE              VARCHAR2(2),
  CRITCODE              VARCHAR2(30),
  MOBILE                VARCHAR2(20),
  OFFERSTATUS           VARCHAR2(2),
  SUBSTARTDATE          DATE,
  SUBENDDATE            DATE,
  APPOINTEDBENEFIT      VARCHAR2(1),
  INSUREDTYPE           VARCHAR2(2),
  SNOFMAININSURED       VARCHAR2(30),
  RLSHTOMAININSURED     VARCHAR2(2),
  INSUREDPREMIUM        NUMBER(20,2),
  INSUREDCURRENTPREMIUM NUMBER(20,2),
  MAKEDATE              DATE,
  MAKETIME              VARCHAR2(8),
  MODIFYDATE            DATE,
  MODIFYTIME            VARCHAR2(8)
)
;
alter table ACCPINSURED
  add constraint XPKACCPINSURED primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO);


create table ACCPPERSONPH
(
  EDORNO        VARCHAR2(30) not null,
  EDORTYPE      VARCHAR2(2) not null,
  POLICYNO      VARCHAR2(30) not null,
  APPNTNO       VARCHAR2(30) not null,
  NAME          VARCHAR2(120),
  GENDER        VARCHAR2(1),
  BIRTHDAY      DATE,
  CRITTYPE      VARCHAR2(2),
  CRITCODE      VARCHAR2(30),
  RLSHTOINSURED VARCHAR2(2),
  MOBILE        VARCHAR2(20),
  CONTACT       VARCHAR2(120),
  CONTACTTEL    VARCHAR2(20),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
alter table ACCPPERSONPH
  add constraint XPKACCPPERSONPH primary key (EDORNO, EDORTYPE, POLICYNO, APPNTNO);


create table ACCPPOLICYINFO
(
  EDORNO             VARCHAR2(30) not null,
  EDORTYPE           VARCHAR2(2) not null,
  POLICYNO           VARCHAR2(30) not null,
  CONTRACTTYPE       VARCHAR2(2),
  SPLITPOLICYNO      VARCHAR2(1),
  APPLICATIONFORMNO  VARCHAR2(30),
  APPLICATIONDATE    DATE,
  POLICYSTARTDATE    DATE,
  POLICYENDDATE      DATE,
  RENEWALMETHOD      VARCHAR2(2),
  RENEWALTIMES       NUMBER(3),
  SALES              VARCHAR2(2),
  SALESCHANNELCODE   VARCHAR2(20),
  SALESCHANNELNAME   VARCHAR2(100),
  PRODUCTNAME        VARCHAR2(500),
  POLICYHOLDERNUM    NUMBER(8),
  EFFECTIVINSUREDNUM NUMBER(8),
  PREMIUM            NUMBER(20,2),
  CURRENTPREMIUM     NUMBER(20,2),
  SPECIALREMARK      VARCHAR2(900),
  MAKEDATE           DATE,
  MAKETIME           VARCHAR2(8),
  MODIFYDATE         DATE,
  MODIFYTIME         VARCHAR2(8)
)
;
alter table ACCPPOLICYINFO
  add constraint XPKACCPPOLICYINFO primary key (EDORNO, EDORTYPE, POLICYNO);


create table ACCPUPCOVERAGE
(
  EDORNO               VARCHAR2(30) not null,
  EDORTYPE             VARCHAR2(2) not null,
  POLICYNO             VARCHAR2(30) not null,
  CUSTOMERNO           VARCHAR2(60) not null,
  POLNO                VARCHAR2(30) not null,
  COVERAGECODE         VARCHAR2(5),
  COMCOVERAGECODE      VARCHAR2(60),
  COVERAGENAME         VARCHAR2(200),
  EFFECTIVEDATE        DATE,
  EXPIREDATE           DATE,
  MAINATTACHEDFLAG     VARCHAR2(1),
  COVERAGEPREMIUM      NUMBER(20,2),
  COVERAGEAMOUNT       NUMBER(20,2),
  PAYMENTMETHOD        VARCHAR2(2),
  PAYMENTYEARS         NUMBER(4),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSEINSSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8)
)
;
alter table ACCPUPCOVERAGE
  add constraint XPKACCPUPCOVERAGE primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO, POLNO);


create table DATACOMPARISONDTO
(
  COMACTUALCLIAM       VARCHAR2(30),
  COMACTUALENDORSEMENT VARCHAR2(30),
  COMACTUALPOLICY      VARCHAR2(30),
  COMCLIAM             VARCHAR2(30),
  COMENDORSEMENT       VARCHAR2(30),
  COMPOLICY            VARCHAR2(30),
  STATDATE             DATE not null,
  PASSWORD             VARCHAR2(30),
  USERNAME             VARCHAR2(30)
)
;
alter table DATACOMPARISONDTO
  add constraint PK_DATACOMPARISONDTO primary key (STATDATE);


create table DATACOMPARISONSENDRECEIVEACC
(
  STATDATE             DATE not null,
  COMPOLICY            VARCHAR2(10),
  COMACTUALPOLICY      VARCHAR2(10),
  COMENDORSEMENT       VARCHAR2(10),
  COMACTUALENDORSEMENT VARCHAR2(10),
  COMCLAIM             VARCHAR2(10),
  COMACTUALCLAIM       VARCHAR2(10),
  INSERTDATE           DATE,
  INSERTOPERATOR       VARCHAR2(20),
  SENDDATE             DATE,
  SENDOPERATOR         VARCHAR2(20),
  TASKNO               VARCHAR2(50),
  RESPONSECODE         VARCHAR2(1),
  ERRORMESSAGE         VARCHAR2(600),
  POLICY               VARCHAR2(10),
  ENDORSEMENT          VARCHAR2(10),
  CLAIM                VARCHAR2(10),
  RECEIVEDATE          DATE,
  RECEIVEOPERATOR      VARCHAR2(20)
)
;
comment on column DATACOMPARISONSENDRECEIVEACC.STATDATE
  is '统计日期';
comment on column DATACOMPARISONSENDRECEIVEACC.COMPOLICY
  is '应该报送承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEACC.COMACTUALPOLICY
  is '实际报送承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEACC.COMENDORSEMENT
  is '应该报送保全数量';
comment on column DATACOMPARISONSENDRECEIVEACC.COMACTUALENDORSEMENT
  is '实际报送保全数量';
comment on column DATACOMPARISONSENDRECEIVEACC.COMCLAIM
  is '应该报送理赔数量 意外险不用此字段 健康险使用 留着备用';
comment on column DATACOMPARISONSENDRECEIVEACC.COMACTUALCLAIM
  is '实际报送理赔数量 意外险不用此字段 健康险使用 留着备用';
comment on column DATACOMPARISONSENDRECEIVEACC.INSERTDATE
  is '报送的数据被插入到表中的日期';
comment on column DATACOMPARISONSENDRECEIVEACC.INSERTOPERATOR
  is '报送的数据被插入到表中的操作员';
comment on column DATACOMPARISONSENDRECEIVEACC.SENDDATE
  is '报送的数据被报送的日期';
comment on column DATACOMPARISONSENDRECEIVEACC.SENDOPERATOR
  is '报送的数据被报送的操作员';
comment on column DATACOMPARISONSENDRECEIVEACC.TASKNO
  is '从平台返回的任务号';
comment on column DATACOMPARISONSENDRECEIVEACC.RESPONSECODE
  is '从平台返回的回复代码';
comment on column DATACOMPARISONSENDRECEIVEACC.ERRORMESSAGE
  is '从平台返回的错误信息';
comment on column DATACOMPARISONSENDRECEIVEACC.POLICY
  is '从平台返回的承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEACC.ENDORSEMENT
  is '从平台返回的保全数量';
comment on column DATACOMPARISONSENDRECEIVEACC.CLAIM
  is '从平台返回的理赔数量 意外险不用此字段 健康险使用 留着备用';
comment on column DATACOMPARISONSENDRECEIVEACC.RECEIVEDATE
  is '从平台返回的数据被插入到表中的日期';
comment on column DATACOMPARISONSENDRECEIVEACC.RECEIVEOPERATOR
  is '从平台返回的数据被插入到表中的操作员';
alter table DATACOMPARISONSENDRECEIVEACC
  add constraint PK_DATACOMPARISONSENDRECEIVEAC primary key (STATDATE);


create table DATACOMPARISONSENDRECEIVEINFO
(
  STATDATE             DATE not null,
  COMPOLICY            VARCHAR2(10),
  COMACTUALPOLICY      VARCHAR2(10),
  COMENDORSEMENT       VARCHAR2(10),
  COMACTUALENDORSEMENT VARCHAR2(10),
  COMCLAIM             VARCHAR2(10),
  COMACTUALCLAIM       VARCHAR2(10),
  INSERTDATE           DATE,
  INSERTOPERATOR       VARCHAR2(20),
  SENDDATE             DATE,
  SENDOPERATOR         VARCHAR2(20),
  TASKNO               VARCHAR2(50),
  RESPONSECODE         VARCHAR2(1),
  ERRORMESSAGE         VARCHAR2(600),
  POLICY               VARCHAR2(10),
  ENDORSEMENT          VARCHAR2(10),
  CLAIM                VARCHAR2(10),
  RECEIVEDATE          DATE,
  RECEIVEOPERATOR      VARCHAR2(20)
)
;
comment on column DATACOMPARISONSENDRECEIVEINFO.STATDATE
  is '统计日期';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMPOLICY
  is '应该报送承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMACTUALPOLICY
  is '实际报送承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMENDORSEMENT
  is '应该报送保全数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMACTUALENDORSEMENT
  is '实际报送保全数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMCLAIM
  is '应该报送理赔数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.COMACTUALCLAIM
  is '实际报送理赔数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.INSERTDATE
  is '报送的数据被插入到表中的日期';
comment on column DATACOMPARISONSENDRECEIVEINFO.INSERTOPERATOR
  is '报送的数据被插入到表中的操作员';
comment on column DATACOMPARISONSENDRECEIVEINFO.SENDDATE
  is '报送的数据被报送的日期';
comment on column DATACOMPARISONSENDRECEIVEINFO.SENDOPERATOR
  is '报送的数据被报送的操作员';
comment on column DATACOMPARISONSENDRECEIVEINFO.TASKNO
  is '从平台返回的任务号';
comment on column DATACOMPARISONSENDRECEIVEINFO.RESPONSECODE
  is '从平台返回的回复代码';
comment on column DATACOMPARISONSENDRECEIVEINFO.ERRORMESSAGE
  is '从平台返回的错误信息';
comment on column DATACOMPARISONSENDRECEIVEINFO.POLICY
  is '从平台返回的承保保单数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.ENDORSEMENT
  is '从平台返回的保全数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.CLAIM
  is '从平台返回的理赔数量';
comment on column DATACOMPARISONSENDRECEIVEINFO.RECEIVEDATE
  is '从平台返回的数据被插入到表中的日期';
comment on column DATACOMPARISONSENDRECEIVEINFO.RECEIVEOPERATOR
  is '从平台返回的数据被插入到表中的操作员';
alter table DATACOMPARISONSENDRECEIVEINFO
  add constraint PK_DATACOMPARISONSENDRECEIVEIN primary key (STATDATE);


create table DPCAPPNT
(
  POLICYNO          VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(24) not null,
  NAME              VARCHAR2(120),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
comment on table DPCAPPNT
  is '个人投保人表';
comment on column DPCAPPNT.POLICYNO
  is '保单号码';
comment on column DPCAPPNT.CUSTOMERNO
  is '客户号码';
comment on column DPCAPPNT.NAME
  is '冗余，标准在团体客户表';
comment on column DPCAPPNT.SEX
  is '性别';
comment on column DPCAPPNT.BIRTHDAY
  is '出生日期';
comment on column DPCAPPNT.IDTYPE
  is '证件类型';
comment on column DPCAPPNT.IDNO
  is '证件号码';
comment on column DPCAPPNT.RELATIONTOINSURED
  is '与被保人关系';
comment on column DPCAPPNT.MAKEDATE
  is '入机日期';
comment on column DPCAPPNT.MAKETIME
  is '入机时间';
comment on column DPCAPPNT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCAPPNT.MODIFYTIME
  is '最后一次修改时间';
alter table DPCAPPNT
  add constraint PK_DPCAPPNT primary key (POLICYNO, CUSTOMERNO);


create table DPCAPPNT_B
(
  POLICYNO          VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(24) not null,
  NAME              VARCHAR2(120),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table DPCAPPNT_B
  add constraint PK_DPCAPPNT_B primary key (POLICYNO, CUSTOMERNO);


create table DPCBNF
(
  POLICYNO          VARCHAR2(30) not null,
  CONTNO            VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(30) not null,
  NAME              VARCHAR2(60),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  DISTRIBUTIONTYPE  VARCHAR2(2),
  BNFNO             INTEGER not null,
  BNFGRADE          VARCHAR2(1),
  ORDERNO           VARCHAR2(10),
  BNFLOT            NUMBER(3,2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
comment on table DPCBNF
  is '受益人信息表';
comment on column DPCBNF.POLICYNO
  is '保单号码';
comment on column DPCBNF.CONTNO
  is '个人保单号';
comment on column DPCBNF.CUSTOMERNO
  is '在同一团单下的人员序号（只要能在一张保单下唯一标识一个被保人即可，且该号不能发生变化，而且换人时这个号也不能变，所以谨慎使用lis系统中的客户号）';
comment on column DPCBNF.NAME
  is '冗余，标准在团体客户表';
comment on column DPCBNF.SEX
  is '性别';
comment on column DPCBNF.BIRTHDAY
  is '出生日期';
comment on column DPCBNF.IDTYPE
  is '证件类型';
comment on column DPCBNF.IDNO
  is '证件号码';
comment on column DPCBNF.RELATIONTOINSURED
  is '与被保人关系';
comment on column DPCBNF.DISTRIBUTIONTYPE
  is '01	未指定
02	指定顺序
03	指定份额
04	其他
';
comment on column DPCBNF.BNFNO
  is '对受益人进行唯一编码。';
comment on column DPCBNF.BNFGRADE
  is '指对受益人进行分组。
如第一受益人，第二受益人。
';
comment on column DPCBNF.ORDERNO
  is '顺序号';
comment on column DPCBNF.BNFLOT
  is '比例值';
comment on column DPCBNF.MAKEDATE
  is '入机日期';
comment on column DPCBNF.MAKETIME
  is '入机时间';
comment on column DPCBNF.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCBNF.MODIFYTIME
  is '最后一次修改时间';
alter table DPCBNF
  add constraint PK_DPCBNF primary key (POLICYNO, CONTNO, CUSTOMERNO, BNFNO);


create table DPCBNF_B
(
  POLICYNO          VARCHAR2(30) not null,
  CONTNO            VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(30) not null,
  NAME              VARCHAR2(60),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  DISTRIBUTIONTYPE  VARCHAR2(2),
  BNFNO             INTEGER not null,
  BNFGRADE          VARCHAR2(1),
  ORDERNO           VARCHAR2(10),
  BNFLOT            NUMBER(3,2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table DPCBNF_B
  add constraint PK_DPCBNF_B primary key (POLICYNO, CONTNO, CUSTOMERNO, BNFNO);


create table DPCDUTY
(
  POLICYNO                VARCHAR2(30) not null,
  CONTNO                  VARCHAR2(30) not null,
  POLNO                   VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION VARCHAR2(2),
  DUTYCODE                VARCHAR2(60) not null,
  DUTYNAME                VARCHAR2(200),
  CVALIDATE               DATE,
  ENDDATE                 DATE,
  DUTYSTATE               VARCHAR2(2),
  PREM                    NUMBER(20,2),
  ORIGINALAMNT            NUMBER(20,2),
  EFFECTIVEAMNT           NUMBER(20,2),
  WAITINGPERIOD           INTEGER,
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8)
)
;
comment on table DPCDUTY
  is '个单或团体保单下无承保计划中的险种责任信息、保险计划信息';
comment on column DPCDUTY.POLICYNO
  is '保单号码';
comment on column DPCDUTY.CONTNO
  is '个人合同号';
comment on column DPCDUTY.POLNO
  is '对应个人的险种号';
comment on column DPCDUTY.RISKCODE
  is '险种编码';
comment on column DPCDUTY.LIABILITYCLASSIFICATION
  is '01	住院
02	门诊
03	生育
04	体检
05	预防接种
99	其他
';
comment on column DPCDUTY.DUTYCODE
  is '责任编码';
comment on column DPCDUTY.DUTYNAME
  is '责任名称';
comment on column DPCDUTY.CVALIDATE
  is '生效日期';
comment on column DPCDUTY.ENDDATE
  is '满期日期';
comment on column DPCDUTY.DUTYSTATE
  is '责任状态';
comment on column DPCDUTY.PREM
  is '保费';
comment on column DPCDUTY.ORIGINALAMNT
  is '期初保额';
comment on column DPCDUTY.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPCDUTY.WAITINGPERIOD
  is '等待期天数';
comment on column DPCDUTY.MAKEDATE
  is '入机日期';
comment on column DPCDUTY.MAKETIME
  is '入机时间';
comment on column DPCDUTY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCDUTY.MODIFYTIME
  is '最后一次修改时间';
alter table DPCDUTY
  add constraint PK_DPCDUTY primary key (POLNO, DUTYCODE);


create table DPCDUTYIND
(
  POLICYNO                VARCHAR2(30) not null,
  CONTNO                  VARCHAR2(30) not null,
  POLNO                   VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION VARCHAR2(2),
  LIABILITYCODE           VARCHAR2(60),
  LIABILITYNAME           VARCHAR2(200),
  LIABILITYEFFECTIVEDATE  DATE,
  LIABILITYEXPIREDATE     DATE,
  LIABILITYSTATUS         VARCHAR2(2),
  LIABILITYPREMIUM        NUMBER(20,2),
  LIABILITYCURRENTPREMIUM NUMBER(20,2),
  LIMITAMOUNT             NUMBER(20,2),
  EFFECTIVELYAMOUNT       NUMBER(20,2),
  WAITINGPERIOD           NUMBER(8),
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8)
)
;


create table DPCEDORITEMINFO
(
  BUSSBATCHNO    VARCHAR2(30) not null,
  POLICYNO       VARCHAR2(30) not null,
  EDORTYPE       VARCHAR2(2) not null,
  EDORNO         VARCHAR2(30) not null,
  EDORBACKDATE   DATE not null,
  SENDSTATE      VARCHAR2(2) not null,
  BACKSEQUENCENO VARCHAR2(10) not null,
  ERRORMSG       VARCHAR2(600) not null,
  OPERATOR       VARCHAR2(10) not null,
  MAKEDATE       DATE not null,
  MAKETIME       VARCHAR2(8) not null,
  MODIFYDATE     DATE not null,
  MODIFYTIME     VARCHAR2(8) not null
)
;


create table DPCGRPAPPNT
(
  POLICYNO     VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(24) not null,
  NAME         VARCHAR2(120),
  PROVINCE     VARCHAR2(20),
  CITY         VARCHAR2(20),
  COUNTY       VARCHAR2(40),
  GRPADDRESS   VARCHAR2(100),
  GRPIDTYPE    VARCHAR2(2),
  GRPIDNO      VARCHAR2(30),
  SOCIREGCODE  VARCHAR2(50),
  GRPNATURE    VARCHAR2(3),
  BUSINESSTYPE VARCHAR2(4),
  CORPORATION  VARCHAR2(50),
  LINKMAN      VARCHAR2(50),
  PEOPLES      NUMBER(10),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on column DPCGRPAPPNT.NAME
  is '冗余，标准在团体客户表';
comment on column DPCGRPAPPNT.GRPIDTYPE
  is '1  企业法人营业执照
2  中华人名共和国组织机构代码证
3  税务登记证
4  社保保险登记证
5  办学许可证
9  其他
';
comment on column DPCGRPAPPNT.SOCIREGCODE
  is '二期必录';
comment on column DPCGRPAPPNT.GRPNATURE
  is '二期必录';
comment on column DPCGRPAPPNT.BUSINESSTYPE
  is '二期必录';
alter table DPCGRPAPPNT
  add constraint PK_DPCGRPAPPNT primary key (POLICYNO, CUSTOMERNO);


create table DPCGRPAPPNT_B
(
  POLICYNO     VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(24) not null,
  NAME         VARCHAR2(120),
  PROVINCE     VARCHAR2(20),
  CITY         VARCHAR2(20),
  COUNTY       VARCHAR2(40),
  GRPADDRESS   VARCHAR2(300),
  GRPIDTYPE    VARCHAR2(2),
  GRPIDNO      VARCHAR2(30),
  SOCIREGCODE  VARCHAR2(50),
  GRPNATURE    VARCHAR2(3),
  BUSINESSTYPE VARCHAR2(4),
  CORPORATION  VARCHAR2(50),
  LINKMAN      VARCHAR2(50),
  PEOPLES      NUMBER(10),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
alter table DPCGRPAPPNT_B
  add constraint PK_DPCGRPAPPNT_B primary key (POLICYNO, CUSTOMERNO);


create table DPCGRPRISK
(
  POLICYNO             VARCHAR2(30) not null,
  GRPPOLNO             VARCHAR2(30) not null,
  COVERAGETYPE         VARCHAR2(1),
  COVERAGECODE         VARCHAR2(5),
  RISKCODE             VARCHAR2(60) not null,
  RISKNAME             VARCHAR2(200),
  CVALIDATE            DATE,
  ENDDATE              DATE,
  PREM                 NUMBER(20,2),
  ORIGINALAMNT         NUMBER(20,2),
  EFFECTIVEAMNT        NUMBER(20,2),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSINESSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  SUBRISKFLAG          VARCHAR2(1),
  PAYCOUNT             NUMBER(3),
  PAYINTV              NUMBER(3),
  PAYYEARS             NUMBER(3),
  RISKSTATUS           VARCHAR2(1)
)
;
comment on table DPCGRPRISK
  is '团体保单下险种信息';
comment on column DPCGRPRISK.SPECIFICBUSINESSCODE
  is 'XP  学生平安险
HK  航空意外险
JG  建筑工人意外伤害险
ZX001  健康险专项业务-新农合
ZX002  健康险专项业务-新农合补充
ZX003  健康险专项业务-城镇职工基本医疗
ZX004  健康险专项业务-城镇职工补充医疗
ZX005  健康险专项业务-城镇居民基本医疗
ZX006  健康险专项业务-城镇居民补充医疗
ZX007  健康险专项业务-医疗救助
ZX008  健康险专项业务-企事业团体补充医疗
';
comment on column DPCGRPRISK.SUBRISKFLAG
  is '1  主险
2  附加险
';
comment on column DPCGRPRISK.PAYINTV
  is '1  趸缴
2  月缴
3  季缴
4  半年缴
5  年缴
9  其他
';
alter table DPCGRPRISK
  add constraint PK_DPCGRPRISK primary key (GRPPOLNO);


create table DPCINSURED
(
  POLICYNO              VARCHAR2(30) not null,
  CONTNO                VARCHAR2(30) not null,
  CUSTOMERNO            VARCHAR2(60) not null,
  NAME                  VARCHAR2(60),
  SEX                   VARCHAR2(1),
  BIRTHDAY              DATE,
  IDTYPE                VARCHAR2(2),
  IDNO                  VARCHAR2(30),
  RELATIONTOAPPNT       VARCHAR2(2),
  PROVINCE              VARCHAR2(20),
  CITY                  VARCHAR2(20),
  COUNTY                VARCHAR2(40),
  GRPADDRESS            VARCHAR2(100),
  IMPARTFLAG            VARCHAR2(1),
  INSUREDSTATE          VARCHAR2(2),
  CVALIDATE             DATE,
  ENDDATE               DATE,
  CONTPLANCODE          VARCHAR2(30),
  INSUREDTYPE           VARCHAR2(2),
  MAININSUREDNO         VARCHAR2(30),
  RELATIONTOMAININSURED VARCHAR2(2),
  WORKFLAG              VARCHAR2(2),
  HEALTHFLAG            VARCHAR2(1),
  SOCIALCARENO          VARCHAR2(30),
  OCCUPATIONCODE        VARCHAR2(7),
  WORKPLACE             VARCHAR2(200),
  EMPOYEENO             VARCHAR2(30),
  BNFFLAG               VARCHAR2(1),
  MAKEDATE              DATE,
  MAKETIME              VARCHAR2(8),
  MODIFYDATE            DATE,
  MODIFYTIME            VARCHAR2(8)
)
;
comment on column DPCINSURED.CUSTOMERNO
  is '在同一团单下的人员序号（只要能在一张保单下唯一标识一个被保人即可，且该号不能发生变化，而且换人时这个号也不能变，所以谨慎使用lis系统中的客户号）';
comment on column DPCINSURED.NAME
  is '冗余，标准在团体客户表';
comment on column DPCINSURED.SEX
  is '0  未知的性别
1  男
2  女
9  未说明的性别
';
comment on column DPCINSURED.INSUREDSTATE
  is '被保险人是否有效
1  有效
2  中止
3  终止
9  其他
';
comment on column DPCINSURED.INSUREDTYPE
  is '01  主被保险人
02  连带被保人
09  其他
';
comment on column DPCINSURED.WORKFLAG
  is '01  在职
02  退休
09  其他

二期必录';
comment on column DPCINSURED.HEALTHFLAG
  is '0  否
1  是
';
comment on column DPCINSURED.SOCIALCARENO
  is '二期必录';
alter table DPCINSURED
  add constraint PK_DPCINSURED primary key (CONTNO, CUSTOMERNO);


create table DPCINSUREDIND
(
  POLICYNO                    VARCHAR2(30) not null,
  CONTNO                      VARCHAR2(30) not null,
  CUSTOMERNO                  VARCHAR2(60) not null,
  NAME                        VARCHAR2(60),
  GENDER                      VARCHAR2(1),
  BIRTHDAY                    DATE,
  CRITTYPE                    VARCHAR2(2),
  CRITCODE                    VARCHAR2(30),
  RELATIONSHIPWITHPH          VARCHAR2(2),
  ADDRESS1                    VARCHAR2(6),
  ADDRESS2                    VARCHAR2(6),
  ADDRESS3                    VARCHAR2(6),
  ADDRESS4                    VARCHAR2(100),
  ANOMALYINFORM               VARCHAR2(1),
  OFFERSTATUS                 VARCHAR2(2),
  SUBSTARTDATE                DATE,
  SUBENDDATE                  DATE,
  INSUREDGROUPCODE            VARCHAR2(30),
  INSUREDTYPE                 VARCHAR2(2),
  SNOFMAININSURED             VARCHAR2(30),
  RELATIONSHIPWITHMAININSURED VARCHAR2(2),
  SERVICEMARK                 VARCHAR2(2),
  HEALTHFLAG                  VARCHAR2(1),
  SOCIALCARENO                VARCHAR2(30),
  OCCUPATIONALCODE            VARCHAR2(7),
  WORKPLACE                   VARCHAR2(200),
  EMPOYEENO                   VARCHAR2(30),
  APPOINTEDBENEFIT            VARCHAR2(1),
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8)
)
;


create table DPCINSURED_B
(
  POLICYNO              VARCHAR2(30) not null,
  CONTNO                VARCHAR2(30) not null,
  CUSTOMERNO            VARCHAR2(60) not null,
  NAME                  VARCHAR2(60),
  SEX                   VARCHAR2(1),
  BIRTHDAY              DATE,
  IDTYPE                VARCHAR2(2),
  IDNO                  VARCHAR2(30),
  RELATIONTOAPPNT       VARCHAR2(2),
  PROVINCE              VARCHAR2(20),
  CITY                  VARCHAR2(20),
  COUNTY                VARCHAR2(40),
  GRPADDRESS            VARCHAR2(300),
  IMPARTFLAG            VARCHAR2(1),
  INSUREDSTATE          VARCHAR2(2),
  CVALIDATE             DATE,
  ENDDATE               DATE,
  CONTPLANCODE          VARCHAR2(30),
  INSUREDTYPE           VARCHAR2(2),
  MAININSUREDNO         VARCHAR2(30),
  RELATIONTOMAININSURED VARCHAR2(2),
  WORKFLAG              VARCHAR2(2),
  HEALTHFLAG            VARCHAR2(1),
  SOCIALCARENO          VARCHAR2(30),
  OCCUPATIONCODE        VARCHAR2(7),
  WORKPLACE             VARCHAR2(200),
  EMPOYEENO             VARCHAR2(30),
  BNFFLAG               VARCHAR2(1),
  MAKEDATE              DATE,
  MAKETIME              VARCHAR2(8),
  MODIFYDATE            DATE,
  MODIFYTIME            VARCHAR2(8)
)
;
alter table DPCINSURED_B
  add constraint PK_DPCINSURED_B primary key (CONTNO, CUSTOMERNO);


create table DPCPAYMENT
(
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  RISKCODE   VARCHAR2(60) not null,
  DUTYCODE   VARCHAR2(60) not null,
  SECTIONNO  VARCHAR2(2) not null,
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  GETLIMIT   NUMBER(12,2),
  GETRATE    NUMBER(5,2),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
comment on table DPCPAYMENT
  is '个单或团体保单下无承保计划中的赔付比例分段信息';
comment on column DPCPAYMENT.POLICYNO
  is '保单号码';
comment on column DPCPAYMENT.CONTNO
  is '个人合同号';
comment on column DPCPAYMENT.POLNO
  is '险种号';
comment on column DPCPAYMENT.RISKCODE
  is '险种编码';
comment on column DPCPAYMENT.DUTYCODE
  is '责任编码';
comment on column DPCPAYMENT.SECTIONNO
  is '赔付比例共分为N段，每段的序号';
comment on column DPCPAYMENT.COSTSTART
  is '费用起线';
comment on column DPCPAYMENT.COSTEND
  is '费用止线';
comment on column DPCPAYMENT.GETLIMIT
  is '免赔额';
comment on column DPCPAYMENT.GETRATE
  is '赔付比例';
comment on column DPCPAYMENT.MAKEDATE
  is '入机日期';
comment on column DPCPAYMENT.MAKETIME
  is '入机时间';
comment on column DPCPAYMENT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCPAYMENT.MODIFYTIME
  is '最后一次修改时间';
alter table DPCPAYMENT
  add constraint PK_DPCPAYMENT primary key (POLNO, DUTYCODE, SECTIONNO);


create table DPCPLANDUTY
(
  POLICYNO                    VARCHAR2(30) not null,
  GRPPOLNO                    VARCHAR2(30) not null,
  RISKCODE                    VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  DUTYCODE                    VARCHAR2(60) not null,
  DUTYNAME                    VARCHAR2(200),
  CVALIDATE                   DATE,
  ENDDATE                     DATE,
  DUTYSTATE                   VARCHAR2(2),
  PREM                        NUMBER(20,2),
  ORIGINALAMNT                NUMBER(20,2),
  EFFECTIVEAMNT               NUMBER(20,2),
  CONTPLANCODE                VARCHAR2(30) not null,
  CONTPLANNAME                VARCHAR2(100),
  WAITINGPERIOD               INTEGER,
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
comment on table DPCPLANDUTY
  is '团体保单下承保计划中的险种责任信息、保险计划信息';
comment on column DPCPLANDUTY.POLICYNO
  is '保单号码';
comment on column DPCPLANDUTY.GRPPOLNO
  is '对应团体险种号';
comment on column DPCPLANDUTY.RISKCODE
  is '险种编码';
comment on column DPCPLANDUTY.LIABILITYCLASSIFICATION
  is '01	住院
02	门诊
03	生育
04	体检
05	预防接种
99	其他
';
comment on column DPCPLANDUTY.DUTYCODE
  is '责任编码';
comment on column DPCPLANDUTY.DUTYNAME
  is '责任名称';
comment on column DPCPLANDUTY.CVALIDATE
  is '生效日期';
comment on column DPCPLANDUTY.ENDDATE
  is '满期日期';
comment on column DPCPLANDUTY.DUTYSTATE
  is '1	有效
2	中止
3	终止
9	其他
';
comment on column DPCPLANDUTY.PREM
  is '保费';
comment on column DPCPLANDUTY.ORIGINALAMNT
  is '期初保额';
comment on column DPCPLANDUTY.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPCPLANDUTY.CONTPLANCODE
  is '保险计划编码';
comment on column DPCPLANDUTY.CONTPLANNAME
  is '保险计划名称';
comment on column DPCPLANDUTY.WAITINGPERIOD
  is '等待期';
comment on column DPCPLANDUTY.MAKEDATE
  is '入机日期';
comment on column DPCPLANDUTY.MAKETIME
  is '入机时间';
comment on column DPCPLANDUTY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCPLANDUTY.MODIFYTIME
  is '最后一次修改时间';
create unique index PK_DPCPLANDUTY on DPCPLANDUTY (GRPPOLNO, DUTYCODE, CONTPLANCODE);


create table DPCPLANDUTY_B
(
  POLICYNO                VARCHAR2(30) not null,
  GRPPOLNO                VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION VARCHAR2(2),
  DUTYCODE                VARCHAR2(60) not null,
  DUTYNAME                VARCHAR2(200),
  CVALIDATE               DATE,
  ENDDATE                 DATE,
  DUTYSTATE               VARCHAR2(2),
  PREM                    NUMBER(20,2),
  ORIGINALAMNT            NUMBER(20,2),
  EFFECTIVEAMNT           NUMBER(20,2),
  CONTPLANCODE            VARCHAR2(30) not null,
  CONTPLANNAME            VARCHAR2(100),
  WAITINGPERIOD           INTEGER,
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8)
)
;
alter table DPCPLANDUTY_B
  add constraint PK_DPCPLANDUTY_B primary key (GRPPOLNO, DUTYCODE, CONTPLANCODE);


create table DPCPLANPAYMENT
(
  POLICYNO     VARCHAR2(30) not null,
  GRPPOLNO     VARCHAR2(30) not null,
  RISKCODE     VARCHAR2(60) not null,
  DUTYCODE     VARCHAR2(60) not null,
  CONTPLANCODE VARCHAR2(30) not null,
  SECTIONNO    VARCHAR2(2) not null,
  COSTSTART    NUMBER(12,2),
  COSTEND      NUMBER(12,2),
  GETLIMIT     NUMBER(12,2),
  GETRATE      NUMBER(5,2),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on table DPCPLANPAYMENT
  is '团体保单下承保计划中的赔付比例分段信息';
comment on column DPCPLANPAYMENT.POLICYNO
  is '保单号码';
comment on column DPCPLANPAYMENT.GRPPOLNO
  is '险种号';
comment on column DPCPLANPAYMENT.RISKCODE
  is '险种编码';
comment on column DPCPLANPAYMENT.DUTYCODE
  is '责任编码';
comment on column DPCPLANPAYMENT.CONTPLANCODE
  is '保险计划编码';
comment on column DPCPLANPAYMENT.SECTIONNO
  is '赔付比例共分为N段，每段的序号';
comment on column DPCPLANPAYMENT.COSTSTART
  is '费用起线';
comment on column DPCPLANPAYMENT.COSTEND
  is '费用止线';
comment on column DPCPLANPAYMENT.GETLIMIT
  is '免赔额';
comment on column DPCPLANPAYMENT.GETRATE
  is '赔付比例';
comment on column DPCPLANPAYMENT.MAKEDATE
  is '入机日期';
comment on column DPCPLANPAYMENT.MAKETIME
  is '入机时间';
comment on column DPCPLANPAYMENT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPCPLANPAYMENT.MODIFYTIME
  is '最后一次修改时间';
alter table DPCPLANPAYMENT
  add constraint PK_DPCPLANPAYMENT primary key (GRPPOLNO, DUTYCODE, CONTPLANCODE, SECTIONNO);


create table DPCPLANPAYMENT_B
(
  POLICYNO     VARCHAR2(30) not null,
  GRPPOLNO     VARCHAR2(30) not null,
  RISKCODE     VARCHAR2(60) not null,
  DUTYCODE     VARCHAR2(60) not null,
  CONTPLANCODE VARCHAR2(30) not null,
  SECTIONNO    VARCHAR2(2) not null,
  COSTSTART    NUMBER(12,2),
  COSTEND      NUMBER(12,2),
  GETLIMIT     NUMBER(12,2),
  GETRATE      NUMBER(5,2),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
alter table DPCPLANPAYMENT_B
  add constraint PK_DPCPLANPAYMENT_B primary key (GRPPOLNO, DUTYCODE, CONTPLANCODE, SECTIONNO);


create table DPCPLANUW
(
  POLICYNO      VARCHAR2(30) not null,
  GRPPOLNO      VARCHAR2(30) not null,
  RISKCODE      VARCHAR2(60) not null,
  UWFLAG        VARCHAR2(2),
  UWDATE        DATE,
  DECLINEREASON VARCHAR2(2),
  STATE         VARCHAR2(2),
  PEFLAG        VARCHAR2(2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
comment on table DPCPLANUW
  is '团体保单下承保计划中的险种责任的核保结论信息';
comment on column DPCPLANUW.GRPPOLNO
  is '对应团体险种号';
comment on column DPCPLANUW.UWFLAG
  is '10  标准体
20  次标准体
21  加费
32  限额
33  特别约定
40  延期
50  拒保
60  优标体
';
alter table DPCPLANUW
  add constraint PK_DPCPLANUW primary key (GRPPOLNO);


create table DPCPLANUW_B
(
  POLICYNO      VARCHAR2(30) not null,
  GRPPOLNO      VARCHAR2(30) not null,
  RISKCODE      VARCHAR2(60) not null,
  UWFLAG        VARCHAR2(2),
  UWDATE        DATE,
  DECLINEREASON VARCHAR2(2),
  STATE         VARCHAR2(2),
  PEFLAG        VARCHAR2(2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
alter table DPCPLANUW_B
  add constraint PK_DPCPLANUW_B primary key (GRPPOLNO);


create table DPCPOLICYINDINFO
(
  BUSSBATCHNO         VARCHAR2(30) not null,
  SUBTASKNO           VARCHAR2(30) not null,
  SPLITPOLICYNO       VARCHAR2(1),
  REJECTION           VARCHAR2(1),
  APPLICATIONFORMNO   VARCHAR2(30),
  POLICYNO            VARCHAR2(30) not null,
  APPLICATIONDATE     DATE,
  ACCEPTDATE          DATE,
  ORGANID             VARCHAR2(20),
  ORGANNAME           VARCHAR2(100),
  CHANNELTYPE         VARCHAR2(2),
  SALESTYPE           VARCHAR2(6),
  SALESCODE           VARCHAR2(20),
  SALESNAME           VARCHAR2(30),
  SALESCHANNELCODE    VARCHAR2(20),
  SALESCHANNELNAME    VARCHAR2(100),
  BUSINESSADDRESS     VARCHAR2(200),
  CONTRACTTYPE        VARCHAR2(2),
  POLICYSTARTDATE     DATE,
  POLICYENDDATE       DATE,
  TERMINATIONDATE     DATE,
  SUSPENDDATE         DATE,
  RECOVERDATE         DATE,
  CONTRACTSOURCE      VARCHAR2(2),
  CONTRACTNO          VARCHAR2(30),
  RENEWALTIMES        NUMBER(8),
  RENEWALMETHOD       VARCHAR2(30),
  CONTRACTSTATUS      VARCHAR2(2),
  TERMINATIONREASON   VARCHAR2(1),
  SUMINSURED          NUMBER(20,2),
  EFFECTIVESUMINSURED NUMBER(20,2),
  PREMIUM             NUMBER(20,2),
  CURRENTPREMIUM      NUMBER(20,2),
  PAYMENTMETHOD       VARCHAR2(2),
  PAYMENTYEARS        NUMBER(4),
  PAYMENTNO           NUMBER(3),
  POLICYHOLDERPRO     VARCHAR2(1),
  POLICYHOLDERNUM     NUMBER(8),
  EFFECTIVEINSUREDNUM NUMBER(8),
  FORMERPOLICYNO      VARCHAR2(30),
  SPECIALREMARK       VARCHAR2(600),
  REGULARCLEARINGMARK VARCHAR2(1),
  REGULARCLEARING     VARCHAR2(2),
  REGULARCLEARINGDATE DATE,
  PREMIUMDUEDATE      DATE,
  REALTIMECLAIMFLAG   VARCHAR2(1),
  POLICYLOAN          VARCHAR2(1),
  AUTOPAIDUP          VARCHAR2(1),
  COINSURANCE         VARCHAR2(1),
  LEADCOINSURANCE     VARCHAR2(1),
  STANDBYFLAG1        VARCHAR2(10),
  STANDBYFLAG2        VARCHAR2(10),
  STANDBYFLAG3        VARCHAR2(10),
  SENDSTATE           VARCHAR2(2) not null,
  ERRORREASON         VARCHAR2(600),
  POLICYSEQUENCENO    VARCHAR2(50),
  OPERATOR            VARCHAR2(10),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8)
)
;
comment on table DPCPOLICYINDINFO
  is '个险保单表';
alter table DPCPOLICYINDINFO
  add constraint PK_DPCPOLICYINDINFO primary key (POLICYNO);


create table DPCPOLICYINFO
(
  BUSSBATCHNO       VARCHAR2(30) not null,
  SUBTASKNO         VARCHAR2(30) not null,
  POLICYNO          VARCHAR2(30) not null,
  SPLICTFLAG        VARCHAR2(2),
  REJECTION         VARCHAR2(2),
  PRTNO             VARCHAR2(20),
  MANAGECOM         VARCHAR2(20),
  POLAPPLYDATE      DATE,
  MANAGECOMNAME     VARCHAR2(50),
  SALECHNL          VARCHAR2(2),
  BRANCHTYPE        VARCHAR2(4),
  AGENTCODE         VARCHAR2(20),
  AGENTNAME         VARCHAR2(30),
  AGENTCOM          VARCHAR2(20),
  AGENTCOMNAME      VARCHAR2(100),
  AGENTCOMADDRESS   VARCHAR2(200),
  CONTTYPE          VARCHAR2(2),
  SIGNDATE          DATE,
  SIGNTIME          VARCHAR2(8),
  CVALIDATE         DATE,
  CINVALIDATE       DATE,
  TERMINATIONDATE   DATE,
  TERMINATIONREASON VARCHAR2(1),
  SUSPENDDATE       DATE,
  RECOVERDATE       DATE,
  CONTSOURCE        VARCHAR2(2),
  CONTRACTNO        VARCHAR2(30),
  RENEWCOUNT        NUMBER(8),
  RENEWTYPE         VARCHAR2(30),
  CONTSTATE         VARCHAR2(2),
  ORIGINALAMNT      NUMBER(20,2),
  ORIGINALPREM      NUMBER(20,2),
  EFFECTIVEAMNT     NUMBER(20,2),
  CURRENTPREM       NUMBER(20,2),
  PAYINTV           VARCHAR2(4),
  PAYYEARS          VARCHAR2(4),
  PAYCOUNT          VARCHAR2(4),
  APPNTTYPE         VARCHAR2(1),
  ORIGINALPEOPLES   NUMBER(8),
  EFFECTIVEPEOPLES  NUMBER(8),
  FORMERPOLICYNO    VARCHAR2(30),
  SPEC              VARCHAR2(3000),
  CLEARINGFLAG      VARCHAR2(1),
  CLEARINGTYPE      VARCHAR2(2),
  CLEARINGDATE      DATE,
  CLEARINGDEADLINE  DATE,
  REALTIMECLAIMFLAG VARCHAR2(1),
  CONTLOANFLAG      VARCHAR2(1),
  AUTOPAYFLAG       VARCHAR2(1),
  COINSUFLAG        VARCHAR2(1),
  MAINCOINSUFLAG    VARCHAR2(1),
  STANDBYFLAG1      VARCHAR2(10),
  STANDBYFLAG2      VARCHAR2(10),
  STANDBYFLAG3      VARCHAR2(10),
  SENDSTATE         VARCHAR2(2) not null,
  ERRORREASON       VARCHAR2(4000),
  POLICYSEQUENCENO  VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8),
  YEARPREMIUM       NUMBER(20,2)
)
;
comment on table DPCPOLICYINFO
  is '保单表';
comment on column DPCPOLICYINFO.SALECHNL
  is '01  团险直销
02  个人营销
03  银行代理
06  顾问行销
07  经纪公司代理
08  电话销售';
comment on column DPCPOLICYINFO.CONTTYPE
  is '01  团体保单
02  个人保单
09  其他
';
comment on column DPCPOLICYINFO.CONTSOURCE
  is '01  新投保
02  连续投保
03  转换
09  其他';
comment on column DPCPOLICYINFO.CONTRACTNO
  is '某些单位可能会以保险公司签一份无具体保险产品的大合同，在此大合同框架下再签订保单，本合同号即此大合同号。';
comment on column DPCPOLICYINFO.RENEWTYPE
  is '是否连续投保';
comment on column DPCPOLICYINFO.CONTSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
comment on column DPCPOLICYINFO.APPNTTYPE
  is '1  团体客户
2  个人客户
9  其他';
comment on column DPCPOLICYINFO.ORIGINALPEOPLES
  is '承保时的实际投保人数';
comment on column DPCPOLICYINFO.EFFECTIVEPEOPLES
  is '保单当前时被保险人数，承保时与投保人数一致';
comment on column DPCPOLICYINFO.CLEARINGFLAG
  is '0  否
1  是
';
comment on column DPCPOLICYINFO.CLEARINGTYPE
  is '01  实时
02  月
03  季
04  半年
05  年
06  不定期
';
comment on column DPCPOLICYINFO.REALTIMECLAIMFLAG
  is '是否提供信息平台进行跟医院方的实时理赔服务
0  否
1  是
';
comment on column DPCPOLICYINFO.STANDBYFLAG2
  is '
';
comment on column DPCPOLICYINFO.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
alter table DPCPOLICYINFO
  add constraint PK_DPCPOLICYINFO primary key (POLICYNO);


create table DPCPOLICYINFO_B
(
  BUSSBATCHNO       VARCHAR2(30) not null,
  SUBTASKNO         VARCHAR2(30) not null,
  POLICYNO          VARCHAR2(30) not null,
  SPLICTFLAG        VARCHAR2(2),
  REJECTION         VARCHAR2(2),
  PRTNO             VARCHAR2(20),
  MANAGECOM         VARCHAR2(20),
  POLAPPLYDATE      DATE,
  MANAGECOMNAME     VARCHAR2(50),
  SALECHNL          VARCHAR2(2),
  BRANCHTYPE        VARCHAR2(4),
  AGENTCODE         VARCHAR2(20),
  AGENTNAME         VARCHAR2(30),
  AGENTCOM          VARCHAR2(20),
  AGENTCOMNAME      VARCHAR2(100),
  AGENTCOMADDRESS   VARCHAR2(200),
  CONTTYPE          VARCHAR2(2),
  SIGNDATE          DATE,
  SIGNTIME          VARCHAR2(8),
  CVALIDATE         DATE,
  CINVALIDATE       DATE,
  TERMINATIONDATE   DATE,
  TERMINATIONREASON VARCHAR2(1),
  SUSPENDDATE       DATE,
  RECOVERDATE       DATE,
  CONTSOURCE        VARCHAR2(2),
  CONTRACTNO        VARCHAR2(30),
  RENEWCOUNT        NUMBER(8),
  RENEWTYPE         VARCHAR2(30),
  CONTSTATE         VARCHAR2(2),
  ORIGINALAMNT      NUMBER(20,2),
  ORIGINALPREM      NUMBER(20,2),
  EFFECTIVEAMNT     NUMBER(20,2),
  CURRENTPREM       NUMBER(20,2),
  PAYINTV           VARCHAR2(4),
  PAYYEARS          VARCHAR2(4),
  PAYCOUNT          VARCHAR2(4),
  APPNTTYPE         VARCHAR2(1),
  ORIGINALPEOPLES   NUMBER(8),
  EFFECTIVEPEOPLES  NUMBER(8),
  FORMERPOLICYNO    VARCHAR2(30),
  SPEC              VARCHAR2(3000),
  CLEARINGFLAG      VARCHAR2(1),
  CLEARINGTYPE      VARCHAR2(2),
  CLEARINGDATE      DATE,
  CLEARINGDEADLINE  DATE,
  REALTIMECLAIMFLAG VARCHAR2(1),
  CONTLOANFLAG      VARCHAR2(1),
  AUTOPAYFLAG       VARCHAR2(1),
  COINSUFLAG        VARCHAR2(1),
  MAINCOINSUFLAG    VARCHAR2(1),
  STANDBYFLAG1      VARCHAR2(10),
  STANDBYFLAG2      VARCHAR2(10),
  STANDBYFLAG3      VARCHAR2(10),
  SENDSTATE         VARCHAR2(2) not null,
  ERRORREASON       VARCHAR2(4000),
  POLICYSEQUENCENO  VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table DPCPOLICYINFO_B
  add constraint PK_DPCPOLICYINFO_B primary key (POLICYNO);


create table DPCRISK
(
  POLICYNO                   VARCHAR2(30) not null,
  POLNO                      VARCHAR2(30) not null,
  CONTNO                     VARCHAR2(30) not null,
  COVERAGETYPE               VARCHAR2(1),
  COVERAGECODE               VARCHAR2(5),
  RISKCODE                   VARCHAR2(60) not null,
  RISKNAME                   VARCHAR2(200),
  CVALIDATE                  DATE,
  ENDDATE                    DATE,
  PREM                       NUMBER(20,2),
  ORIGINALAMNT               NUMBER(20,2),
  EFFECTIVEAMNT              NUMBER(20,2),
  PAYCOUNT                   NUMBER(3),
  SPECIFICBUSINESS           VARCHAR2(1),
  SPECIFICBUSINESSCODE       VARCHAR2(5),
  MAKEDATE                   DATE,
  MAKETIME                   VARCHAR2(8),
  MODIFYDATE                 DATE,
  MODIFYTIME                 VARCHAR2(8),
  SUBRISKFLAG                VARCHAR2(1),
  PAYINTV                    NUMBER(3),
  PAYYEARS                   NUMBER(3),
  RISKSTATUS                 VARCHAR2(1),
  CUSTOMERNO                 VARCHAR2(60),
  COVERAGEDAYAMOUNT          NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT NUMBER(20,2),
  COVERAGEYEARPREMIUM        NUMBER(20,2),
  PREMIUMSOURCE              VARCHAR2(2)
)
;
comment on table DPCRISK
  is '个单或团体保单下无承保计划中的险种信息';
comment on column DPCRISK.SPECIFICBUSINESSCODE
  is 'XP  学生平安险
HK  航空意外险
JG  建筑工人意外伤害险
ZX001  健康险专项业务-新农合
ZX002  健康险专项业务-新农合补充
ZX003  健康险专项业务-城镇职工基本医疗
ZX004  健康险专项业务-城镇职工补充医疗
ZX005  健康险专项业务-城镇居民基本医疗
ZX006  健康险专项业务-城镇居民补充医疗
ZX007  健康险专项业务-医疗救助
ZX008  健康险专项业务-企事业团体补充医疗
';
comment on column DPCRISK.SUBRISKFLAG
  is '1  主险
2  附加险
';
comment on column DPCRISK.PAYINTV
  is '1  趸缴
2  月缴
3  季缴
4  半年缴
5  年缴
9  其他
';
alter table DPCRISK
  add constraint PK_DPCRISK primary key (POLNO);


create table DPCRISKIND
(
  POLICYNO                    VARCHAR2(30) not null,
  CONTNO                      VARCHAR2(30) not null,
  POLNO                       VARCHAR2(30) not null,
  COVERAGETYPE                VARCHAR2(1),
  COVERAGECODE                VARCHAR2(5),
  COMCOVERAGECODE             VARCHAR2(60),
  COVERAGENAME                VARCHAR2(200),
  COVERAGEEFFECTIVEDATE       DATE,
  COVERAGEEXPIREDATE          DATE,
  MAINATTACHEDFLAG            VARCHAR2(1),
  COVERAGEPREMIUM             NUMBER(20,2),
  COVERAGECURRENTPREMIUM      NUMBER(20,2),
  COVERAGESUMINSURED          NUMBER(20,2),
  COVERAGEEFFECTIVESUMINSURED NUMBER(20,2),
  PAYMENTMETHOD               VARCHAR2(2),
  PAYMENTYEARS                NUMBER(4),
  PAYMENTNO                   NUMBER(3),
  SPECIFICBUSINESS            VARCHAR2(1),
  SPECIFICBUSINESSCODE        VARCHAR2(5),
  COVERAGESTATUS              VARCHAR2(2),
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8)
)
;


create table DPCRISK_B
(
  POLICYNO             VARCHAR2(30) not null,
  POLNO                VARCHAR2(30) not null,
  CONTNO               VARCHAR2(30) not null,
  COVERAGETYPE         VARCHAR2(1),
  COVERAGECODE         VARCHAR2(5),
  RISKCODE             VARCHAR2(60) not null,
  RISKNAME             VARCHAR2(200),
  CVALIDATE            DATE,
  ENDDATE              DATE,
  PREM                 NUMBER(20,2),
  ORIGINALAMNT         NUMBER(20,2),
  EFFECTIVEAMNT        NUMBER(20,2),
  PAYCOUNT             NUMBER(3),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSINESSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  SUBRISKFLAG          VARCHAR2(1),
  PAYINTV              NUMBER(3),
  PAYYEARS             NUMBER(3),
  RISKSTATUS           VARCHAR2(1),
  CUSTOMERNO           VARCHAR2(60)
)
;
alter table DPCRISK_B
  add constraint PK_DPCRISK_B primary key (POLNO);


create table DPCUW
(
  POLICYNO      VARCHAR2(30) not null,
  CONTNO        VARCHAR2(30) not null,
  POLNO         VARCHAR2(30) not null,
  RISKCODE      VARCHAR2(60) not null,
  UWFLAG        VARCHAR2(2),
  UWDATE        DATE,
  DECLINEREASON VARCHAR2(2),
  STATE         VARCHAR2(2),
  PEFLAG        VARCHAR2(2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
comment on table DPCUW
  is '个单或团体保单下非承保计划中的险种责任的核保结论信息';
comment on column DPCUW.POLNO
  is '对应团体险种号';
alter table DPCUW
  add constraint PK_DPCUW primary key (POLNO);


create table DPDBUSSINFO
(
  BUSSTYPE     VARCHAR2(10) not null,
  BUSSNAME     VARCHAR2(100) not null,
  MTABLENAME   VARCHAR2(255) not null,
  DUTYCODE     VARCHAR2(60) not null,
  ENDDATE      DATE,
  DUTYSTATE    VARCHAR2(2),
  CONTPLANCODE VARCHAR2(30) not null,
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on table DPDBUSSINFO
  is '业务类型描述表';
comment on column DPDBUSSINFO.MTABLENAME
  is '对应团体险种号';
comment on column DPDBUSSINFO.DUTYCODE
  is '多主键用半角逗号隔开';
comment on column DPDBUSSINFO.DUTYSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
alter table DPDBUSSINFO
  add constraint PK_DPDBUSSINFO primary key (BUSSTYPE);


create table DPLBIRTHCLINICRECEIPT
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  HOSPITALCODE        VARCHAR2(10),
  CLINICDATE          DATE,
  SUMFEE              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
comment on table DPLBIRTHCLINICRECEIPT
  is '系统为该收据生成的流水号';
comment on column DPLBIRTHCLINICRECEIPT.MAINFEENO
  is '
';
comment on column DPLBIRTHCLINICRECEIPT.HOSPITALCODE
  is '
';
alter table DPLBIRTHCLINICRECEIPT
  add constraint PK_DPLBIRTHCLINICRECEIPT primary key (CASENO, MAINFEENO);


create table DPLBIRTHHOSPITALRECEIPT
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  HOSPITALCODE        VARCHAR2(10),
  HOSPSTARTDATE       DATE,
  HOSPENDDATE         DATE,
  HOSPITALSTAY        NUMBER(10,2),
  SUMFEE              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
comment on column DPLBIRTHHOSPITALRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLBIRTHHOSPITALRECEIPT.HOSPITALSTAY
  is '账单种类';
comment on column DPLBIRTHHOSPITALRECEIPT.SUMFEE
  is '账单属性';
alter table DPLBIRTHHOSPITALRECEIPT
  add constraint PK_DPLBIRTHHOSPITALRECEIPT primary key (CASENO, MAINFEENO);


create table DPLCLAIM
(
  BUSSBATCHNO            VARCHAR2(30) not null,
  SUBTASKNO              VARCHAR2(30) not null,
  CASENO                 VARCHAR2(50) not null,
  RPTDATE                DATE,
  RPTNO                  VARCHAR2(50),
  RGTDATE                DATE,
  RGTNO                  VARCHAR2(50),
  BATCHNO                VARCHAR2(50),
  ACCIDENTDATE           DATE,
  ACCIDENTTYPE           VARCHAR2(1),
  PROVINCE               VARCHAR2(6),
  CITY                   VARCHAR2(6),
  COUNTY                 VARCHAR2(6),
  ACCPLACE               VARCHAR2(100),
  ACCIDENTSITE           VARCHAR2(500),
  ACCIDENTDESC           VARCHAR2(500),
  INQFLAG                VARCHAR2(1),
  INQLOCFLAG             VARCHAR2(2),
  INQSTARTDATE           DATE,
  INQENDDATE             DATE,
  GIVETYPE               VARCHAR2(2),
  REASON                 VARCHAR2(8),
  ACCIDENTDETAIL         VARCHAR2(7),
  CLINICTIMES            NUMBER(8),
  HOSPITALIZATIONTIMES   NUMBER(8),
  CLINICAMOUNT           NUMBER(10,2),
  CLINICREFUSEAMOUNT     NUMBER(10,2),
  CLINICSOCIALPLANAMOUNT NUMBER(10,2),
  CLINICOTHEROGANAMNT    NUMBER(10,2),
  HOSPAMOUNT             NUMBER(10,2),
  HOSPREFUSEAMOUNT       NUMBER(10,2),
  HOSPSOCIALPLANAMOUNT   NUMBER(10,2),
  HOSPOTHEROGANAMNT      NUMBER(10,2),
  REALPAY                NUMBER(14,2),
  ENDCASEDATE            DATE,
  ENDCASETIME            VARCHAR2(8),
  CASESTATUS             VARCHAR2(2),
  SENDSTATE              VARCHAR2(2) not null,
  ERRORREASON            VARCHAR2(4000),
  CLAIMSEQUENCENO        VARCHAR2(50),
  OPERATOR               VARCHAR2(10),
  MODIFYDATE             DATE,
  MODIFYTIME             VARCHAR2(8),
  MAKEDATE               DATE,
  MAKETIME               VARCHAR2(8),
  HOSPITALCODE           VARCHAR2(10),
  CLAIMDATE              DATE
)
;
comment on column DPLCLAIM.BATCHNO
  is '暂无批次理赔，默认为CaseNo';
comment on column DPLCLAIM.ACCIDENTTYPE
  is '1  疾病
2  意外
9  其他
';
comment on column DPLCLAIM.GIVETYPE
  is '01 正常
02 协议
03 比例
04 拒赔
05 通融赔付
99 其他
';
comment on column DPLCLAIM.REALPAY
  is '案件总赔款金额';
comment on column DPLCLAIM.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
alter table DPLCLAIM
  add constraint PK_DPLCLAIM primary key (CASENO);
create unique index DPLCLAIM_INDEX_1 on DPLCLAIM (BUSSBATCHNO, CASENO);


create table DPLCLAIMAPP
(
  CASENO         VARCHAR2(50) not null,
  RPTORNAME      VARCHAR2(60),
  SEX            VARCHAR2(1),
  BIRTHDAY       DATE,
  IDTYPE         VARCHAR2(2),
  IDNO           VARCHAR2(30),
  RELATION       VARCHAR2(2),
  PHONE          VARCHAR2(60),
  CONTACTADDRESS VARCHAR2(600),
  MODIFYDATE     DATE,
  MODIFYTIME     VARCHAR2(8),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
comment on table DPLCLAIMAPP
  is '报案/申请人信息';
comment on column DPLCLAIMAPP.CASENO
  is '个人理赔赔案号';
comment on column DPLCLAIMAPP.RPTORNAME
  is '报案人姓名';
comment on column DPLCLAIMAPP.SEX
  is '

';
comment on column DPLCLAIMAPP.BIRTHDAY
  is '出生日期';
comment on column DPLCLAIMAPP.IDTYPE
  is '证件类别';
comment on column DPLCLAIMAPP.IDNO
  is '证件号码';
comment on column DPLCLAIMAPP.RELATION
  is '与出险人关系';
comment on column DPLCLAIMAPP.PHONE
  is '联系电话';
comment on column DPLCLAIMAPP.CONTACTADDRESS
  is '联系地址';
comment on column DPLCLAIMAPP.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLAIMAPP.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLAIMAPP.MAKEDATE
  is '入机日期';
comment on column DPLCLAIMAPP.MAKETIME
  is '入机时间';
alter table DPLCLAIMAPP
  add constraint PK_DPLCLAIMAPP primary key (CASENO);


create table DPLCLAIMAPP_B
(
  CASENO         VARCHAR2(50) not null,
  RPTORNAME      VARCHAR2(60),
  SEX            VARCHAR2(1),
  BIRTHDAY       DATE,
  IDTYPE         VARCHAR2(2),
  IDNO           VARCHAR2(30),
  RELATION       VARCHAR2(2),
  PHONE          VARCHAR2(60),
  CONTACTADDRESS VARCHAR2(600),
  MODIFYDATE     DATE,
  MODIFYTIME     VARCHAR2(8),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
alter table DPLCLAIMAPP_B
  add constraint PK_DPLCLAIMAPP_B primary key (CASENO);


create table DPLCLAIMDETAIL
(
  CASENO                  VARCHAR2(50) not null,
  POLICYNO                VARCHAR2(30) not null,
  CUSTOMERNO              VARCHAR2(60) not null,
  POLNO                   VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60),
  RISKNAME                VARCHAR2(200),
  LIABILITYCLASSIFICATION VARCHAR2(2),
  DUTYCODE                VARCHAR2(60) not null,
  GIVETYPEDESC            VARCHAR2(200),
  GIVETYPE                VARCHAR2(30),
  REALPAY                 NUMBER(14,2),
  OPERATION               VARCHAR2(1),
  HOSPITALCODE            VARCHAR2(10),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8),
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8)
)
;
comment on column DPLCLAIMDETAIL.CUSTOMERNO
  is 'ContNo';
comment on column DPLCLAIMDETAIL.POLNO
  is '

';
alter table DPLCLAIMDETAIL
  add constraint PK_DPLCLAIMDETAIL primary key (CASENO, POLICYNO, CUSTOMERNO, POLNO, DUTYCODE);


create table DPLCLAIMDETAIL_B
(
  CASENO                  VARCHAR2(50) not null,
  POLICYNO                VARCHAR2(30) not null,
  CUSTOMERNO              VARCHAR2(60) not null,
  POLNO                   VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60),
  RISKNAME                VARCHAR2(200),
  LIABILITYCLASSIFICATION VARCHAR2(2),
  DUTYCODE                VARCHAR2(60) not null,
  GIVETYPEDESC            VARCHAR2(200),
  GIVETYPE                VARCHAR2(30),
  REALPAY                 NUMBER(14,2),
  OPERATION               VARCHAR2(1),
  HOSPITALCODE            VARCHAR2(10),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8),
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8)
)
;
alter table DPLCLAIMDETAIL_B
  add constraint PK_DPLCLAIMDETAIL_B primary key (CASENO, POLICYNO, CUSTOMERNO, POLNO, DUTYCODE);


create table DPLCLAIMER
(
  CASENO     VARCHAR2(50) not null,
  NAME       VARCHAR2(60),
  SEX        VARCHAR2(1),
  BIRTHDAY   DATE,
  IDTYPE     VARCHAR2(2),
  IDNO       VARCHAR2(30),
  CUSTOMROLE VARCHAR2(30),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8)
)
;
comment on table DPLCLAIMER
  is '出险人信息';
comment on column DPLCLAIMER.CASENO
  is '个人理赔赔案号';
comment on column DPLCLAIMER.NAME
  is '出险人姓名';
comment on column DPLCLAIMER.SEX
  is '

';
comment on column DPLCLAIMER.BIRTHDAY
  is '出生日期';
comment on column DPLCLAIMER.IDTYPE
  is '证件类别';
comment on column DPLCLAIMER.IDNO
  is '证件号码';
comment on column DPLCLAIMER.CUSTOMROLE
  is '客户身份';
comment on column DPLCLAIMER.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLAIMER.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLAIMER.MAKEDATE
  is '入机日期';
comment on column DPLCLAIMER.MAKETIME
  is '入机时间';
alter table DPLCLAIMER
  add constraint PK_DPLCLAIMER primary key (CASENO);


create table DPLCLAIMER_B
(
  CASENO     VARCHAR2(50) not null,
  NAME       VARCHAR2(60),
  SEX        VARCHAR2(1),
  BIRTHDAY   DATE,
  IDTYPE     VARCHAR2(2),
  IDNO       VARCHAR2(30),
  CUSTOMROLE VARCHAR2(30),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8)
)
;
alter table DPLCLAIMER_B
  add constraint PK_DPLCLAIMER_B primary key (CASENO);


create table DPLCLAIMPOLICY
(
  CASENO       VARCHAR2(50) not null,
  POLICYNO     VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(60) not null,
  REALPAY      NUMBER(14,2),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  OFFERSTATUS  VARCHAR2(2),
  RENEWALTIMES NUMBER(8)
)
;
comment on table DPLCLAIMPOLICY
  is '保单赔付';
comment on column DPLCLAIMPOLICY.CASENO
  is '个人理赔赔案号';
comment on column DPLCLAIMPOLICY.POLICYNO
  is '保单号';
comment on column DPLCLAIMPOLICY.CUSTOMERNO
  is 'ContNo';
comment on column DPLCLAIMPOLICY.REALPAY
  is '赔付总金额';
comment on column DPLCLAIMPOLICY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLAIMPOLICY.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLAIMPOLICY.MAKEDATE
  is '入机日期';
comment on column DPLCLAIMPOLICY.MAKETIME
  is '入机时间';
alter table DPLCLAIMPOLICY
  add constraint PK_DPLCLAIMPOLICY primary key (CASENO, POLICYNO, CUSTOMERNO);


create table DPLCLAIMPOLICY_B
(
  CASENO      VARCHAR2(50) not null,
  POLICYNO    VARCHAR2(30) not null,
  CUSTOMERNO  VARCHAR2(60) not null,
  REALPAY     NUMBER(14,2),
  MODIFYDATE  DATE,
  MODIFYTIME  VARCHAR2(8),
  MAKEDATE    DATE,
  MAKETIME    VARCHAR2(8),
  OFFERSTATUS VARCHAR2(2)
)
;
alter table DPLCLAIMPOLICY_B
  add constraint PK_DPLCLAIMPOLICY_B primary key (CASENO, POLICYNO, CUSTOMERNO);


create table DPLCLAIMREASON
(
  CASENO       VARCHAR2(50) not null,
  CLAIMREASON  VARCHAR2(60) not null,
  ACCIDENTDATE DATE,
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8)
)
;
comment on table DPLCLAIMREASON
  is '出险结果';
comment on column DPLCLAIMREASON.CASENO
  is '个人理赔赔案号';
comment on column DPLCLAIMREASON.CLAIMREASON
  is '对应LLAppClaimReason出险原因
01	身故
02	高残
03	伤残
04	重大疾病
05	失能
06	护理
07	医疗（包括费用补偿和定额给付）
08	特定疾病（非重疾）
99	其他
';
comment on column DPLCLAIMREASON.ACCIDENTDATE
  is '不同的出险结果对应不同的时间
01	身故  身故日期
02	高残  残疾确诊日
03	伤残  残疾确诊日
04	重大疾病  重疾确诊日
05	失能  无（出险日期）
06	护理  无（出险日期）
07	医疗（包括费用补偿和定额给付）  出险日期
08	特定疾病（非重疾）  无（出险日期）
99	其他   无（出险日期）

';
comment on column DPLCLAIMREASON.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLAIMREASON.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLAIMREASON.MAKEDATE
  is '入机日期';
comment on column DPLCLAIMREASON.MAKETIME
  is '入机时间';
alter table DPLCLAIMREASON
  add constraint PK_DPLCLAIMREASON primary key (CASENO, CLAIMREASON);


create table DPLCLAIMREASON_B
(
  CASENO       VARCHAR2(50) not null,
  CLAIMREASON  VARCHAR2(60) not null,
  ACCIDENTDATE DATE,
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8)
)
;
alter table DPLCLAIMREASON_B
  add constraint PK_DPLCLAIMREASON_B primary key (CASENO, CLAIMREASON);


create table DPLCLAIMRECEIPT
(
  CASENO          VARCHAR2(50) not null,
  MAINFEENO       VARCHAR2(30) not null,
  STATE           VARCHAR2(1),
  HOSPSTARTDATE   DATE,
  HOSPITALCODE    VARCHAR2(10),
  HOSPITALNAME    VARCHAR2(100),
  LISHOSPITALCODE VARCHAR2(10),
  LISHOSPITALNAME VARCHAR2(100),
  MODIFYDATE      DATE,
  MODIFYTIME      VARCHAR2(8),
  MAKEDATE        DATE,
  MAKETIME        VARCHAR2(8)
)
;
comment on column DPLCLAIMRECEIPT.CASENO
  is '赔案号';
comment on column DPLCLAIMRECEIPT.MAINFEENO
  is '账单号';
comment on column DPLCLAIMRECEIPT.STATE
  is '账单号状态 0-未补录 1-已补录';
comment on column DPLCLAIMRECEIPT.HOSPSTARTDATE
  is '门诊发生日期';
alter table DPLCLAIMRECEIPT
  add constraint PK_DPLCLAIMRECEIPT primary key (CASENO, MAINFEENO);


create table DPLCLAIMRECEIPT_B
(
  CASENO          VARCHAR2(50) not null,
  MAINFEENO       VARCHAR2(30) not null,
  STATE           VARCHAR2(1),
  HOSPSTARTDATE   DATE,
  HOSPITALCODE    VARCHAR2(10),
  HOSPITALNAME    VARCHAR2(100),
  LISHOSPITALCODE VARCHAR2(10),
  LISHOSPITALNAME VARCHAR2(100),
  MODIFYDATE      DATE,
  MODIFYTIME      VARCHAR2(8),
  MAKEDATE        DATE,
  MAKETIME        VARCHAR2(8)
)
;
comment on column DPLCLAIMRECEIPT_B.CASENO
  is '赔案号';
comment on column DPLCLAIMRECEIPT_B.MAINFEENO
  is '账单号';
comment on column DPLCLAIMRECEIPT_B.STATE
  is '账单号状态 0-未补录 1-已补录';
comment on column DPLCLAIMRECEIPT_B.HOSPSTARTDATE
  is '门诊发生日期';
alter table DPLCLAIMRECEIPT_B
  add constraint PK_DPLCLAIMRECEIPT_B primary key (CASENO, MAINFEENO);


create table DPLCLAIM_B
(
  BUSSBATCHNO            VARCHAR2(30) not null,
  SUBTASKNO              VARCHAR2(30) not null,
  CASENO                 VARCHAR2(50) not null,
  RPTDATE                DATE,
  RPTNO                  VARCHAR2(50),
  RGTDATE                DATE,
  RGTNO                  VARCHAR2(50),
  BATCHNO                VARCHAR2(50),
  ACCIDENTDATE           DATE,
  ACCIDENTTYPE           VARCHAR2(1),
  PROVINCE               VARCHAR2(6),
  CITY                   VARCHAR2(6),
  COUNTY                 VARCHAR2(6),
  ACCPLACE               VARCHAR2(300),
  ACCIDENTSITE           VARCHAR2(500),
  ACCIDENTDESC           VARCHAR2(500),
  INQFLAG                VARCHAR2(1),
  INQLOCFLAG             VARCHAR2(2),
  INQSTARTDATE           DATE,
  INQENDDATE             DATE,
  GIVETYPE               VARCHAR2(2),
  REASON                 VARCHAR2(8),
  ACCIDENTDETAIL         VARCHAR2(7),
  CLINICTIMES            NUMBER(8),
  HOSPITALIZATIONTIMES   NUMBER(8),
  CLINICAMOUNT           NUMBER(10,2),
  CLINICREFUSEAMOUNT     NUMBER(10,2),
  CLINICSOCIALPLANAMOUNT NUMBER(10,2),
  CLINICOTHEROGANAMNT    NUMBER(10,2),
  HOSPAMOUNT             NUMBER(10,2),
  HOSPREFUSEAMOUNT       NUMBER(10,2),
  HOSPSOCIALPLANAMOUNT   NUMBER(10,2),
  HOSPOTHEROGANAMNT      NUMBER(10,2),
  REALPAY                NUMBER(14,2),
  ENDCASEDATE            DATE,
  ENDCASETIME            VARCHAR2(8),
  CASESTATUS             VARCHAR2(2),
  SENDSTATE              VARCHAR2(2) not null,
  ERRORREASON            VARCHAR2(4000),
  CLAIMSEQUENCENO        VARCHAR2(50),
  OPERATOR               VARCHAR2(10),
  MODIFYDATE             DATE,
  MODIFYTIME             VARCHAR2(8),
  MAKEDATE               DATE,
  MAKETIME               VARCHAR2(8),
  HOSPITALCODE           VARCHAR2(10)
)
;
alter table DPLCLAIM_B
  add constraint PK_DPLCLAIM_B primary key (CASENO);
create unique index DPLCLAIM_B_INDEX_1 on DPLCLAIM_B (BUSSBATCHNO, CASENO);


create table DPLCLINICRECEIPT
(
  CASENO               VARCHAR2(50) not null,
  MAINFEENO            VARCHAR2(30) not null,
  RECEIPTNO            VARCHAR2(60),
  HOSPITALCODE         VARCHAR2(10),
  FEETYPE              VARCHAR2(2),
  CLINICDATE           DATE,
  SUMFEE               NUMBER(10,2),
  CASH                 NUMBER(10,2),
  ACCPAYMENT           NUMBER(10,2),
  ACCBALANCE           NUMBER(10,2),
  MEDICALPAYMENT       NUMBER(10,2),
  TOTALMEDICALPAYMENT  NUMBER(10,2),
  TOTALANNUALPAYMENT   NUMBER(10,2),
  INSURANCEPAYMENT     NUMBER(10,2),
  CLINICLARGEPAYMENT   NUMBER(10,2),
  RETIREMENTPAYMENT    NUMBER(10,2),
  DISABILITYSOLDIER    NUMBER(10,2),
  CIVILSERVANTS        NUMBER(10,2),
  BALANCEANNUALPAYMENT NUMBER(10,2),
  INDIVIDUALPAYMENT    NUMBER(10,2),
  PAYMENTA             NUMBER(10,2),
  PAYMENTFROM          NUMBER(10,2),
  PAYMENTCAP           NUMBER(10,2),
  PAYMENTB             NUMBER(10,2),
  OWNEXPENSE           NUMBER(10,2),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8)
)
;
comment on table DPLCLINICRECEIPT
  is '门诊医疗收据';
comment on column DPLCLINICRECEIPT.CASENO
  is '个人理赔赔案号';
comment on column DPLCLINICRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLCLINICRECEIPT.RECEIPTNO
  is '收据编号';
comment on column DPLCLINICRECEIPT.HOSPITALCODE
  is '医院代码';
comment on column DPLCLINICRECEIPT.FEETYPE
  is '医疗责任分类';
comment on column DPLCLINICRECEIPT.CLINICDATE
  is '门诊发生日期';
comment on column DPLCLINICRECEIPT.SUMFEE
  is '门诊发生金额';
comment on column DPLCLINICRECEIPT.CASH
  is '账单种类';
comment on column DPLCLINICRECEIPT.ACCPAYMENT
  is '账单属性';
comment on column DPLCLINICRECEIPT.ACCBALANCE
  is '个人账户余额';
comment on column DPLCLINICRECEIPT.MEDICALPAYMENT
  is '医疗保险范围内金额';
comment on column DPLCLINICRECEIPT.TOTALMEDICALPAYMENT
  is '累计医保范围内金额';
comment on column DPLCLINICRECEIPT.TOTALANNUALPAYMENT
  is '年度门诊大额累计支付';
comment on column DPLCLINICRECEIPT.INSURANCEPAYMENT
  is '医疗保险基金支付金额';
comment on column DPLCLINICRECEIPT.CLINICLARGEPAYMENT
  is '其中门诊大额支付';
comment on column DPLCLINICRECEIPT.RETIREMENTPAYMENT
  is '其中退休补充保险支付';
comment on column DPLCLINICRECEIPT.DISABILITYSOLDIER
  is '其中残疾军人补助支付';
comment on column DPLCLINICRECEIPT.CIVILSERVANTS
  is '其中公务员医疗补助支付';
comment on column DPLCLINICRECEIPT.BALANCEANNUALPAYMENT
  is '年度门诊大额余额';
comment on column DPLCLINICRECEIPT.INDIVIDUALPAYMENT
  is '个人自付、自费金额';
comment on column DPLCLINICRECEIPT.PAYMENTA
  is '自付一';
comment on column DPLCLINICRECEIPT.PAYMENTFROM
  is '其中起付金额';
comment on column DPLCLINICRECEIPT.PAYMENTCAP
  is '其中超大额封顶金额';
comment on column DPLCLINICRECEIPT.PAYMENTB
  is '自付二';
comment on column DPLCLINICRECEIPT.OWNEXPENSE
  is '自费';
comment on column DPLCLINICRECEIPT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLINICRECEIPT.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLINICRECEIPT.MAKEDATE
  is '入机日期';
comment on column DPLCLINICRECEIPT.MAKETIME
  is '入机时间';
alter table DPLCLINICRECEIPT
  add constraint PK_DPLCLINICRECEIPT primary key (MAINFEENO);


create table DPLCLINICSPECRECEIPT
(
  CASENO                     VARCHAR2(50) not null,
  MAINFEENO                  VARCHAR2(30) not null,
  RECEIPTNO                  VARCHAR2(60),
  HOSPITALCODE               VARCHAR2(10),
  FEETYPE                    VARCHAR2(2),
  CLINICDATE                 DATE,
  SUMFEE                     NUMBER(10,2),
  MEDICALPAYMENT             NUMBER(10,2),
  INSURANCEPAYMENT           NUMBER(10,2),
  COORDINATIONFUND           NUMBER(10,2),
  MUTUALPAYMENT              NUMBER(10,2),
  RETIREMENTPAYMENT          NUMBER(10,2),
  DISABILITYSOLDIER          NUMBER(10,2),
  CIVILSERVANTS              NUMBER(10,2),
  INDIVIDUALPAYMENT          NUMBER(10,2),
  PAYMENTA                   NUMBER(10,2),
  PAYMENTFROM                NUMBER(10,2),
  PAYMENTCAP                 NUMBER(10,2),
  PAYMENTB                   NUMBER(10,2),
  OWNEXPENSE                 NUMBER(10,2),
  CASH                       NUMBER(10,2),
  ACCPAYMENT                 NUMBER(10,2),
  ACCBALANCE                 NUMBER(10,2),
  YEARANNUALCOORDINATIONFUND NUMBER(10,2),
  YEARANNUALMUTUALPAYMENT    NUMBER(10,2),
  MODIFYDATE                 DATE,
  MODIFYTIME                 VARCHAR2(8),
  MAKEDATE                   DATE,
  MAKETIME                   VARCHAR2(8)
)
;
comment on table DPLCLINICSPECRECEIPT
  is '系统为该收据生成的流水号';
comment on column DPLCLINICSPECRECEIPT.CASENO
  is '个人理赔赔案号';
comment on column DPLCLINICSPECRECEIPT.MAINFEENO
  is '
';
comment on column DPLCLINICSPECRECEIPT.RECEIPTNO
  is '
';
comment on column DPLCLINICSPECRECEIPT.HOSPITALCODE
  is '
';
comment on column DPLCLINICSPECRECEIPT.FEETYPE
  is '账单类型';
comment on column DPLCLINICSPECRECEIPT.CLINICDATE
  is '门诊发生日期';
comment on column DPLCLINICSPECRECEIPT.SUMFEE
  is '门诊特殊病发生金额';
comment on column DPLCLINICSPECRECEIPT.MEDICALPAYMENT
  is '医疗保险范围内金额';
comment on column DPLCLINICSPECRECEIPT.INSURANCEPAYMENT
  is '医疗保险基金支付金额';
comment on column DPLCLINICSPECRECEIPT.COORDINATIONFUND
  is '其中统筹基金支付';
comment on column DPLCLINICSPECRECEIPT.MUTUALPAYMENT
  is '大额互助资金（住院）支付';
comment on column DPLCLINICSPECRECEIPT.RETIREMENTPAYMENT
  is '退休补充保险支付';
comment on column DPLCLINICSPECRECEIPT.DISABILITYSOLDIER
  is '残疾军人补助支付';
comment on column DPLCLINICSPECRECEIPT.CIVILSERVANTS
  is '公务员医疗补助支付';
comment on column DPLCLINICSPECRECEIPT.INDIVIDUALPAYMENT
  is '个人自付、自费金额';
comment on column DPLCLINICSPECRECEIPT.PAYMENTA
  is '自付一';
comment on column DPLCLINICSPECRECEIPT.PAYMENTFROM
  is '其中起付金额';
comment on column DPLCLINICSPECRECEIPT.PAYMENTCAP
  is '其中超大额封顶金额';
comment on column DPLCLINICSPECRECEIPT.PAYMENTB
  is '自付二';
comment on column DPLCLINICSPECRECEIPT.OWNEXPENSE
  is '自费';
comment on column DPLCLINICSPECRECEIPT.CASH
  is '本次个人现金支付金额';
comment on column DPLCLINICSPECRECEIPT.ACCPAYMENT
  is '账单属性';
comment on column DPLCLINICSPECRECEIPT.ACCBALANCE
  is '个人账户余额';
comment on column DPLCLINICSPECRECEIPT.YEARANNUALCOORDINATIONFUND
  is '本年度统筹基金累计支付';
comment on column DPLCLINICSPECRECEIPT.YEARANNUALMUTUALPAYMENT
  is '本年度大额互助资金（住院）累计支付';
comment on column DPLCLINICSPECRECEIPT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLCLINICSPECRECEIPT.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLCLINICSPECRECEIPT.MAKEDATE
  is '入机日期';
comment on column DPLCLINICSPECRECEIPT.MAKETIME
  is '入机时间';
alter table DPLCLINICSPECRECEIPT
  add constraint PK_DPLCLINICSPECRECEIPT primary key (MAINFEENO);


create table DPLCOOPHOSRECEIPT
(
  CASENO                  VARCHAR2(50) not null,
  MAINFEENO               VARCHAR2(30) not null,
  HOSPITALCODE            VARCHAR2(10),
  HOSPSTARTDATE           DATE,
  HOSPENDDATE             DATE,
  HOSPITALSTAY            NUMBER(10,2),
  SUMFEE                  NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT     NUMBER(20,2),
  NRCMSREIMBURSEMENTMONEY NUMBER(20,2),
  RECEIPTCLAIMAMOUNT      NUMBER(10,2),
  OPERATION               VARCHAR2(1),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8),
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8)
)
;
comment on column DPLCOOPHOSRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLCOOPHOSRECEIPT.HOSPITALSTAY
  is '账单种类';
comment on column DPLCOOPHOSRECEIPT.SUMFEE
  is '账单属性';
alter table DPLCOOPHOSRECEIPT
  add constraint PK_DPLCOOPHOSRECEIPT primary key (CASENO, MAINFEENO);


create table DPLCOSTDETA
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  FEEDETAILNO         VARCHAR2(30) not null,
  FEEITEMCODE         VARCHAR2(30) not null,
  MEDICALDETAILNAME   VARCHAR2(500),
  FEEAMOUNT           NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  QUANTITY            NUMBER(10),
  UNITPRICE           NUMBER(10,2),
  UNIT                NUMBER(10),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;


create table DPLCOSTITEM
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  FEEDETAILNO         VARCHAR2(30) not null,
  FEEITEMCODE         VARCHAR2(30),
  FEEITEMNAME         VARCHAR2(100),
  AMOUNT              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
comment on column DPLCOSTITEM.MAINFEENO
  is '系统为该收据生成的流水号';
create unique index PK_DPLCOSTITEM on DPLCOSTITEM (CASENO, MAINFEENO, FEEDETAILNO, FEEITEMCODE);


create table DPLDIAGNOSIS
(
  CASENO        VARCHAR2(50) not null,
  CUSTOMERNO    VARCHAR2(60),
  POLNO         VARCHAR2(30),
  RISKCODE      VARCHAR2(60),
  RISKNAME      VARCHAR2(200),
  DUTYCODE      VARCHAR2(60),
  CODE          VARCHAR2(10),
  DIAGNOSISTYPE VARCHAR2(2),
  DIAGNOSISNAME VARCHAR2(100),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MAINFEENO     VARCHAR2(30) not null,
  DIAGTYPE      VARCHAR2(2)
)
;
comment on column DPLDIAGNOSIS.CODE
  is '西医疾病或手术代码';
comment on column DPLDIAGNOSIS.DIAGNOSISTYPE
  is '诊断类型';


create table DPLDISEASE
(
  CASENO      VARCHAR2(50) not null,
  MAINFEENO   VARCHAR2(30) not null,
  DISEASECODE VARCHAR2(10) not null,
  MODIFYDATE  DATE,
  MODIFYTIME  VARCHAR2(8),
  MAKEDATE    DATE,
  MAKETIME    VARCHAR2(8)
)
;
comment on table DPLDISEASE
  is '挂在账单下
';
comment on column DPLDISEASE.CASENO
  is '个人理赔赔案号';
comment on column DPLDISEASE.MAINFEENO
  is '账单号';
comment on column DPLDISEASE.DISEASECODE
  is '疾病代码';
comment on column DPLDISEASE.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLDISEASE.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLDISEASE.MAKEDATE
  is '入机日期';
comment on column DPLDISEASE.MAKETIME
  is '入机时间';
alter table DPLDISEASE
  add constraint PK_DPLDISEASE primary key (MAINFEENO, DISEASECODE);


create table DPLDISEASE1
(
  CASENO      VARCHAR2(50) not null,
  POLICYNO    VARCHAR2(30) not null,
  CUSTOMERNO  VARCHAR2(60) not null,
  POLNO       VARCHAR2(30) not null,
  DUTYCODE    VARCHAR2(60) not null,
  DISEASECODE VARCHAR2(10) not null,
  MODIFYDATE  DATE,
  MODIFYTIME  VARCHAR2(8),
  MAKEDATE    DATE,
  MAKETIME    VARCHAR2(8)
)
;
comment on table DPLDISEASE1
  is '挂在保单责任赔付数组
与DPLDisease不同。';
comment on column DPLDISEASE1.CASENO
  is '个人理赔赔案号';
comment on column DPLDISEASE1.POLICYNO
  is '保单号';
comment on column DPLDISEASE1.CUSTOMERNO
  is 'ContNo';
comment on column DPLDISEASE1.POLNO
  is '

';
comment on column DPLDISEASE1.DUTYCODE
  is '责任代码';
comment on column DPLDISEASE1.DISEASECODE
  is '疾病代码';
comment on column DPLDISEASE1.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLDISEASE1.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLDISEASE1.MAKEDATE
  is '入机日期';
comment on column DPLDISEASE1.MAKETIME
  is '入机时间';
alter table DPLDISEASE1
  add constraint PK_DPLDISEASE1 primary key (POLICYNO, CUSTOMERNO, POLNO, DUTYCODE, DISEASECODE);


create table DPLHOSPITALRECEIPT
(
  CASENO                 VARCHAR2(50) not null,
  MAINFEENO              VARCHAR2(30) not null,
  RECEIPTNO              VARCHAR2(60),
  HOSPITALCODE           VARCHAR2(10),
  FEETYPE                VARCHAR2(2),
  HOSPSTARTDATE          DATE,
  HOSPENDDATE            DATE,
  HOSPITALSTAY           NUMBER(10,2),
  SUMFEE                 NUMBER(10,2),
  MEDICALPAYMENT         NUMBER(10,2),
  COORDINATIONFUND       NUMBER(10,2),
  PAYMENTA               NUMBER(10,2),
  PAYMENTFROM            NUMBER(10,2),
  MUTUALPAYMENT          NUMBER(10,2),
  CIVILSERVANTS          NUMBER(10,2),
  BESIDEINSURANCEPAYMENT NUMBER(10,2),
  OWNEXPENSE             NUMBER(10,2),
  PAYMENTB               NUMBER(10,2),
  TOTALOWNEXPENSE        NUMBER(10,2),
  CASH                   NUMBER(10,2),
  ACCPAYMENT             NUMBER(10,2),
  MODIFYDATE             DATE,
  MODIFYTIME             VARCHAR2(8),
  MAKEDATE               DATE,
  MAKETIME               VARCHAR2(8)
)
;
comment on table DPLHOSPITALRECEIPT
  is '住院医疗收据';
comment on column DPLHOSPITALRECEIPT.CASENO
  is '个人理赔赔案号';
comment on column DPLHOSPITALRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLHOSPITALRECEIPT.RECEIPTNO
  is '收据编号';
comment on column DPLHOSPITALRECEIPT.HOSPITALCODE
  is '医院代码';
comment on column DPLHOSPITALRECEIPT.FEETYPE
  is '医疗责任分类';
comment on column DPLHOSPITALRECEIPT.HOSPSTARTDATE
  is '入院日期';
comment on column DPLHOSPITALRECEIPT.HOSPENDDATE
  is '出院日期';
comment on column DPLHOSPITALRECEIPT.HOSPITALSTAY
  is '账单种类';
comment on column DPLHOSPITALRECEIPT.SUMFEE
  is '账单属性';
comment on column DPLHOSPITALRECEIPT.MEDICALPAYMENT
  is '医疗保险范围内金额';
comment on column DPLHOSPITALRECEIPT.COORDINATIONFUND
  is '统筹基金支付';
comment on column DPLHOSPITALRECEIPT.PAYMENTA
  is '自付一';
comment on column DPLHOSPITALRECEIPT.PAYMENTFROM
  is '起付金额';
comment on column DPLHOSPITALRECEIPT.MUTUALPAYMENT
  is '大额互助资金支付';
comment on column DPLHOSPITALRECEIPT.CIVILSERVANTS
  is '公务员医疗补助支付';
comment on column DPLHOSPITALRECEIPT.BESIDEINSURANCEPAYMENT
  is '医疗保险范围外金额';
comment on column DPLHOSPITALRECEIPT.OWNEXPENSE
  is '个人支付自费金额';
comment on column DPLHOSPITALRECEIPT.PAYMENTB
  is '自付二';
comment on column DPLHOSPITALRECEIPT.TOTALOWNEXPENSE
  is '个人负担合计';
comment on column DPLHOSPITALRECEIPT.CASH
  is '其中个人现金支付金额';
comment on column DPLHOSPITALRECEIPT.ACCPAYMENT
  is '其中账户支付金额';
comment on column DPLHOSPITALRECEIPT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLHOSPITALRECEIPT.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLHOSPITALRECEIPT.MAKEDATE
  is '入机日期';
comment on column DPLHOSPITALRECEIPT.MAKETIME
  is '入机时间';
alter table DPLHOSPITALRECEIPT
  add constraint PK_DPLHOSPITALRECEIPT primary key (MAINFEENO);


create table DPLMEDICALFEEDETAIL
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  FEEITEMCODE         VARCHAR2(30) not null,
  MEDICALDETAILFEENO  VARCHAR2(30) not null,
  MEDICALDETAILNAME   VARCHAR2(500),
  FEEAMOUNT           NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  QUANTITY            NUMBER(10),
  UNITPRICE           NUMBER(10,2),
  UNIT                NUMBER(10),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
comment on table DPLMEDICALFEEDETAIL
  is '仅针对非医保实时结算收据数组进行收集';
alter table DPLMEDICALFEEDETAIL
  add constraint PK_DPLMEDICALFEEDETAIL primary key (CASENO, FEEITEMCODE, MEDICALDETAILFEENO);


create table DPLNONMEDICARERECEIPT
(
  CASENO         VARCHAR2(50) not null,
  MAINFEENO      VARCHAR2(30) not null,
  RECEIPTNO      VARCHAR2(60),
  HOSPITALCODE   VARCHAR2(10),
  FEEHAPPENDATE  DATE,
  FEEENDDATE     DATE,
  FEETYPE        VARCHAR2(2),
  FEEATTI        VARCHAR2(1),
  SUMFEE         NUMBER(20,2),
  REFUSEAMNT     NUMBER(20,2),
  OTHERORGANAMNT NUMBER(20,2),
  MODIFYDATE     DATE,
  MODIFYTIME     VARCHAR2(8),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
comment on table DPLNONMEDICARERECEIPT
  is '非医保实时结算收据详细信息';
comment on column DPLNONMEDICARERECEIPT.CASENO
  is '个人理赔赔案号';
comment on column DPLNONMEDICARERECEIPT.MAINFEENO
  is '
';
comment on column DPLNONMEDICARERECEIPT.RECEIPTNO
  is '
';
comment on column DPLNONMEDICARERECEIPT.HOSPITALCODE
  is '不同的出险结果对应不同的时间
01	身故  身故日期
02	高残  残疾确诊日
03	伤残  残疾确诊日
04	重大疾病  重疾确诊日
05	失能  无（出险日期）
06	护理  无（出险日期）
07	医疗（包括费用补偿和定额给付）  出险日期
08	特定疾病（非重疾）  无（出险日期）
99	其他   无（出险日期）

';
comment on column DPLNONMEDICARERECEIPT.FEEHAPPENDATE
  is '费用发生起始日期';
comment on column DPLNONMEDICARERECEIPT.FEEENDDATE
  is '费用发生终止日期';
comment on column DPLNONMEDICARERECEIPT.FEETYPE
  is '账单种类';
comment on column DPLNONMEDICARERECEIPT.FEEATTI
  is '账单属性';
comment on column DPLNONMEDICARERECEIPT.SUMFEE
  is '费用金额';
comment on column DPLNONMEDICARERECEIPT.REFUSEAMNT
  is '费用扣减金额';
comment on column DPLNONMEDICARERECEIPT.OTHERORGANAMNT
  is '第三方报销金额';
comment on column DPLNONMEDICARERECEIPT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLNONMEDICARERECEIPT.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLNONMEDICARERECEIPT.MAKEDATE
  is '入机日期';
comment on column DPLNONMEDICARERECEIPT.MAKETIME
  is '入机时间';
alter table DPLNONMEDICARERECEIPT
  add constraint PK_DPLNONMEDICARERECEIPT primary key (MAINFEENO);


create table DPLNONMEDICRECEIPTITEM
(
  CASENO         VARCHAR2(50) not null,
  MAINFEENO      VARCHAR2(30) not null,
  FEEDETAILNO    VARCHAR2(30) not null,
  FEEITEMCODE    VARCHAR2(2),
  FEEITEMNAME    VARCHAR2(100),
  FEE            NUMBER(10,2),
  REFUSEAMNT     NUMBER(20,2),
  OTHERORGANAMNT NUMBER(20,2),
  COUNT          NUMBER(10),
  UNITPRICE      NUMBER(10,2),
  UNIT           NUMBER(10),
  MODIFYDATE     DATE,
  MODIFYTIME     VARCHAR2(8),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
comment on table DPLNONMEDICRECEIPTITEM
  is '非医保医疗费用项目';
comment on column DPLNONMEDICRECEIPTITEM.CASENO
  is '个人理赔赔案号';
comment on column DPLNONMEDICRECEIPTITEM.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLNONMEDICRECEIPTITEM.FEEDETAILNO
  is '医疗费用项目';
comment on column DPLNONMEDICRECEIPTITEM.FEEITEMCODE
  is '医疗费用类别';
comment on column DPLNONMEDICRECEIPTITEM.FEEITEMNAME
  is '医疗费用名称';
comment on column DPLNONMEDICRECEIPTITEM.FEE
  is '金额';
comment on column DPLNONMEDICRECEIPTITEM.REFUSEAMNT
  is '该字段仅针对非医保实时结算收据数组进行收集';
comment on column DPLNONMEDICRECEIPTITEM.OTHERORGANAMNT
  is '该字段仅针对非医保实时结算收据数组进行收集';
comment on column DPLNONMEDICRECEIPTITEM.COUNT
  is '账单种类';
comment on column DPLNONMEDICRECEIPTITEM.UNITPRICE
  is '账单属性';
comment on column DPLNONMEDICRECEIPTITEM.UNIT
  is '规格与单位';
comment on column DPLNONMEDICRECEIPTITEM.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLNONMEDICRECEIPTITEM.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLNONMEDICRECEIPTITEM.MAKEDATE
  is '入机日期';
comment on column DPLNONMEDICRECEIPTITEM.MAKETIME
  is '入机时间';
alter table DPLNONMEDICRECEIPTITEM
  add constraint PK_DPLNONMEDICRECEIPTITEM primary key (FEEDETAILNO);


create table DPLOPERATIONCODE
(
  CASENO        VARCHAR2(50) not null,
  CUSTOMERNO    VARCHAR2(60),
  POLNO         VARCHAR2(30),
  RISKCODE      VARCHAR2(60),
  RISKNAME      VARCHAR2(200),
  DUTYCODE      VARCHAR2(60),
  OPERATIONCODE VARCHAR2(10) not null,
  OPERATIONNAME VARCHAR2(100),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MAINFEENO     VARCHAR2(30) not null
)
;
comment on column DPLOPERATIONCODE.POLNO
  is '

';
comment on column DPLOPERATIONCODE.OPERATIONCODE
  is '手术代码';
alter table DPLOPERATIONCODE
  add constraint PK_DPLOPERATIONCODE primary key (CASENO, MAINFEENO, OPERATIONCODE);


create table DPLORDINARYCLINICRECEIPT
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  HOSPITALCODE        VARCHAR2(10),
  CLINICDATE          DATE,
  SUMFEE              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
alter table DPLORDINARYCLINICRECEIPT
  add constraint PK_DPLORDINARYCLINICRECEIPT primary key (CASENO, MAINFEENO);


create table DPLORDINARYHOSPITALRECEIPT
(
  CASENO              VARCHAR2(50) not null,
  MAINFEENO           VARCHAR2(30) not null,
  HOSPITALCODE        VARCHAR2(10),
  HOSPSTARTDATE       DATE,
  HOSPENDDATE         DATE,
  HOSPITALSTAY        NUMBER(10,2),
  SUMFEE              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1),
  MODIFYDATE          DATE,
  MODIFYTIME          VARCHAR2(8),
  MAKEDATE            DATE,
  MAKETIME            VARCHAR2(8)
)
;
comment on column DPLORDINARYHOSPITALRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLORDINARYHOSPITALRECEIPT.HOSPITALSTAY
  is '账单种类';
comment on column DPLORDINARYHOSPITALRECEIPT.SUMFEE
  is '账单属性';
alter table DPLORDINARYHOSPITALRECEIPT
  add constraint PK_DPLORDINARYHOSPITALRECEIPT primary key (CASENO, MAINFEENO);


create table DPLQAPPROVALRECEIPT
(
  CASENO                      VARCHAR2(50) not null,
  MAINFEENO                   VARCHAR2(30) not null,
  CLINICDATE                  DATE,
  SUMFEE                      NUMBER(10,2),
  MUTUALFUNDPAYA              NUMBER(10,2),
  MUTUALFUNDPAYB              NUMBER(10,2),
  PAYMENTA                    NUMBER(10,2),
  OVERALLFINANCINGPAYMENT     NUMBER(10,2),
  OVERALLFINANCINGYEARPAYMENT NUMBER(10,2),
  PAYMENTB                    NUMBER(10,2),
  OWNEXPENSE                  NUMBER(10,2),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8),
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8)
)
;
alter table DPLQAPPROVALRECEIPT
  add constraint PK_DPLQAPPROVALRECEIPT primary key (CASENO, MAINFEENO);


create table DPLQCLINICRECEIPT
(
  CASENO               VARCHAR2(50) not null,
  MAINFEENO            VARCHAR2(30) not null,
  HOSPITALCODE         VARCHAR2(10),
  CLINICDATE           DATE,
  SUMFEE               NUMBER(10,2),
  CASH                 NUMBER(10,2),
  ACCPAYMENT           NUMBER(10,2),
  ACCBALANCE           NUMBER(10,2),
  MEDICALPAYMENT       NUMBER(10,2),
  TOTALMEDICALPAYMENT  NUMBER(10,2),
  TOTALANNUALPAYMENT   NUMBER(10,2),
  INSURANCEPAYMENT     NUMBER(10,2),
  CLINICLARGEPAYMENT   NUMBER(10,2),
  RETIREMENTPAYMENT    NUMBER(10,2),
  DISABILITYSOLDIER    NUMBER(10,2),
  CIVILSERVANTS        NUMBER(10,2),
  BALANCEANNUALPAYMENT NUMBER(10,2),
  INDIVIDUALPAYMENT    NUMBER(10,2),
  PAYMENTA             NUMBER(10,2),
  PAYMENTFROM          NUMBER(10,2),
  PAYMENTCAP           NUMBER(10,2),
  PAYMENTB             NUMBER(10,2),
  OWNEXPENSE           NUMBER(10,2),
  RECEIPTCLAIMAMOUNT   NUMBER(10,2),
  OPERATION            VARCHAR2(1),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8)
)
;
comment on column DPLQCLINICRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLQCLINICRECEIPT.CASH
  is '账单种类';
comment on column DPLQCLINICRECEIPT.ACCPAYMENT
  is '账单属性';
alter table DPLQCLINICRECEIPT
  add constraint PK_DPLQCLINICRECEIPT primary key (CASENO, MAINFEENO);


create table DPLQCLINICSPECRECEIPT
(
  CASENO                     VARCHAR2(50) not null,
  MAINFEENO                  VARCHAR2(30) not null,
  HOSPITALCODE               VARCHAR2(10),
  CLINICDATE                 DATE,
  SUMFEE                     NUMBER(10,2),
  MEDICALPAYMENT             NUMBER(10,2),
  INSURANCEPAYMENT           NUMBER(10,2),
  COORDINATIONFUND           NUMBER(10,2),
  MUTUALPAYMENT              NUMBER(10,2),
  RETIREMENTPAYMENT          NUMBER(10,2),
  DISABILITYSOLDIER          NUMBER(10,2),
  CIVILSERVANTS              NUMBER(10,2),
  INDIVIDUALPAYMENT          NUMBER(10,2),
  PAYMENTA                   NUMBER(10,2),
  PAYMENTFROM                NUMBER(10,2),
  PAYMENTCAP                 NUMBER(10,2),
  PAYMENTB                   NUMBER(10,2),
  OWNEXPENSE                 NUMBER(10,2),
  CASH                       NUMBER(10,2),
  ACCPAYMENT                 NUMBER(10,2),
  YEARANNUALCOORDINATIONFUND NUMBER(10,2),
  YEARANNUALMUTUALPAYMENT    NUMBER(10,2),
  ACCBALANCE                 NUMBER(10,2),
  OPERATION                  VARCHAR2(1),
  MODIFYDATE                 DATE,
  MODIFYTIME                 VARCHAR2(8),
  MAKEDATE                   DATE,
  MAKETIME                   VARCHAR2(8)
)
;
comment on table DPLQCLINICSPECRECEIPT
  is '系统为该收据生成的流水号';
comment on column DPLQCLINICSPECRECEIPT.MAINFEENO
  is '
';
comment on column DPLQCLINICSPECRECEIPT.HOSPITALCODE
  is '
';
comment on column DPLQCLINICSPECRECEIPT.ACCPAYMENT
  is '账单属性';
alter table DPLQCLINICSPECRECEIPT
  add constraint PK_DPLQCLINICSPECRECEIPT primary key (CASENO, MAINFEENO);


create table DPLQHOSPITALRECEIPT
(
  CASENO                 VARCHAR2(50) not null,
  MAINFEENO              VARCHAR2(30) not null,
  HOSPITALCODE           VARCHAR2(10),
  HOSPSTARTDATE          DATE,
  HOSPENDDATE            DATE,
  HOSPITALSTAY           NUMBER(10,2),
  SUMFEE                 NUMBER(10,2),
  MEDICALPAYMENT         NUMBER(10,2),
  INSURANCEPAYMENT       NUMBER(10,2),
  COORDINATIONFUND       NUMBER(10,2),
  PAYMENTA               NUMBER(10,2),
  PAYMENTFROM            NUMBER(10,2),
  MUTUALPAYMENT          NUMBER(10,2),
  CIVILSERVANTS          NUMBER(10,2),
  BESIDEINSURANCEPAYMENT NUMBER(10,2),
  OWNEXPENSE             NUMBER(10,2),
  PAYMENTB               NUMBER(10,2),
  TOTALOWNEXPENSE        NUMBER(10,2),
  CASH                   NUMBER(10,2),
  ACCPAYMENT             NUMBER(10,2),
  RECEIPTCLAIMAMOUNT     NUMBER(10,2),
  OPERATION              VARCHAR2(1),
  MODIFYDATE             DATE,
  MODIFYTIME             VARCHAR2(8),
  MAKEDATE               DATE,
  MAKETIME               VARCHAR2(8)
)
;
comment on column DPLQHOSPITALRECEIPT.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLQHOSPITALRECEIPT.HOSPITALSTAY
  is '账单种类';
comment on column DPLQHOSPITALRECEIPT.SUMFEE
  is '账单属性';
alter table DPLQHOSPITALRECEIPT
  add constraint PK_DPLQHOSPITALRECEIPT primary key (CASENO, MAINFEENO);


create table DPLRECEIPTITEM
(
  CASENO         VARCHAR2(50) not null,
  MAINFEENO      VARCHAR2(30) not null,
  FEEDETAILNO    VARCHAR2(30) not null,
  FEEITEMCODE    VARCHAR2(2),
  FEEITEMNAME    VARCHAR2(100),
  FEE            NUMBER(10,2),
  REFUSEAMNT     NUMBER(20,2),
  OTHERORGANAMNT NUMBER(20,2),
  COUNT          NUMBER(10),
  UNITPRICE      NUMBER(10,2),
  UNIT           NUMBER(10),
  MODIFYDATE     DATE,
  MODIFYTIME     VARCHAR2(8),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
comment on table DPLRECEIPTITEM
  is '医疗费用项目';
comment on column DPLRECEIPTITEM.CASENO
  is '个人理赔赔案号';
comment on column DPLRECEIPTITEM.MAINFEENO
  is '系统为该收据生成的流水号';
comment on column DPLRECEIPTITEM.FEEDETAILNO
  is '医疗费用项目';
comment on column DPLRECEIPTITEM.FEEITEMCODE
  is '医疗费用类别';
comment on column DPLRECEIPTITEM.FEEITEMNAME
  is '医疗费用名称';
comment on column DPLRECEIPTITEM.FEE
  is '金额';
comment on column DPLRECEIPTITEM.REFUSEAMNT
  is '该字段仅针对非医保实时结算收据数组进行收集';
comment on column DPLRECEIPTITEM.OTHERORGANAMNT
  is '该字段仅针对非医保实时结算收据数组进行收集';
comment on column DPLRECEIPTITEM.COUNT
  is '账单种类';
comment on column DPLRECEIPTITEM.UNITPRICE
  is '账单属性';
comment on column DPLRECEIPTITEM.UNIT
  is '规格与单位';
comment on column DPLRECEIPTITEM.MODIFYDATE
  is '最后一次修改日期';
comment on column DPLRECEIPTITEM.MODIFYTIME
  is '最后一次修改时间';
comment on column DPLRECEIPTITEM.MAKEDATE
  is '入机日期';
comment on column DPLRECEIPTITEM.MAKETIME
  is '入机时间';
alter table DPLRECEIPTITEM
  add constraint PK_DPLRECEIPTITEM primary key (FEEDETAILNO);


create table DPLWESTERNMEDICODE
(
  CASENO          VARCHAR2(50) not null,
  CUSTOMERNO      VARCHAR2(60),
  POLNO           VARCHAR2(30),
  RISKCODE        VARCHAR2(60),
  RISKNAME        VARCHAR2(200),
  DUTYCODE        VARCHAR2(60),
  WESTERNMEDICODE VARCHAR2(10) not null,
  WESTERNMEDINAME VARCHAR2(100),
  MODIFYDATE      DATE,
  MODIFYTIME      VARCHAR2(8),
  MAKEDATE        DATE,
  MAKETIME        VARCHAR2(8),
  MAINFEENO       VARCHAR2(30) not null
)
;
comment on column DPLWESTERNMEDICODE.POLNO
  is '

';
comment on column DPLWESTERNMEDICODE.WESTERNMEDICODE
  is '西医疾病代码';
alter table DPLWESTERNMEDICODE
  add constraint PK_DPLWESTERNMEDICODE primary key (CASENO, MAINFEENO, WESTERNMEDICODE);


create table DPMAILCONTENT
(
  MAILID      VARCHAR2(20) not null,
  ORDERNO     VARCHAR2(10) not null,
  SUBTITLE    VARCHAR2(1000),
  SUBCONTENT  VARCHAR2(2000) not null,
  CONTENTTYPE VARCHAR2(10) not null
)
;
comment on table DPMAILCONTENT
  is '邮件内容表';
comment on column DPMAILCONTENT.MAILID
  is '邮件ID';
comment on column DPMAILCONTENT.ORDERNO
  is '顺序';
comment on column DPMAILCONTENT.SUBTITLE
  is '标题如果不填，则不需要填写标题';
comment on column DPMAILCONTENT.SUBCONTENT
  is '小内容';
comment on column DPMAILCONTENT.CONTENTTYPE
  is '0-直接正文
1-SQL语句';
alter table DPMAILCONTENT
  add constraint PK_DPMAILCONTENT primary key (ORDERNO, MAILID);


create table DPMAILTASK
(
  MAILID       VARCHAR2(20) not null,
  MAILTITLE    VARCHAR2(500) not null,
  FROMMAIL     VARCHAR2(50),
  MAILTO       VARCHAR2(1000) not null,
  MAILREMARK   VARCHAR2(1000),
  SENDTYPE     VARCHAR2(10) not null,
  LASTSENDTIME VARCHAR2(20),
  ISVALID      VARCHAR2(2) not null,
  OPERATOR     VARCHAR2(10),
  MAKETIME     VARCHAR2(20) not null,
  MODIFYTIME   VARCHAR2(20)
)
;
comment on table DPMAILTASK
  is '邮件任务表';
comment on column DPMAILTASK.MAILID
  is '邮件ID';
comment on column DPMAILTASK.MAILTITLE
  is '邮件主题';
comment on column DPMAILTASK.FROMMAIL
  is '发件人';
comment on column DPMAILTASK.MAILTO
  is '收件人';
comment on column DPMAILTASK.MAILREMARK
  is '邮件内容导读';
comment on column DPMAILTASK.SENDTYPE
  is '0-每天一次
1-仅发送一次';
comment on column DPMAILTASK.LASTSENDTIME
  is '最后发件时间';
comment on column DPMAILTASK.ISVALID
  is '是否有效';
comment on column DPMAILTASK.OPERATOR
  is '操作员';
comment on column DPMAILTASK.MAKETIME
  is '建立时间';
comment on column DPMAILTASK.MODIFYTIME
  is '修改时间';
alter table DPMAILTASK
  add constraint PK_DPMAILTASK primary key (MAILID);


create table DPMRISK
(
  RISKCODE             VARCHAR2(60) not null,
  RISKNAME             VARCHAR2(200) not null,
  SUBRISKFLAG          VARCHAR2(1),
  COVERAGECODE         VARCHAR2(5) not null,
  COVERAGETYPE         VARCHAR2(1) not null,
  SPECIFICBUSINESS     VARCHAR2(1) not null,
  SPECIFICBUSINESSCODE VARCHAR2(5),
  STATE                VARCHAR2(1) not null,
  OPERATOR             VARCHAR2(10) not null,
  MAKEDATE             DATE not null,
  MAKETIME             VARCHAR2(8) not null,
  MODIFYDATE           DATE not null,
  MODIFYTIME           VARCHAR2(8) not null,
  GROUPFLAG            VARCHAR2(2),
  EXTRACTFLAG          VARCHAR2(2),
  WAITINGPERIOD        INTEGER,
  AMNTRATIO            NUMBER(10,2)
)
;
comment on table DPMRISK
  is '报送险种定义表';
comment on column DPMRISK.RISKCODE
  is '险种编码';
comment on column DPMRISK.RISKNAME
  is '险种名称';
comment on column DPMRISK.SUBRISKFLAG
  is '1	主险
2	附加险
';
comment on column DPMRISK.COVERAGECODE
  is 'L	寿险	　	　
L01	　	普通寿险	　
L011	　	　	定期寿险（普通）
L012	　	　	终身寿险（普通）
L013	　	　	两全寿险（普通）
L014	　	　	年金寿险（普通）
L02	　	分红寿险	　
L021	　	　	定期寿险（分红）
L022	　	　	终身寿险（分红）
L023	　	　	两全寿险（分红）
L024	　	　	年金寿险（分红）
L03	　	投资连接保险	　
L04	　	万能型寿险	　
A	意外险	　	　
A01	　	一年期意外险	　
A02	　	一年期以内意外险	　
H	健康险	　	　
H01	　	短期健康险	　
H011	　	　	疾病保险（短期健康险）
H0111	　	　	　
H012	　	　	医疗保险（短期健康险）
H0121	　	　	　
H0122	　	　	　
H013	　	　	失能收入损失保险（短期健康险）
H014	　	　	护理保险（短期健康险）
H02	　	长期健康险	　
H021	　	　	疾病保险（长期健康险）
H0211	　	　	　
H022	　	　	医疗保险（长期健康险）
H0221	　	　	　
H0222	　	　	　
H023	　	　	失能收入损失保险（长期健康险）
H024	　	　	护理保险（长期健康险）
H03	　	分红型健康险	　
H031	　	　	疾病保险（分红型健康险）
H0311	　	　	　
H032	　	　	医疗保险（分红型健康险）
H0321	　	　	　
H0322	　	　	　
H033	　	　	失能收入损失保险（分红型健康险）
H034	　	　	护理保险（分红型健康险）
O	其他人身保险	　	　
O01	　	健康保障委托管理业务
O02	　	补充养老保险	　
O03	　	其他	　
';
comment on column DPMRISK.COVERAGETYPE
  is ' 1 长期险2 短期险';
comment on column DPMRISK.SPECIFICBUSINESS
  is '0	否
1	是
';
comment on column DPMRISK.SPECIFICBUSINESSCODE
  is 'XP	学生平安险
HK	航空意外险
JG	建筑工人意外伤害险
ZX001	健康险专项业务-新农合
ZX002	健康险专项业务-新农合补充
ZX003	健康险专项业务-城镇职工基本医疗
ZX004	健康险专项业务-城镇职工补充医疗
ZX005	健康险专项业务-城镇居民基本医疗
ZX006	健康险专项业务-城镇居民补充医疗
ZX007	健康险专项业务-医疗救助
ZX008	健康险专项业务-企事业团体补充医疗
';
comment on column DPMRISK.STATE
  is ' 0 - 非必报送，只有当跟必须报送险种在同一保单下时才须报送；1 - 必须报送';
comment on column DPMRISK.OPERATOR
  is '操作员';
comment on column DPMRISK.MAKEDATE
  is '入机日期';
comment on column DPMRISK.MAKETIME
  is '入机时间';
comment on column DPMRISK.MODIFYDATE
  is '最后一次修改日期';
comment on column DPMRISK.MODIFYTIME
  is '最后一次修改时间';
comment on column DPMRISK.WAITINGPERIOD
  is '等待期';
alter table DPMRISK
  add constraint PK_DPMRISK primary key (RISKCODE);


create table DPMRISKDUTY
(
  RISKCODE                VARCHAR2(60) not null,
  DUTYCODE                VARCHAR2(60) not null,
  DUTYNAME                VARCHAR2(200) not null,
  LIABILITYCLASSIFICATION VARCHAR2(5) not null,
  WAITINGPERIOD           INTEGER not null,
  OPERATOR                VARCHAR2(10) not null,
  MAKEDATE                DATE not null,
  MAKETIME                VARCHAR2(8) not null,
  MODIFYDATE              DATE not null,
  MODIFYTIME              VARCHAR2(8) not null,
  GETLINETYPE             VARCHAR2(1),
  GETLINE                 NUMBER(10,2),
  GETRATE                 NUMBER(10,2)
)
;
comment on table DPMRISKDUTY
  is '报送险种责任定义表';
comment on column DPMRISKDUTY.RISKCODE
  is '险种编码';
comment on column DPMRISKDUTY.DUTYCODE
  is '责任代码';
comment on column DPMRISKDUTY.DUTYNAME
  is '责任名称';
comment on column DPMRISKDUTY.LIABILITYCLASSIFICATION
  is '01	住院
02	门诊
03	生育
04	体检
05	预防接种
99	其他
';
comment on column DPMRISKDUTY.WAITINGPERIOD
  is '等待期';
comment on column DPMRISKDUTY.OPERATOR
  is '操作员';
comment on column DPMRISKDUTY.MAKEDATE
  is '入机日期';
comment on column DPMRISKDUTY.MAKETIME
  is '入机时间';
comment on column DPMRISKDUTY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPMRISKDUTY.MODIFYTIME
  is '最后一次修改时间';
alter table DPMRISKDUTY
  add constraint PK_DPMRISKDUTY primary key (RISKCODE, DUTYCODE);


create table DPMRISKDUTY1
(
  RISKCODE                VARCHAR2(60) not null,
  DUTYCODE                VARCHAR2(60) not null,
  DUTYNAME                VARCHAR2(200) not null,
  LIABILITYCLASSIFICATION VARCHAR2(5) not null,
  WAITINGPERIOD           INTEGER not null,
  GETLINETYPE             VARCHAR2(1),
  GETLINE                 NUMBER(10,2),
  GETRATE                 NUMBER(10,2)
)
;


create table DPMSERVICECALMODE
(
  CALCODE            VARCHAR2(20) not null,
  SERVICEID          VARCHAR2(50) not null,
  DIRECTIONTYPE      VARCHAR2(20) not null,
  DEALORDER          INTEGER not null,
  DEALTYPE           VARCHAR2(2) not null,
  INTERFACECLASSNAME VARCHAR2(400),
  STATE              VARCHAR2(1),
  SQLFILE            VARCHAR2(400),
  CONFIGFILE         VARCHAR2(400),
  REMARK             VARCHAR2(600),
  MAKEDATE           DATE not null,
  MAKETIME           VARCHAR2(10) not null,
  MODIFYDATE         DATE not null,
  MODIFYTIME         VARCHAR2(10) not null
)
;
comment on table DPMSERVICECALMODE
  is '每个交易对应的提数算法';
comment on column DPMSERVICECALMODE.CALCODE
  is '交易代码 - 处理方式 - 序号';
comment on column DPMSERVICECALMODE.SERVICEID
  is '交易代码';
comment on column DPMSERVICECALMODE.DIRECTIONTYPE
  is '同行业协会信息平台数据交互类交易使用
1 - 报送
2 - 返回

0 - 表示业务数据提取类型算法
';
comment on column DPMSERVICECALMODE.DEALORDER
  is '1、同步
2、异步';
comment on column DPMSERVICECALMODE.DEALTYPE
  is 'C 程序处理
S SQL处理';
comment on column DPMSERVICECALMODE.INTERFACECLASSNAME
  is '处理方式为C 程序处理时，需要设置处理类。
格式为：com.sinosoft.lis.callcenter.CCWNQuery';
comment on column DPMSERVICECALMODE.STATE
  is '0 无效
1 有效
';
comment on column DPMSERVICECALMODE.SQLFILE
  is '处理方式为S SQL处理时，需要设计SQL所在文件的绝对路径

';
comment on column DPMSERVICECALMODE.CONFIGFILE
  is '备用。
简单SQL处理时，可直接用SQL配置文件处理';
comment on column DPMSERVICECALMODE.REMARK
  is '备注';
comment on column DPMSERVICECALMODE.MAKEDATE
  is '入机日期';
comment on column DPMSERVICECALMODE.MAKETIME
  is '入机时间';
comment on column DPMSERVICECALMODE.MODIFYDATE
  is '最后修改日期';
comment on column DPMSERVICECALMODE.MODIFYTIME
  is '最后修改时间';
alter table DPMSERVICECALMODE
  add constraint PK_DPMSERVICECALMODE primary key (CALCODE);


create table DPMSERVICEDEF
(
  SERVICEID        VARCHAR2(50) not null,
  SERVICENAME      VARCHAR2(100) not null,
  TYPE             VARCHAR2(10) not null,
  ISASYN           VARCHAR2(5),
  CYCLINGCONDITION VARCHAR2(4000),
  SENDMETHOD       VARCHAR2(200),
  SENDDTO          VARCHAR2(200),
  RETURNDTO        VARCHAR2(200),
  RETRYCOUNT       INTEGER,
  MAXSENDCOUNT     INTEGER not null,
  MAKEDATE         DATE not null,
  MAKETIME         VARCHAR2(10) not null,
  MODIFYDATE       DATE not null,
  MODIFYTIME       VARCHAR2(10) not null,
  SERVICEINFFLAG   VARCHAR2(2)
)
;
comment on table DPMSERVICEDEF
  is '配置所有的交易相关配置项';
comment on column DPMSERVICEDEF.SERVICEID
  is 'TS-NB	业务提数-承保
TS-BQ	业务提数-保全
TS-LP	业务提数-理赔
BS-NB-ASYN	报送数据-承保-异步
BS-BQ-ASYN	报送数据-保全-异步
BS-LP-ASYN	报送数据-理赔-异步
CX-NB	异步结果查询-承保
CX-BQ	异步结果查询-保全
CX-LP	异步结果查询-理赔';
comment on column DPMSERVICEDEF.SERVICENAME
  is '交易名称';
comment on column DPMSERVICEDEF.TYPE
  is '1 - 核心系统业务数据提取
2 - 同行业协会信息平台数据交互 - 异步数据报送交易
3 - 同行业协会信息平台数据交互 - 异步数据报送结果查询交易
';
comment on column DPMSERVICEDEF.ISASYN
  is '0 - 同步
1 - 异步';
comment on column DPMSERVICEDEF.CYCLINGCONDITION
  is '一次无法完成所有报送任务，则需要配置上报循环条件。
配置任务的SQL解析失败或者无配置，则认为循环次数为1，即一次性执行。';
comment on column DPMSERVICEDEF.SENDMETHOD
  is '同信息平台webservice交互的方法名';
comment on column DPMSERVICEDEF.SENDDTO
  is '同信息平台webservice交互的上报参数类型';
comment on column DPMSERVICEDEF.RETURNDTO
  is '同信息平台webservice交互的返回参数类型';
comment on column DPMSERVICEDEF.RETRYCOUNT
  is '调用行业协会WebService异常后重新调用的最大次数';
comment on column DPMSERVICEDEF.MAXSENDCOUNT
  is '每次最大报送数';
comment on column DPMSERVICEDEF.MAKEDATE
  is '入机日期';
comment on column DPMSERVICEDEF.MAKETIME
  is '入机时间';
comment on column DPMSERVICEDEF.MODIFYDATE
  is '最后修改日期';
comment on column DPMSERVICEDEF.MODIFYTIME
  is '最后修改时间';
alter table DPMSERVICEDEF
  add constraint PK_DPMSERVICEDEF primary key (SERVICEID);


create table DPMWHEREPART
(
  BUSINESSCODE VARCHAR2(20) not null,
  VARNAME      VARCHAR2(50) not null,
  WHEREPART    VARCHAR2(4000)
)
;
comment on table DPMWHEREPART
  is 'DPMCalMode中需要使用复杂查询条件时，可在此设置。
';
comment on column DPMWHEREPART.BUSINESSCODE
  is '接口编码';
comment on column DPMWHEREPART.VARNAME
  is '变量名';
comment on column DPMWHEREPART.WHEREPART
  is '条件内容';
alter table DPMWHEREPART
  add constraint PK_DPMWHEREPART primary key (BUSINESSCODE, VARNAME);


create table DPPAPPNT
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  POLICYNO          VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(24) not null,
  NAME              VARCHAR2(120),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
comment on table DPPAPPNT
  is '个人投保人表';
comment on column DPPAPPNT.POLICYNO
  is '保单号码';
comment on column DPPAPPNT.CUSTOMERNO
  is '客户号码';
comment on column DPPAPPNT.NAME
  is '冗余，标准在团体客户表';
comment on column DPPAPPNT.SEX
  is '性别';
comment on column DPPAPPNT.BIRTHDAY
  is '出生日期';
comment on column DPPAPPNT.IDTYPE
  is '证件类型';
comment on column DPPAPPNT.IDNO
  is '证件号码';
comment on column DPPAPPNT.RELATIONTOINSURED
  is '与被保人关系';
comment on column DPPAPPNT.MAKEDATE
  is '入机日期';
comment on column DPPAPPNT.MAKETIME
  is '入机时间';
comment on column DPPAPPNT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPAPPNT.MODIFYTIME
  is '最后一次修改时间';
alter table DPPAPPNT
  add constraint PK_DPPAPPNT primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO);


create table DPPAPPNT_B
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  POLICYNO          VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(24) not null,
  NAME              VARCHAR2(120),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table DPPAPPNT_B
  add constraint PK_DPPAPPNT_B primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO);


create table DPPBNF
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  POLICYNO          VARCHAR2(30) not null,
  CONTNO            VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(30) not null,
  NAME              VARCHAR2(60),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  DISTRIBUTIONTYPE  VARCHAR2(2),
  BNFNO             INTEGER not null,
  BNFGRADE          VARCHAR2(1),
  ORDERNO           VARCHAR2(10),
  BNFLOT            NUMBER(3,2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
comment on table DPPBNF
  is '受益人信息表';
comment on column DPPBNF.POLICYNO
  is '保单号码';
comment on column DPPBNF.CONTNO
  is '个人保单号';
comment on column DPPBNF.CUSTOMERNO
  is '在同一团单下的人员序号（只要能在一张保单下唯一标识一个被保人即可，且该号不能发生变化，而且换人时这个号也不能变，所以谨慎使用lis系统中的客户号）';
comment on column DPPBNF.NAME
  is '冗余，标准在团体客户表';
comment on column DPPBNF.SEX
  is '性别';
comment on column DPPBNF.BIRTHDAY
  is '出生日期';
comment on column DPPBNF.IDTYPE
  is '证件类型';
comment on column DPPBNF.IDNO
  is '证件号码';
comment on column DPPBNF.RELATIONTOINSURED
  is '与被保人关系';
comment on column DPPBNF.DISTRIBUTIONTYPE
  is '01  未指定
02  指定顺序
03  指定份额
04  其他
';
comment on column DPPBNF.BNFNO
  is '对受益人进行唯一编码。';
comment on column DPPBNF.BNFGRADE
  is '指对受益人进行分组。
如第一受益人，第二受益人。
';
comment on column DPPBNF.ORDERNO
  is '顺序号';
comment on column DPPBNF.BNFLOT
  is '比例值';
comment on column DPPBNF.MAKEDATE
  is '入机日期';
comment on column DPPBNF.MAKETIME
  is '入机时间';
comment on column DPPBNF.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPBNF.MODIFYTIME
  is '最后一次修改时间';
alter table DPPBNF
  add constraint PK_DPPBNF primary key (EDORNO, EDORTYPE, POLICYNO, CONTNO, CUSTOMERNO, BNFNO);


create table DPPBNF_B
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  POLICYNO          VARCHAR2(30) not null,
  CONTNO            VARCHAR2(30) not null,
  CUSTOMERNO        VARCHAR2(30) not null,
  NAME              VARCHAR2(60),
  SEX               VARCHAR2(1),
  BIRTHDAY          DATE,
  IDTYPE            VARCHAR2(2),
  IDNO              VARCHAR2(30),
  RELATIONTOINSURED VARCHAR2(2),
  DISTRIBUTIONTYPE  VARCHAR2(2),
  BNFNO             INTEGER not null,
  BNFGRADE          VARCHAR2(1),
  ORDERNO           VARCHAR2(10),
  BNFLOT            NUMBER(3,2),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
alter table DPPBNF_B
  add constraint PK_DPPBNF_B primary key (EDORNO, EDORTYPE, POLICYNO, CONTNO, CUSTOMERNO, BNFNO);


create table DPPDUTY
(
  EDORNO                      VARCHAR2(30) not null,
  EDORTYPE                    VARCHAR2(3) not null,
  POLICYNO                    VARCHAR2(30) not null,
  CONTNO                      VARCHAR2(30) not null,
  POLNO                       VARCHAR2(30) not null,
  RISKCODE                    VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  DUTYCODE                    VARCHAR2(60) not null,
  DUTYNAME                    VARCHAR2(200),
  CVALIDATE                   DATE,
  ENDDATE                     DATE,
  DUTYSTATE                   VARCHAR2(2),
  PREM                        NUMBER(20,2),
  ORIGINALAMNT                NUMBER(20,2),
  EFFECTIVEAMNT               NUMBER(20,2),
  WAITINGPERIOD               INTEGER,
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
comment on table DPPDUTY
  is '个单或团体保单下无承保计划中的险种责任信息、保险计划信息';
comment on column DPPDUTY.POLICYNO
  is '保单号码';
comment on column DPPDUTY.CONTNO
  is '个人合同号';
comment on column DPPDUTY.POLNO
  is '对应个人的险种号';
comment on column DPPDUTY.RISKCODE
  is '险种编码';
comment on column DPPDUTY.LIABILITYCLASSIFICATION
  is '01  住院
02  门诊
03  生育
04  体检
05  预防接种
99  其他
';
comment on column DPPDUTY.DUTYCODE
  is '责任编码';
comment on column DPPDUTY.DUTYNAME
  is '责任名称';
comment on column DPPDUTY.CVALIDATE
  is '生效日期';
comment on column DPPDUTY.ENDDATE
  is '满期日期';
comment on column DPPDUTY.DUTYSTATE
  is '责任状态';
comment on column DPPDUTY.PREM
  is '保费';
comment on column DPPDUTY.ORIGINALAMNT
  is '期初保额';
comment on column DPPDUTY.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPPDUTY.WAITINGPERIOD
  is '等待期天数';
comment on column DPPDUTY.MAKEDATE
  is '入机日期';
comment on column DPPDUTY.MAKETIME
  is '入机时间';
comment on column DPPDUTY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPDUTY.MODIFYTIME
  is '最后一次修改时间';
alter table DPPDUTY
  add constraint PK_DPPDUTY primary key (EDORNO, EDORTYPE, POLNO, DUTYCODE);


create table DPPDUTY_B
(
  EDORNO                  VARCHAR2(30) not null,
  EDORTYPE                VARCHAR2(3) not null,
  POLICYNO                VARCHAR2(30) not null,
  CONTNO                  VARCHAR2(30) not null,
  POLNO                   VARCHAR2(30) not null,
  RISKCODE                VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION VARCHAR2(2),
  DUTYCODE                VARCHAR2(60) not null,
  DUTYNAME                VARCHAR2(200),
  CVALIDATE               DATE,
  ENDDATE                 DATE,
  DUTYSTATE               VARCHAR2(2),
  PREM                    NUMBER(20,2),
  ORIGINALAMNT            NUMBER(20,2),
  EFFECTIVEAMNT           NUMBER(20,2),
  WAITINGPERIOD           INTEGER,
  MAKEDATE                DATE,
  MAKETIME                VARCHAR2(8),
  MODIFYDATE              DATE,
  MODIFYTIME              VARCHAR2(8)
)
;
alter table DPPDUTY_B
  add constraint PK_DPPDUTY_B primary key (EDORNO, EDORTYPE, POLNO, DUTYCODE);


create table DPPEDORITEMINFO
(
  BUSSBATCHNO           VARCHAR2(30) not null,
  SUBTASKNO             VARCHAR2(30) not null,
  EDORNO                VARCHAR2(30) not null,
  EDORTYPE              VARCHAR2(2) not null,
  EDORAPPDATE           DATE not null,
  EDORVALIDATE          DATE not null,
  POLICYNO              VARCHAR2(30) not null,
  EDORCONFDATE          DATE not null,
  EDORCONFTIME          VARCHAR2(8) not null,
  SENDSTATE             VARCHAR2(2) not null,
  ERRORREASON           VARCHAR2(4000),
  ENDORSEMENTSEQUENCENO VARCHAR2(50),
  OPERATOR              VARCHAR2(10) not null,
  CONTFLAG              VARCHAR2(4) not null,
  MAKEDATE              DATE not null,
  MAKETIME              VARCHAR2(8) not null,
  MODIFYDATE            DATE not null,
  MODIFYTIME            VARCHAR2(8) not null
)
;
comment on table DPPEDORITEMINFO
  is '保全信息表';
comment on column DPPEDORITEMINFO.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
alter table DPPEDORITEMINFO
  add constraint PK_DPPEDORITEMINFO primary key (EDORNO, POLICYNO);


create table DPPEDORITEMINFO_B
(
  BUSSBATCHNO           VARCHAR2(30) not null,
  SUBTASKNO             VARCHAR2(30) not null,
  EDORNO                VARCHAR2(30) not null,
  EDORTYPE              VARCHAR2(2) not null,
  EDORAPPDATE           DATE not null,
  EDORVALIDATE          DATE not null,
  POLICYNO              VARCHAR2(30) not null,
  EDORCONFDATE          DATE not null,
  EDORCONFTIME          VARCHAR2(8) not null,
  SENDSTATE             VARCHAR2(2) not null,
  ERRORREASON           VARCHAR2(4000),
  ENDORSEMENTSEQUENCENO VARCHAR2(50),
  OPERATOR              VARCHAR2(10) not null,
  CONTFLAG              VARCHAR2(4) not null,
  MAKEDATE              DATE not null,
  MAKETIME              VARCHAR2(8) not null,
  MODIFYDATE            DATE not null,
  MODIFYTIME            VARCHAR2(8) not null
)
;
alter table DPPEDORITEMINFO_B
  add constraint PK_DPPEDORITEMINFO_B primary key (EDORNO, POLICYNO);


create table DPPGRPAPPNT
(
  EDORNO       VARCHAR2(30) not null,
  EDORTYPE     VARCHAR2(3) not null,
  POLICYNO     VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(24) not null,
  NAME         VARCHAR2(120),
  PROVINCE     VARCHAR2(20),
  CITY         VARCHAR2(20),
  COUNTY       VARCHAR2(40),
  GRPADDRESS   VARCHAR2(100),
  GRPIDTYPE    VARCHAR2(2),
  GRPIDNO      VARCHAR2(30),
  SOCIREGCODE  VARCHAR2(50),
  GRPNATURE    VARCHAR2(3),
  BUSINESSTYPE VARCHAR2(4),
  CORPORATION  VARCHAR2(50),
  LINKMAN      VARCHAR2(50),
  PEOPLES      NUMBER(10),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on table DPPGRPAPPNT
  is '团单投保人表';
comment on column DPPGRPAPPNT.POLICYNO
  is '集体合同号码';
comment on column DPPGRPAPPNT.CUSTOMERNO
  is '客户号码';
comment on column DPPGRPAPPNT.NAME
  is '冗余，标准在团体客户表';
comment on column DPPGRPAPPNT.GRPIDTYPE
  is '1  企业法人营业执照
2  中华人名共和国组织机构代码证
3  税务登记证
4  社保保险登记证
5  办学许可证
9  其他
';
comment on column DPPGRPAPPNT.GRPIDNO
  is '团体客户证件号码';
comment on column DPPGRPAPPNT.SOCIREGCODE
  is '二期必录';
comment on column DPPGRPAPPNT.GRPNATURE
  is '二期必录';
comment on column DPPGRPAPPNT.BUSINESSTYPE
  is '二期必录';
comment on column DPPGRPAPPNT.CORPORATION
  is '法人';
comment on column DPPGRPAPPNT.LINKMAN
  is '联系人';
comment on column DPPGRPAPPNT.PEOPLES
  is '单位总人数';
comment on column DPPGRPAPPNT.MAKEDATE
  is '入机日期';
comment on column DPPGRPAPPNT.MAKETIME
  is '入机时间';
comment on column DPPGRPAPPNT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPGRPAPPNT.MODIFYTIME
  is '最后一次修改时间';
alter table DPPGRPAPPNT
  add constraint PK_DPPGRPAPPNT primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO);


create table DPPGRPAPPNT_B
(
  EDORNO       VARCHAR2(30) not null,
  EDORTYPE     VARCHAR2(3) not null,
  POLICYNO     VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(24) not null,
  NAME         VARCHAR2(120),
  PROVINCE     VARCHAR2(20),
  CITY         VARCHAR2(20),
  COUNTY       VARCHAR2(40),
  GRPADDRESS   VARCHAR2(300),
  GRPIDTYPE    VARCHAR2(2),
  GRPIDNO      VARCHAR2(30),
  SOCIREGCODE  VARCHAR2(50),
  GRPNATURE    VARCHAR2(3),
  BUSINESSTYPE VARCHAR2(4),
  CORPORATION  VARCHAR2(50),
  LINKMAN      VARCHAR2(50),
  PEOPLES      NUMBER(10),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
alter table DPPGRPAPPNT_B
  add constraint PK_DPPGRPAPPNT_B primary key (EDORNO, EDORTYPE, POLICYNO, CUSTOMERNO);


create table DPPGRPRISK
(
  EDORNO               VARCHAR2(30) not null,
  EDORTYPE             VARCHAR2(2) not null,
  POLICYNO             VARCHAR2(30) not null,
  GRPPOLNO             VARCHAR2(30) not null,
  COVERAGETYPE         VARCHAR2(1),
  COVERAGECODE         VARCHAR2(5),
  RISKCODE             VARCHAR2(60) not null,
  RISKNAME             VARCHAR2(200),
  CVALIDATE            DATE,
  ENDDATE              DATE,
  PREM                 NUMBER(20,2),
  ORIGINALAMNT         NUMBER(20,2),
  EFFECTIVEAMNT        NUMBER(20,2),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSINESSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  SUBRISKFLAG          VARCHAR2(1),
  PAYCOUNT             NUMBER(3),
  PAYINTV              NUMBER(3),
  PAYYEARS             NUMBER(3),
  RISKSTATUS           VARCHAR2(1)
)
;
comment on table DPPGRPRISK
  is '团体保单下险种信息';
comment on column DPPGRPRISK.POLICYNO
  is '保单号码';
comment on column DPPGRPRISK.GRPPOLNO
  is '险种号';
comment on column DPPGRPRISK.COVERAGETYPE
  is '平台险种类型';
comment on column DPPGRPRISK.COVERAGECODE
  is '平台险种代码';
comment on column DPPGRPRISK.RISKCODE
  is '公司险种编码';
comment on column DPPGRPRISK.RISKNAME
  is '公司险种名称';
comment on column DPPGRPRISK.CVALIDATE
  is '生效日期';
comment on column DPPGRPRISK.ENDDATE
  is '满期日期';
comment on column DPPGRPRISK.PREM
  is '保费';
comment on column DPPGRPRISK.ORIGINALAMNT
  is '期初保额';
comment on column DPPGRPRISK.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPPGRPRISK.SPECIFICBUSINESS
  is '特殊业务标识';
comment on column DPPGRPRISK.SPECIFICBUSINESSCODE
  is 'XP  学生平安险
HK  航空意外险
JG  建筑工人意外伤害险
ZX001  健康险专项业务-新农合
ZX002  健康险专项业务-新农合补充
ZX003  健康险专项业务-城镇职工基本医疗
ZX004  健康险专项业务-城镇职工补充医疗
ZX005  健康险专项业务-城镇居民基本医疗
ZX006  健康险专项业务-城镇居民补充医疗
ZX007  健康险专项业务-医疗救助
ZX008  健康险专项业务-企事业团体补充医疗
';
comment on column DPPGRPRISK.MAKEDATE
  is '入机日期';
comment on column DPPGRPRISK.MAKETIME
  is '入机时间';
comment on column DPPGRPRISK.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPGRPRISK.MODIFYTIME
  is '最后一次修改时间';
alter table DPPGRPRISK
  add constraint PK_DPPGRPRISK primary key (EDORNO, EDORTYPE, GRPPOLNO);


create table DPPINSURED
(
  EDORNO                VARCHAR2(30) not null,
  EDORTYPE              VARCHAR2(3) not null,
  POLICYNO              VARCHAR2(30) not null,
  CONTNO                VARCHAR2(30) not null,
  CUSTOMERNO            VARCHAR2(60) not null,
  PROVINCE              VARCHAR2(20),
  CITY                  VARCHAR2(20),
  COUNTY                VARCHAR2(40),
  GRPADDRESS            VARCHAR2(100),
  NAME                  VARCHAR2(60),
  SEX                   VARCHAR2(1),
  BIRTHDAY              DATE,
  IDTYPE                VARCHAR2(2),
  IDNO                  VARCHAR2(30),
  RELATIONTOAPPNT       VARCHAR2(2),
  IMPARTFLAG            VARCHAR2(1),
  INSUREDSTATE          VARCHAR2(2),
  CVALIDATE             DATE,
  ENDDATE               DATE,
  CONTPLANCODE          VARCHAR2(30),
  INSUREDTYPE           VARCHAR2(2),
  MAININSUREDNO         VARCHAR2(30),
  RELATIONTOMAININSURED VARCHAR2(2),
  WORKFLAG              VARCHAR2(2),
  HEALTHFLAG            VARCHAR2(1),
  SOCIALCARENO          VARCHAR2(30),
  OCCUPATIONCODE        VARCHAR2(7),
  WORKPLACE             VARCHAR2(200),
  EMPOYEENO             VARCHAR2(30),
  MAKEDATE              DATE,
  MAKETIME              VARCHAR2(8),
  MODIFYDATE            DATE,
  MODIFYTIME            VARCHAR2(8),
  OLDCUSTOMERNO         VARCHAR2(60),
  OLDCUSTOMERENDDATE    DATE,
  APPOINTEDBENEFIT      VARCHAR2(1)
)
;
comment on column DPPINSURED.CUSTOMERNO
  is '在同一团单下的人员序号（只要能在一张保单下唯一标识一个被保人即可，且该号不能发生变化，而且换人时这个号也不能变，所以谨慎使用lis系统中的客户号）';
comment on column DPPINSURED.NAME
  is '冗余，标准在团体客户表';
comment on column DPPINSURED.SEX
  is '0  未知的性别
1  男
2  女
9  未说明的性别
';
comment on column DPPINSURED.INSUREDSTATE
  is '被保险人是否有效
1  有效
2  中止
3  终止
9  其他
';
comment on column DPPINSURED.INSUREDTYPE
  is '01  主被保险人
02  连带被保人
09  其他
';
comment on column DPPINSURED.WORKFLAG
  is '01  在职
02  退休
09  其他

二期必录';
comment on column DPPINSURED.HEALTHFLAG
  is '0  否
1  是
';
comment on column DPPINSURED.SOCIALCARENO
  is '二期必录';
comment on column DPPINSURED.APPOINTEDBENEFIT
  is '是否指定受益人';
alter table DPPINSURED
  add constraint PK_DPPINSURED primary key (EDORNO, EDORTYPE, CONTNO, CUSTOMERNO);


create table DPPINSURED_B
(
  EDORNO                VARCHAR2(30) not null,
  EDORTYPE              VARCHAR2(3) not null,
  POLICYNO              VARCHAR2(30) not null,
  CONTNO                VARCHAR2(30) not null,
  CUSTOMERNO            VARCHAR2(60) not null,
  PROVINCE              VARCHAR2(20),
  CITY                  VARCHAR2(20),
  COUNTY                VARCHAR2(40),
  GRPADDRESS            VARCHAR2(300),
  NAME                  VARCHAR2(60),
  SEX                   VARCHAR2(1),
  BIRTHDAY              DATE,
  IDTYPE                VARCHAR2(2),
  IDNO                  VARCHAR2(30),
  RELATIONTOAPPNT       VARCHAR2(2),
  IMPARTFLAG            VARCHAR2(1),
  INSUREDSTATE          VARCHAR2(2),
  CVALIDATE             DATE,
  ENDDATE               DATE,
  CONTPLANCODE          VARCHAR2(30),
  INSUREDTYPE           VARCHAR2(2),
  MAININSUREDNO         VARCHAR2(30),
  RELATIONTOMAININSURED VARCHAR2(2),
  WORKFLAG              VARCHAR2(2),
  HEALTHFLAG            VARCHAR2(1),
  SOCIALCARENO          VARCHAR2(30),
  OCCUPATIONCODE        VARCHAR2(7),
  WORKPLACE             VARCHAR2(200),
  EMPOYEENO             VARCHAR2(30),
  MAKEDATE              DATE,
  MAKETIME              VARCHAR2(8),
  MODIFYDATE            DATE,
  MODIFYTIME            VARCHAR2(8),
  OLDCUSTOMERNO         VARCHAR2(60),
  OLDCUSTOMERENDDATE    DATE,
  APPOINTEDBENEFIT      VARCHAR2(1)
)
;
alter table DPPINSURED_B
  add constraint PK_DPPINSURED_B primary key (EDORNO, EDORTYPE, CONTNO, CUSTOMERNO);


create table DPPPAYMENT
(
  EDORNO     VARCHAR2(30) not null,
  EDORTYPE   VARCHAR2(3) not null,
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  RISKCODE   VARCHAR2(60) not null,
  DUTYCODE   VARCHAR2(60) not null,
  SECTIONNO  VARCHAR2(2) not null,
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  GETLIMIT   NUMBER(12,2),
  GETRATE    NUMBER(5,2),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
comment on table DPPPAYMENT
  is '个单或团体保单下无承保计划中的赔付比例分段信息';
comment on column DPPPAYMENT.POLICYNO
  is '保单号码';
comment on column DPPPAYMENT.CONTNO
  is '个人合同号';
comment on column DPPPAYMENT.POLNO
  is '险种号';
comment on column DPPPAYMENT.RISKCODE
  is '险种编码';
comment on column DPPPAYMENT.DUTYCODE
  is '责任编码';
comment on column DPPPAYMENT.SECTIONNO
  is '赔付比例共分为N段，每段的序号';
comment on column DPPPAYMENT.COSTSTART
  is '费用起线';
comment on column DPPPAYMENT.COSTEND
  is '费用止线';
comment on column DPPPAYMENT.GETLIMIT
  is '免赔额';
comment on column DPPPAYMENT.GETRATE
  is '赔付比例';
comment on column DPPPAYMENT.MAKEDATE
  is '入机日期';
comment on column DPPPAYMENT.MAKETIME
  is '入机时间';
comment on column DPPPAYMENT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPPAYMENT.MODIFYTIME
  is '最后一次修改时间';
alter table DPPPAYMENT
  add constraint PK_DPPPAYMENT primary key (EDORNO, EDORTYPE, POLNO, DUTYCODE, SECTIONNO);


create table DPPPAYMENT_B
(
  EDORNO     VARCHAR2(30) not null,
  EDORTYPE   VARCHAR2(3) not null,
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  RISKCODE   VARCHAR2(60) not null,
  DUTYCODE   VARCHAR2(60) not null,
  SECTIONNO  VARCHAR2(2) not null,
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  GETLIMIT   NUMBER(12,2),
  GETRATE    NUMBER(5,2),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
alter table DPPPAYMENT_B
  add constraint PK_DPPPAYMENT_B primary key (EDORNO, EDORTYPE, POLNO, DUTYCODE, SECTIONNO);


create table DPPPLANDUTY
(
  EDORNO                      VARCHAR2(30) not null,
  EDORTYPE                    VARCHAR2(2) not null,
  POLICYNO                    VARCHAR2(30) not null,
  GRPPOLNO                    VARCHAR2(30) not null,
  RISKCODE                    VARCHAR2(60) not null,
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  DUTYCODE                    VARCHAR2(60) not null,
  DUTYNAME                    VARCHAR2(200),
  CVALIDATE                   DATE,
  ENDDATE                     DATE,
  DUTYSTATE                   VARCHAR2(2),
  PREM                        NUMBER(20,2),
  ORIGINALAMNT                NUMBER(20,2),
  EFFECTIVEAMNT               NUMBER(20,2),
  CONTPLANCODE                VARCHAR2(30) not null,
  CONTPLANNAME                VARCHAR2(100),
  WAITINGPERIOD               INTEGER,
  MAKEDATE                    DATE,
  MAKETIME                    VARCHAR2(8),
  MODIFYDATE                  DATE,
  MODIFYTIME                  VARCHAR2(8),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
comment on table DPPPLANDUTY
  is '团体保单下承保计划中的险种责任信息、保险计划信息';
comment on column DPPPLANDUTY.POLICYNO
  is '保单号码';
comment on column DPPPLANDUTY.GRPPOLNO
  is '对应团体险种号';
comment on column DPPPLANDUTY.RISKCODE
  is '险种编码';
comment on column DPPPLANDUTY.LIABILITYCLASSIFICATION
  is '01  住院
02  门诊
03  生育
04  体检
05  预防接种
99  其他
';
comment on column DPPPLANDUTY.DUTYCODE
  is '责任编码';
comment on column DPPPLANDUTY.DUTYNAME
  is '责任名称';
comment on column DPPPLANDUTY.CVALIDATE
  is '生效日期';
comment on column DPPPLANDUTY.ENDDATE
  is '满期日期';
comment on column DPPPLANDUTY.DUTYSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
comment on column DPPPLANDUTY.PREM
  is '保费';
comment on column DPPPLANDUTY.ORIGINALAMNT
  is '期初保额';
comment on column DPPPLANDUTY.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPPPLANDUTY.CONTPLANCODE
  is '保险计划编码';
comment on column DPPPLANDUTY.CONTPLANNAME
  is '保险计划名称';
comment on column DPPPLANDUTY.WAITINGPERIOD
  is '等待期';
comment on column DPPPLANDUTY.MAKEDATE
  is '入机日期';
comment on column DPPPLANDUTY.MAKETIME
  is '入机时间';
comment on column DPPPLANDUTY.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPPLANDUTY.MODIFYTIME
  is '最后一次修改时间';
comment on column DPPPLANDUTY.LIABILITYDAYAMOUNT
  is '责任期初日额保险金';
comment on column DPPPLANDUTY.LIABILITYDAYEFFECTIVEAMOUNT
  is '责任有效日额保险金';
alter table DPPPLANDUTY
  add constraint PK_DPPPLANDUTY primary key (EDORNO, EDORTYPE, GRPPOLNO, DUTYCODE, CONTPLANCODE);


create table DPPPLANPAYMENT
(
  EDORNO       VARCHAR2(30) not null,
  EDORTYPE     VARCHAR2(2) not null,
  POLICYNO     VARCHAR2(30) not null,
  GRPPOLNO     VARCHAR2(30) not null,
  RISKCODE     VARCHAR2(60) not null,
  DUTYCODE     VARCHAR2(60) not null,
  CONTPLANCODE VARCHAR2(30) not null,
  SECTIONNO    VARCHAR2(2) not null,
  COSTSTART    NUMBER(12,2),
  COSTEND      NUMBER(12,2),
  GETLIMIT     NUMBER(12,2),
  GETRATE      NUMBER(5,2),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on table DPPPLANPAYMENT
  is '团体保单下承保计划中的赔付比例分段信息';
comment on column DPPPLANPAYMENT.POLICYNO
  is '保单号码';
comment on column DPPPLANPAYMENT.GRPPOLNO
  is '险种号';
comment on column DPPPLANPAYMENT.RISKCODE
  is '险种编码';
comment on column DPPPLANPAYMENT.DUTYCODE
  is '责任编码';
comment on column DPPPLANPAYMENT.CONTPLANCODE
  is '保险计划编码';
comment on column DPPPLANPAYMENT.SECTIONNO
  is '赔付比例共分为N段，每段的序号';
comment on column DPPPLANPAYMENT.COSTSTART
  is '费用起线';
comment on column DPPPLANPAYMENT.COSTEND
  is '费用止线';
comment on column DPPPLANPAYMENT.GETLIMIT
  is '免赔额';
comment on column DPPPLANPAYMENT.GETRATE
  is '赔付比例';
comment on column DPPPLANPAYMENT.MAKEDATE
  is '入机日期';
comment on column DPPPLANPAYMENT.MAKETIME
  is '入机时间';
comment on column DPPPLANPAYMENT.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPPLANPAYMENT.MODIFYTIME
  is '最后一次修改时间';
alter table DPPPLANPAYMENT
  add constraint PK_DPPPLANPAYMENT primary key (EDORNO, EDORTYPE, GRPPOLNO, DUTYCODE, CONTPLANCODE, SECTIONNO);


create table DPPPLANUW
(
  EDORNO        VARCHAR2(30) not null,
  EDORTYPE      VARCHAR2(2) not null,
  POLICYNO      VARCHAR2(30) not null,
  GRPPOLNO      VARCHAR2(30) not null,
  RISKCODE      VARCHAR2(60) not null,
  UWFLAG        VARCHAR2(2),
  UWDATE        DATE,
  DECLINEREASON VARCHAR2(2),
  STATE         VARCHAR2(2),
  PEFLAG        VARCHAR2(2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8)
)
;
comment on table DPPPLANUW
  is '团体保单下承保计划中的险种责任的核保结论信息';
comment on column DPPPLANUW.POLICYNO
  is '保单号码';
comment on column DPPPLANUW.GRPPOLNO
  is '对应团体险种号';
comment on column DPPPLANUW.RISKCODE
  is '险种编码';
comment on column DPPPLANUW.UWFLAG
  is '10  标准体
20  次标准体
21  加费
32  限额
33  特别约定
40  延期
50  拒保
60  优标体
';
comment on column DPPPLANUW.UWDATE
  is '核保结论日期';
comment on column DPPPLANUW.DECLINEREASON
  is '拒保原因';
comment on column DPPPLANUW.STATE
  is '业务流程状态';
comment on column DPPPLANUW.PEFLAG
  is '是否体检';
comment on column DPPPLANUW.MAKEDATE
  is '入机日期';
comment on column DPPPLANUW.MAKETIME
  is '入机时间';
comment on column DPPPLANUW.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPPLANUW.MODIFYTIME
  is '最后一次修改时间';
alter table DPPPLANUW
  add constraint PK_DPPPLANUW primary key (EDORNO, EDORTYPE, GRPPOLNO);


create table DPPPOLICYINFO
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  EDORAPPDATE       DATE not null,
  EDORVALIDATE      DATE not null,
  BUSSBATCHNO       VARCHAR2(30),
  SUBTASKNO         VARCHAR2(30),
  POLICYNO          VARCHAR2(30) not null,
  REJECTION         VARCHAR2(2),
  PRTNO             VARCHAR2(20),
  MANAGECOM         VARCHAR2(20),
  POLAPPLYDATE      DATE,
  MANAGECOMNAME     VARCHAR2(50),
  SALECHNL          VARCHAR2(2),
  BRANCHTYPE        VARCHAR2(4),
  AGENTCODE         VARCHAR2(20),
  AGENTNAME         VARCHAR2(30),
  AGENTCOM          VARCHAR2(20),
  AGENTCOMNAME      VARCHAR2(100),
  AGENTCOMADDRESS   VARCHAR2(200),
  CONTTYPE          VARCHAR2(2),
  SIGNDATE          DATE,
  SIGNTIME          VARCHAR2(8),
  CVALIDATE         DATE,
  CINVALIDATE       DATE,
  TERMINATIONDATE   DATE,
  TERMINATIONREASON VARCHAR2(1),
  SUSPENDDATE       DATE,
  RECOVERDATE       DATE,
  CONTSOURCE        VARCHAR2(2),
  CONTRACTNO        VARCHAR2(30),
  RENEWCOUNT        NUMBER(8),
  RENEWTYPE         VARCHAR2(30),
  CONTSTATE         VARCHAR2(2),
  ORIGINALAMNT      NUMBER(20,2),
  ORIGINALPREM      NUMBER(20,2),
  EFFECTIVEAMNT     NUMBER(20,2),
  CURRENTPREM       NUMBER(20,2),
  PAYINTV           VARCHAR2(4),
  PAYYEARS          VARCHAR2(4),
  PAYCOUNT          VARCHAR2(4),
  APPNTTYPE         VARCHAR2(1),
  ORIGINALPEOPLES   NUMBER(8),
  EFFECTIVEPEOPLES  NUMBER(8),
  FORMERPOLICYNO    VARCHAR2(30),
  SPEC              VARCHAR2(600),
  CLEARINGFLAG      VARCHAR2(1),
  CLEARINGTYPE      VARCHAR2(2),
  CLEARINGDATE      DATE,
  CLEARINGDEADLINE  DATE,
  REALTIMECLAIMFLAG VARCHAR2(1),
  CONTLOANFLAG      VARCHAR2(1),
  AUTOPAYFLAG       VARCHAR2(1),
  COINSUFLAG        VARCHAR2(1),
  MAINCOINSUFLAG    VARCHAR2(1),
  STANDBYFLAG1      VARCHAR2(10),
  STANDBYFLAG2      VARCHAR2(10),
  STANDBYFLAG3      VARCHAR2(10),
  SENDSTATE         VARCHAR2(2),
  ERRORREASON       VARCHAR2(600),
  POLICYSEQUENCENO  VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8),
  CANCELDATE        DATE,
  SURRENDERCHARGE   NUMBER(20,2),
  YEARPREMIUM       NUMBER(20,2)
)
;
comment on table DPPPOLICYINFO
  is '保单表';
comment on column DPPPOLICYINFO.SALECHNL
  is '01  团险直销
02  个人营销
03  银行代理
06  顾问行销
07  经纪公司代理
08  电话销售';
comment on column DPPPOLICYINFO.CONTTYPE
  is '01  团体保单
02  个人保单
09  其他
';
comment on column DPPPOLICYINFO.CONTSOURCE
  is '01  新投保
02  连续投保
03  转换
09  其他';
comment on column DPPPOLICYINFO.CONTRACTNO
  is '某些单位可能会以保险公司签一份无具体保险产品的大合同，在此大合同框架下再签订保单，本合同号即此大合同号。';
comment on column DPPPOLICYINFO.RENEWTYPE
  is '是否连续投保';
comment on column DPPPOLICYINFO.CONTSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
comment on column DPPPOLICYINFO.APPNTTYPE
  is '1  团体客户
2  个人客户
9  其他';
comment on column DPPPOLICYINFO.ORIGINALPEOPLES
  is '承保时的实际投保人数';
comment on column DPPPOLICYINFO.EFFECTIVEPEOPLES
  is '保单当前时被保险人数，承保时与投保人数一致';
comment on column DPPPOLICYINFO.CLEARINGFLAG
  is '0  否
1  是
';
comment on column DPPPOLICYINFO.CLEARINGTYPE
  is '01  实时
02  月
03  季
04  半年
05  年
06  不定期
';
comment on column DPPPOLICYINFO.REALTIMECLAIMFLAG
  is '是否提供信息平台进行跟医院方的实时理赔服务
0  否
1  是
';
comment on column DPPPOLICYINFO.STANDBYFLAG2
  is '
';
comment on column DPPPOLICYINFO.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
comment on column DPPPOLICYINFO.CANCELDATE
  is '批单撤销时间';
comment on column DPPPOLICYINFO.SURRENDERCHARGE
  is '退保金';
comment on column DPPPOLICYINFO.YEARPREMIUM
  is '当前年化保费';
alter table DPPPOLICYINFO
  add constraint PK_DPPPOLICYINFO primary key (EDORNO, EDORTYPE, POLICYNO);


create table DPPPOLICYINFO_B
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(3) not null,
  EDORAPPDATE       DATE not null,
  EDORVALIDATE      DATE not null,
  BUSSBATCHNO       VARCHAR2(30),
  SUBTASKNO         VARCHAR2(30),
  POLICYNO          VARCHAR2(30) not null,
  REJECTION         VARCHAR2(2),
  PRTNO             VARCHAR2(20),
  MANAGECOM         VARCHAR2(20),
  POLAPPLYDATE      DATE,
  MANAGECOMNAME     VARCHAR2(50),
  SALECHNL          VARCHAR2(2),
  BRANCHTYPE        VARCHAR2(4),
  AGENTCODE         VARCHAR2(20),
  AGENTNAME         VARCHAR2(30),
  AGENTCOM          VARCHAR2(20),
  AGENTCOMNAME      VARCHAR2(100),
  AGENTCOMADDRESS   VARCHAR2(200),
  CONTTYPE          VARCHAR2(2),
  SIGNDATE          DATE,
  SIGNTIME          VARCHAR2(8),
  CVALIDATE         DATE,
  CINVALIDATE       DATE,
  TERMINATIONDATE   DATE,
  TERMINATIONREASON VARCHAR2(1),
  SUSPENDDATE       DATE,
  RECOVERDATE       DATE,
  CONTSOURCE        VARCHAR2(2),
  CONTRACTNO        VARCHAR2(30),
  RENEWCOUNT        NUMBER(8),
  RENEWTYPE         VARCHAR2(30),
  CONTSTATE         VARCHAR2(2),
  ORIGINALAMNT      NUMBER(20,2),
  ORIGINALPREM      NUMBER(20,2),
  EFFECTIVEAMNT     NUMBER(20,2),
  CURRENTPREM       NUMBER(20,2),
  PAYINTV           VARCHAR2(4),
  PAYYEARS          VARCHAR2(4),
  PAYCOUNT          VARCHAR2(4),
  APPNTTYPE         VARCHAR2(1),
  ORIGINALPEOPLES   NUMBER(8),
  EFFECTIVEPEOPLES  NUMBER(8),
  FORMERPOLICYNO    VARCHAR2(30),
  SPEC              VARCHAR2(600),
  CLEARINGFLAG      VARCHAR2(1),
  CLEARINGTYPE      VARCHAR2(2),
  CLEARINGDATE      DATE,
  CLEARINGDEADLINE  DATE,
  REALTIMECLAIMFLAG VARCHAR2(1),
  CONTLOANFLAG      VARCHAR2(1),
  AUTOPAYFLAG       VARCHAR2(1),
  COINSUFLAG        VARCHAR2(1),
  MAINCOINSUFLAG    VARCHAR2(1),
  STANDBYFLAG1      VARCHAR2(10),
  STANDBYFLAG2      VARCHAR2(10),
  STANDBYFLAG3      VARCHAR2(10),
  SENDSTATE         VARCHAR2(2),
  ERRORREASON       VARCHAR2(600),
  POLICYSEQUENCENO  VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8),
  CANCELDATE        DATE,
  SURRENDERCHARGE   NUMBER(20,2)
)
;
alter table DPPPOLICYINFO_B
  add constraint PK_DPPPOLICYINFO_B primary key (EDORNO, EDORTYPE, POLICYNO);


create table DPPRISK
(
  EDORNO                     VARCHAR2(30) not null,
  EDORTYPE                   VARCHAR2(3) not null,
  POLICYNO                   VARCHAR2(30) not null,
  CONTNO                     VARCHAR2(30) not null,
  POLNO                      VARCHAR2(30) not null,
  COVERAGETYPE               VARCHAR2(1),
  COVERAGECODE               VARCHAR2(5),
  RISKCODE                   VARCHAR2(60) not null,
  RISKNAME                   VARCHAR2(200),
  CVALIDATE                  DATE,
  ENDDATE                    DATE,
  PREM                       NUMBER(20,2),
  ORIGINALAMNT               NUMBER(20,2),
  EFFECTIVEAMNT              NUMBER(20,2),
  PAYCOUNT                   NUMBER(3),
  SPECIFICBUSINESS           VARCHAR2(1),
  SPECIFICBUSINESSCODE       VARCHAR2(5),
  MAKEDATE                   DATE,
  MAKETIME                   VARCHAR2(8),
  MODIFYDATE                 DATE,
  MODIFYTIME                 VARCHAR2(8),
  SUBRISKFLAG                VARCHAR2(1),
  PAYINTV                    NUMBER(3),
  PAYYEARS                   NUMBER(3),
  RISKSTATUS                 VARCHAR2(1),
  CUSTOMERNO                 VARCHAR2(60),
  COVERAGEDAYAMOUNT          NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT NUMBER(20,2),
  COVERAGEYEARPREMIUM        NUMBER(20,2),
  PREMIUMSOURCE              VARCHAR2(2),
  COVERAGESURRENDERCHARGE    NUMBER(20,2)
)
;
comment on table DPPRISK
  is '个单或团体保单下无承保计划中的险种信息';
comment on column DPPRISK.POLICYNO
  is '保单号码';
comment on column DPPRISK.CONTNO
  is '个人合同号';
comment on column DPPRISK.POLNO
  is '险种号';
comment on column DPPRISK.COVERAGETYPE
  is '平台险种类型';
comment on column DPPRISK.COVERAGECODE
  is '平台险种代码';
comment on column DPPRISK.RISKCODE
  is '险种编码';
comment on column DPPRISK.RISKNAME
  is '公司险种名称';
comment on column DPPRISK.CVALIDATE
  is '生效日期';
comment on column DPPRISK.ENDDATE
  is '满期日期';
comment on column DPPRISK.PREM
  is '保费';
comment on column DPPRISK.ORIGINALAMNT
  is '期初保额';
comment on column DPPRISK.EFFECTIVEAMNT
  is '当前有效保额';
comment on column DPPRISK.SPECIFICBUSINESS
  is '特殊业务标识';
comment on column DPPRISK.SPECIFICBUSINESSCODE
  is 'XP  学生平安险
HK  航空意外险
JG  建筑工人意外伤害险
ZX001  健康险专项业务-新农合
ZX002  健康险专项业务-新农合补充
ZX003  健康险专项业务-城镇职工基本医疗
ZX004  健康险专项业务-城镇职工补充医疗
ZX005  健康险专项业务-城镇居民基本医疗
ZX006  健康险专项业务-城镇居民补充医疗
ZX007  健康险专项业务-医疗救助
ZX008  健康险专项业务-企事业团体补充医疗
';
comment on column DPPRISK.MAKEDATE
  is '入机日期';
comment on column DPPRISK.MAKETIME
  is '入机时间';
comment on column DPPRISK.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPRISK.MODIFYTIME
  is '最后一次修改时间';
comment on column DPPRISK.COVERAGEDAYAMOUNT
  is '险种期初日额保险金';
comment on column DPPRISK.COVERAGEDAYEFFECTIVEAMOUNT
  is '险种有效日额保险金';
comment on column DPPRISK.COVERAGEYEARPREMIUM
  is '险种当前年化保费';
comment on column DPPRISK.PREMIUMSOURCE
  is '保费来源';
comment on column DPPRISK.COVERAGESURRENDERCHARGE
  is '险种退保金';
alter table DPPRISK
  add constraint PK_DPPRISK primary key (EDORNO, EDORTYPE, POLNO);


create table DPPRISK_B
(
  EDORNO               VARCHAR2(30) not null,
  EDORTYPE             VARCHAR2(3) not null,
  POLICYNO             VARCHAR2(30) not null,
  CONTNO               VARCHAR2(30) not null,
  POLNO                VARCHAR2(30) not null,
  COVERAGETYPE         VARCHAR2(1),
  COVERAGECODE         VARCHAR2(5),
  RISKCODE             VARCHAR2(60) not null,
  RISKNAME             VARCHAR2(200),
  CVALIDATE            DATE,
  ENDDATE              DATE,
  PREM                 NUMBER(20,2),
  ORIGINALAMNT         NUMBER(20,2),
  EFFECTIVEAMNT        NUMBER(20,2),
  PAYCOUNT             NUMBER(3),
  SPECIFICBUSINESS     VARCHAR2(1),
  SPECIFICBUSINESSCODE VARCHAR2(5),
  MAKEDATE             DATE,
  MAKETIME             VARCHAR2(8),
  MODIFYDATE           DATE,
  MODIFYTIME           VARCHAR2(8),
  SUBRISKFLAG          VARCHAR2(1),
  PAYINTV              NUMBER(3),
  PAYYEARS             NUMBER(3),
  RISKSTATUS           VARCHAR2(1),
  CUSTOMERNO           VARCHAR2(60)
)
;
alter table DPPRISK_B
  add constraint PK_DPPRISK_B primary key (EDORNO, EDORTYPE, POLNO);


create table DPPUW
(
  EDORNO     VARCHAR2(30) not null,
  EDORTYPE   VARCHAR2(3) not null,
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  RISKCODE   VARCHAR2(60) not null,
  UWFLAG     VARCHAR2(2),
  UWDATE     DATE,
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
comment on table DPPUW
  is '个单或团体保单下非承保计划中的险种责任的核保结论信息';
comment on column DPPUW.POLICYNO
  is '保单号码';
comment on column DPPUW.CONTNO
  is '个人合同号';
comment on column DPPUW.POLNO
  is '对应团体险种号';
comment on column DPPUW.RISKCODE
  is '险种编码';
comment on column DPPUW.UWFLAG
  is '核保结论';
comment on column DPPUW.UWDATE
  is '核保结论日期';
comment on column DPPUW.MAKEDATE
  is '入机日期';
comment on column DPPUW.MAKETIME
  is '入机时间';
comment on column DPPUW.MODIFYDATE
  is '最后一次修改日期';
comment on column DPPUW.MODIFYTIME
  is '最后一次修改时间';


create table DPPUW_B
(
  EDORNO     VARCHAR2(30) not null,
  EDORTYPE   VARCHAR2(3) not null,
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  RISKCODE   VARCHAR2(60) not null,
  UWFLAG     VARCHAR2(2),
  UWDATE     DATE,
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
alter table DPPUW_B
  add constraint PK_DPPUW_B primary key (EDORNO, EDORTYPE, POLNO);


create table DPRENEWPOLICYINFO
(
  EDORNO            VARCHAR2(30) not null,
  EDORTYPE          VARCHAR2(2) not null,
  EDORAPPDATE       DATE,
  EDORVALIDATE      DATE,
  BUSSBATCHNO       VARCHAR2(30),
  SUBTASKNO         VARCHAR2(30),
  POLICYNO          VARCHAR2(30) not null,
  REJECTION         VARCHAR2(2),
  PRTNO             VARCHAR2(20),
  MANAGECOM         VARCHAR2(10),
  POLAPPLYDATE      DATE,
  MANAGECOMNAME     VARCHAR2(40),
  SALECHNL          VARCHAR2(2),
  BRANCHTYPE        VARCHAR2(4),
  AGENTCODE         VARCHAR2(20),
  AGENTNAME         VARCHAR2(30),
  AGENTCOM          VARCHAR2(20),
  AGENTCOMNAME      VARCHAR2(30),
  AGENTCOMADDRESS   VARCHAR2(40),
  CONTTYPE          VARCHAR2(2),
  SIGNDATE          DATE,
  SIGNTIME          VARCHAR2(8),
  CVALIDATE         DATE,
  CINVALIDATE       DATE,
  TERMINATIONDATE   DATE,
  TERMINATIONREASON VARCHAR2(1),
  SUSPENDDATE       DATE,
  RECOVERDATE       DATE,
  CONTSOURCE        VARCHAR2(2),
  CONTRACTNO        VARCHAR2(30),
  RENEWCOUNT        NUMBER(8),
  RENEWTYPE         VARCHAR2(30),
  CONTSTATE         VARCHAR2(2),
  ORIGINALAMNT      NUMBER(20,2),
  ORIGINALPREM      NUMBER(20,2),
  EFFECTIVEAMNT     NUMBER(20,2) not null,
  CURRENTPREM       NUMBER(20,2) not null,
  PAYINTV           VARCHAR2(4) not null,
  PAYYEARS          VARCHAR2(4),
  PAYCOUNT          VARCHAR2(4),
  APPNTTYPE         VARCHAR2(1),
  ORIGINALPEOPLES   NUMBER(8),
  EFFECTIVEPEOPLES  NUMBER(8),
  FORMERPOLICYNO    VARCHAR2(30),
  SPEC              VARCHAR2(600),
  CLEARINGFLAG      VARCHAR2(1),
  CLEARINGTYPE      VARCHAR2(2),
  CLEARINGDATE      DATE,
  CLEARINGDEADLINE  DATE,
  REALTIMECLAIMFLAG VARCHAR2(1),
  CONTLOANFLAG      VARCHAR2(1),
  AUTOPAYFLAG       VARCHAR2(1),
  COINSUFLAG        VARCHAR2(1),
  MAINCOINSUFLAG    VARCHAR2(1),
  STANDBYFLAG1      VARCHAR2(10),
  STANDBYFLAG2      VARCHAR2(10),
  STANDBYFLAG3      VARCHAR2(10),
  SENDSTATE         VARCHAR2(2),
  ERRORREASON       VARCHAR2(600),
  POLICYSEQUENCENO  VARCHAR2(50),
  OPERATOR          VARCHAR2(10),
  MAKEDATE          DATE,
  MAKETIME          VARCHAR2(8),
  MODIFYDATE        DATE,
  MODIFYTIME        VARCHAR2(8)
)
;
comment on column DPRENEWPOLICYINFO.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
alter table DPRENEWPOLICYINFO
  add constraint PK_DPRENEWPOLICYINFO primary key (EDORNO, EDORTYPE, POLICYNO);


create table DPTBUSSFETCHLOG
(
  BUSSBATCHNO VARCHAR2(30) not null,
  STATE       VARCHAR2(10) not null,
  STARTDATE   DATE,
  STARTTIME   VARCHAR2(10),
  ENDDATE     DATE,
  ENDTIME     VARCHAR2(10)
)
;
comment on table DPTBUSSFETCHLOG
  is '每次业务数据提取时记录一条数据';
comment on column DPTBUSSFETCHLOG.BUSSBATCHNO
  is '提数批次号';
comment on column DPTBUSSFETCHLOG.STATE
  is '0 - 提数进行中
1 - 提数已完成';
comment on column DPTBUSSFETCHLOG.STARTDATE
  is '提数开始日期';
comment on column DPTBUSSFETCHLOG.STARTTIME
  is '开始时间';
comment on column DPTBUSSFETCHLOG.ENDDATE
  is '结束日期';
comment on column DPTBUSSFETCHLOG.ENDTIME
  is '结束时间';
alter table DPTBUSSFETCHLOG
  add constraint PK_DPTBUSSFETCHLOG primary key (BUSSBATCHNO);


create table DPTERRORS
(
  SERIALNO   VARCHAR2(30) not null,
  ERRORMSG   VARCHAR2(2000),
  TASKNO     VARCHAR2(30),
  MAKEDATE   DATE not null,
  MAKETIME   VARCHAR2(10) not null,
  MODIFYDATE DATE not null,
  MODIFYTIME VARCHAR2(10) not null
)
;
comment on table DPTERRORS
  is '错误日志表
';
comment on column DPTERRORS.SERIALNO
  is '错误流水号';
comment on column DPTERRORS.ERRORMSG
  is '错误内容';
comment on column DPTERRORS.TASKNO
  is '任务批次号';
comment on column DPTERRORS.MAKEDATE
  is '入机日期';
comment on column DPTERRORS.MAKETIME
  is '入机时间';
comment on column DPTERRORS.MODIFYDATE
  is '最后修改日期';
comment on column DPTERRORS.MODIFYTIME
  is '最后修改时间';
alter table DPTERRORS
  add constraint PK_DPTERRORS primary key (SERIALNO);


create table DPTTASK
(
  TASKNO        VARCHAR2(30) not null,
  SERVICEID     VARCHAR2(50) not null,
  STATE         VARCHAR2(10) not null,
  BUSSCOUNT     NUMBER(8),
  ISASYN        VARCHAR2(5),
  RETURNSTATE   VARCHAR2(2),
  ERRORMSG      VARCHAR2(4000),
  RETURNTASKNO  VARCHAR2(400),
  SYNGROUPSEQNO VARCHAR2(50),
  REPORTDATE    DATE,
  REPORTTIME    VARCHAR2(10),
  RETURNDATE    DATE,
  RETURNTIME    VARCHAR2(10)
)
;
comment on table DPTTASK
  is '每次同信息平台交互时记录一条数据';
comment on column DPTTASK.TASKNO
  is '任务号';
comment on column DPTTASK.SERVICEID
  is '对应交易配置表中的交易代码
TS-NB	业务提数-承保
TS-BQ	业务提数-保全
TS-LP	业务提数-理赔
BS-NB-ASYN	报送数据-承保-异步
BS-BQ-ASYN	报送数据-保全-异步
BS-LP-ASYN	报送数据-理赔-异步
CX-NB	异步结果查询-承保
CX-BQ	异步结果查询-保全
CX-LP	异步结果查询-理赔';
comment on column DPTTASK.STATE
  is '0 - 未返回
1 - 已返回
E - 错误异常';
comment on column DPTTASK.BUSSCOUNT
  is '报送业务笔数';
comment on column DPTTASK.ISASYN
  is '0 - 同步
1 - 异步';
comment on column DPTTASK.RETURNSTATE
  is '（参考信息）平台返回结果：
0	输入数据有误，无法返回正常值
1	输入数据正确，返回正常值
2	输入数据部分成功
3	输入数据对象已存在
4	任务接收正常，已经排入队列（用于获取承保信息异步上传结果）
5	任务执行中（用于获取承保信息异步上传结果）
E	系统未知错误';
comment on column DPTTASK.ERRORMSG
  is '错误描述';
comment on column DPTTASK.RETURNTASKNO
  is '返回的任务编号';
comment on column DPTTASK.SYNGROUPSEQNO
  is '只有异步方式才有值';
comment on column DPTTASK.REPORTDATE
  is '报送日期';
comment on column DPTTASK.REPORTTIME
  is '报送时间';
comment on column DPTTASK.RETURNDATE
  is '返回日期';
comment on column DPTTASK.RETURNTIME
  is '返回时间';
alter table DPTTASK
  add constraint PK_DPTTASK primary key (TASKNO);


create table DPTTASKSUB
(
  TASKNO      VARCHAR2(30) not null,
  ORDERNO     NUMBER(8) not null,
  SUBTASKNO   VARCHAR2(30) not null,
  BUSSNO      VARCHAR2(100) not null,
  RETURNSTATE VARCHAR2(2),
  ERRORMSG    VARCHAR2(4000),
  REPORTDATE  DATE,
  REPORTTIME  VARCHAR2(10),
  RETURNDATE  DATE,
  RETURNTIME  VARCHAR2(10)
)
;
comment on table DPTTASKSUB
  is '每次同信息平台交互涉及的业务列表';
comment on column DPTTASKSUB.TASKNO
  is '任务号';
comment on column DPTTASKSUB.ORDERNO
  is '内部序号';
comment on column DPTTASKSUB.SUBTASKNO
  is '子任务号';
comment on column DPTTASKSUB.BUSSNO
  is '数据报送为对应的保单号、批单号、理赔号；
预约任务结果查询为对应的预约码。';
comment on column DPTTASKSUB.RETURNSTATE
  is '（参考信息）平台返回结果：
0	输入数据有误，无法返回正常值
1	输入数据正确，返回正常值
2	输入数据部分成功
3	输入数据对象已存在
4	任务接收正常，已经排入队列（用于获取承保信息异步上传结果）
5	任务执行中（用于获取承保信息异步上传结果）
E	系统未知错误';
comment on column DPTTASKSUB.ERRORMSG
  is '错误描述';
comment on column DPTTASKSUB.REPORTDATE
  is '报送日期';
comment on column DPTTASKSUB.REPORTTIME
  is '报送时间';
comment on column DPTTASKSUB.RETURNDATE
  is '返回日期';
comment on column DPTTASKSUB.RETURNTIME
  is '返回时间';
alter table DPTTASKSUB
  add constraint PK_DPTTASKSUB primary key (TASKNO, ORDERNO);


create table DPTTASKSYN
(
  SYNGROUPSEQNO VARCHAR2(50) not null,
  SERVICEID     VARCHAR2(50) not null,
  TASKNO        VARCHAR2(30) not null,
  STATE         VARCHAR2(10) not null,
  SENDDATE      DATE,
  SENDTIME      VARCHAR2(10),
  RETURNDATE    DATE,
  RETURNTIME    VARCHAR2(10)
)
;
comment on table DPTTASKSYN
  is '异步交易返回记在此表中记录一条待处理任务';
comment on column DPTTASKSYN.SYNGROUPSEQNO
  is '只有异步方式才有值';
comment on column DPTTASKSYN.SERVICEID
  is '预约查询时的交易类型';
comment on column DPTTASKSYN.TASKNO
  is '任务号';
comment on column DPTTASKSYN.STATE
  is '0 - 未处理
1 - 处理中
9 - 已处理
E - 错误异常';
comment on column DPTTASKSYN.SENDDATE
  is '预约任务日期';
comment on column DPTTASKSYN.SENDTIME
  is '预约时间';
comment on column DPTTASKSYN.RETURNDATE
  is '任务完成日期';
comment on column DPTTASKSYN.RETURNTIME
  is '完成时间';
alter table DPTTASKSYN
  add constraint PK_DPTTASKSYN primary key (SYNGROUPSEQNO);


create table DPUDUTY
(
  UPDATESN   VARCHAR2(30) not null,
  POLICYNO   VARCHAR2(30) not null,
  CONTNO     VARCHAR2(30) not null,
  POLNO      VARCHAR2(30) not null,
  DUTYCODE   VARCHAR2(60) not null,
  ENDDATE    DATE,
  DUTYSTATE  VARCHAR2(2),
  MAKEDATE   DATE,
  MAKETIME   VARCHAR2(8),
  MODIFYDATE DATE,
  MODIFYTIME VARCHAR2(8)
)
;
comment on table DPUDUTY
  is '保单状态修改责任信息表';
comment on column DPUDUTY.POLNO
  is '对应个人的险种号';
alter table DPUDUTY
  add constraint PK_DPUDUTY primary key (UPDATESN, POLNO, DUTYCODE);


create table DPUGRPRISK
(
  UPDATESN     VARCHAR2(30) not null,
  POLICYNO     VARCHAR2(30) not null,
  GRPPOLNO     VARCHAR2(30) not null,
  COVERAGETYPE VARCHAR2(1),
  COVERAGECODE VARCHAR2(5),
  RISKCODE     VARCHAR2(60) not null,
  AMNT         NUMBER(20,2),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8),
  RISKSTATE    VARCHAR2(2)
)
;
comment on table DPUGRPRISK
  is '保单状态修改团体险种信息表';
alter table DPUGRPRISK
  add constraint PK_DPUGRPRISK primary key (UPDATESN, GRPPOLNO);


create table DPUINSURED
(
  UPDATESN     VARCHAR2(30) not null,
  POLICYNO     VARCHAR2(30) not null,
  CONTNO       VARCHAR2(30) not null,
  CUSTOMERNO   VARCHAR2(60) not null,
  INSUREDSTATE VARCHAR2(2),
  ENDDATE      DATE,
  CONTPLANCODE VARCHAR2(30),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on column DPUINSURED.CUSTOMERNO
  is '在同一团单下的人员序号（只要能在一张保单下唯一标识一个被保人即可，且该号不能发生变化，而且换人时这个号也不能变，所以谨慎使用lis系统中的客户号）';
comment on column DPUINSURED.INSUREDSTATE
  is '被保险人是否有效
1  有效
2  中止
3  终止
9  其他
';
alter table DPUINSURED
  add constraint PK_DPUINSURED primary key (UPDATESN, CONTNO, CUSTOMERNO);


create table DPUPLANDUTY
(
  UPDATESN     VARCHAR2(30) not null,
  POLICYNO     VARCHAR2(30) not null,
  GRPPOLNO     VARCHAR2(30) not null,
  DUTYCODE     VARCHAR2(60) not null,
  ENDDATE      DATE,
  DUTYSTATE    VARCHAR2(2),
  CONTPLANCODE VARCHAR2(30) not null,
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;
comment on table DPUPLANDUTY
  is '保单状态修改承保计划责任信息表';
comment on column DPUPLANDUTY.GRPPOLNO
  is '对应团体险种号';
comment on column DPUPLANDUTY.DUTYSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
alter table DPUPLANDUTY
  add constraint PK_DPUPLANDUTY primary key (UPDATESN, GRPPOLNO, DUTYCODE, CONTPLANCODE);


create table DPUPOLICYINFO
(
  BUSSBATCHNO            VARCHAR2(30) not null,
  SUBTASKNO              VARCHAR2(30) not null,
  UPDATESN               VARCHAR2(30) not null,
  POLICYNO               VARCHAR2(30) not null,
  POLICYSTATUSUPDATETYPE VARCHAR2(2),
  TERMINATIONDATE        DATE,
  CONTSTATE              VARCHAR2(2),
  TERMINATIONREASON      VARCHAR2(1),
  CLEARINGFLAG           VARCHAR2(1),
  CLEARINGTYPE           VARCHAR2(2),
  CLEARINGDATE           DATE,
  SENDSTATE              VARCHAR2(2) not null,
  ERRORREASON            VARCHAR2(600),
  OPERATOR               VARCHAR2(10),
  MAKEDATE               DATE,
  MAKETIME               VARCHAR2(8),
  MODIFYDATE             DATE,
  MODIFYTIME             VARCHAR2(8)
)
;
comment on table DPUPOLICYINFO
  is '保单状态修改使用的保单信息表
';
comment on column DPUPOLICYINFO.CONTSTATE
  is '1  有效
2  中止
3  终止
9  其他
';
comment on column DPUPOLICYINFO.CLEARINGFLAG
  is '0  否
1  是
';
comment on column DPUPOLICYINFO.CLEARINGTYPE
  is '01  实时
02  月
03  季
04  半年
05  年
06  不定期
';
comment on column DPUPOLICYINFO.SENDSTATE
  is '0 - 未报送
1 - 报送中
9 - 报送成功
E - 错误';
alter table DPUPOLICYINFO
  add constraint PK_DPUPOLICYINFO primary key (UPDATESN);


create table DPURISK
(
  UPDATESN      VARCHAR2(30) not null,
  POLICYNO      VARCHAR2(30) not null,
  CONTNO        VARCHAR2(30) not null,
  POLNO         VARCHAR2(30) not null,
  COVERAGETYPE  VARCHAR2(1),
  COVERAGECODE  VARCHAR2(5),
  RISKCODE      VARCHAR2(60) not null,
  EFFECTIVEAMNT NUMBER(20,2),
  MAKEDATE      DATE,
  MAKETIME      VARCHAR2(8),
  MODIFYDATE    DATE,
  MODIFYTIME    VARCHAR2(8),
  RISKSTATE     VARCHAR2(2)
)
;
comment on table DPURISK
  is '保单状态修改个人险种信息表';
alter table DPURISK
  add constraint PK_DPURISK primary key (UPDATESN, POLNO);


create table DTO_ACCGRPPOLICY
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  SPLITPOLICYNO           VARCHAR2(1),
  APPLICATIONFORMNO       VARCHAR2(30),
  APPLICATIONDATE         DATE,
  POLICYNO                VARCHAR2(30),
  POLICYSTARTDATE         DATE,
  POLICYENDDATE           DATE,
  RENEWALMETHOD           VARCHAR2(2),
  RENEWALTIMES            NUMBER(3),
  SALES                   VARCHAR2(2),
  SALESCHANNELCODE        VARCHAR2(20),
  SALESCHANNELNAME        VARCHAR2(100),
  PRODUCTNAME             VARCHAR2(500),
  POLICYHOLDERNUM         NUMBER(8),
  EFFECTIVEINSUREDNUM     NUMBER(8),
  PREMIUM                 NUMBER(20,2),
  SPECIALREMARK           VARCHAR2(900),
  BUSINESSADDRESS         VARCHAR2(200),
  UNDERWRITNGDATE         DATE,
  SINGLEDATE              DATE,
  SALESCHANNELNAMECOMMENT VARCHAR2(100)
)
;
alter table DTO_ACCGRPPOLICY
  add constraint XPKDTO_ACCGRPPOLICY primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYBENEFIT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  POLICYNO                VARCHAR2(30),
  CUSTOMERNO              VARCHAR2(60),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(3,2)
)
;
alter table DTO_ACCGRPPOLICYBENEFIT
  add constraint XPKDTO_ACCGRPPOLICYBENEFIT primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYBENEFITLOG
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  ENDORSEMENTNO           VARCHAR2(30),
  ENDORSEMENTTYPE         VARCHAR2(2),
  POLICYNO                VARCHAR2(30),
  CUSTOMERNO              VARCHAR2(60),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(3,2)
)
;
alter table DTO_ACCGRPPOLICYBENEFITLOG
  add constraint XPKDTO_ACCGRPPOLICYBENEFITLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYCOVERAGE
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50),
  BUSSTASKNO             VARCHAR2(30),
  POLICYNO               VARCHAR2(30),
  CUSTOMERNO             VARCHAR2(60),
  POLNO                  VARCHAR2(30),
  LIABILITYCODE          VARCHAR2(60),
  LIABILITYNAME          VARCHAR2(200),
  LIABILITYEFFECTIVEDATE DATE,
  LIABILITYEXPIREDATE    DATE,
  LIABILITYSTATUS        VARCHAR2(2),
  LIABILITYPREMIUM       NUMBER(20,2),
  LIMITAMOUNT            NUMBER(20,2),
  WAITINGPERIOD          NUMBER(8),
  REMARK                 VARCHAR2(600)
)
;
alter table DTO_ACCGRPPOLICYCOVERAGE
  add constraint XPKDTO_ACCGRPPOLICYCOVERAGE primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYCOVERAGELOG
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50),
  BUSSTASKNO             VARCHAR2(30),
  ENDORSEMENTNO          VARCHAR2(30),
  ENDORSEMENTTYPE        VARCHAR2(2),
  POLICYNO               VARCHAR2(30),
  CUSTOMERNO             VARCHAR2(60),
  POLNO                  VARCHAR2(30),
  LIABILITYCODE          VARCHAR2(60),
  LIABILITYNAME          VARCHAR2(200),
  LIABILITYEFFECTIVEDATE DATE,
  LIABILITYEXPIREDATE    DATE,
  LIABILITYSTATUS        VARCHAR2(2),
  LIABILITYPREMIUM       NUMBER(20,2),
  LIMITAMOUNT            NUMBER(20,2),
  WAITINGPERIOD          NUMBER(8),
  REMARK                 VARCHAR2(600)
)
;
alter table DTO_ACCGRPPOLICYCOVERAGELOG
  add constraint XPKDTO_ACCGRPPOLICYCOVERAGELOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYINSURED
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50),
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CUSTOMERNO                  VARCHAR2(60),
  NAME                        VARCHAR2(60),
  GENDER                      VARCHAR2(1),
  BIRTHDAY                    DATE,
  CRITTYPE                    VARCHAR2(2),
  CRITCODE                    VARCHAR2(30),
  MOBILE                      VARCHAR2(30),
  OFFERSTATUS                 VARCHAR2(2),
  SUBSTARTDATE                DATE,
  SUBENDDATE                  DATE,
  INSUREDTYPE                 VARCHAR2(2),
  SNOFMAININSURED             VARCHAR2(30),
  RELATIONSHIPWITHMAININSURED VARCHAR2(2),
  APPOINTEDBENEFIT            VARCHAR2(1),
  INSUREDPREMIUM              NUMBER(20,2)
)
;
alter table DTO_ACCGRPPOLICYINSURED
  add constraint XPKDTO_ACCGRPPOLICYINSURED primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYINSUREDLOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50),
  BUSSTASKNO                  VARCHAR2(30),
  ENDORSEMENTNO               VARCHAR2(30),
  ENDORSEMENTTYPE             VARCHAR2(2),
  POLICYNO                    VARCHAR2(30),
  CUSTOMERNO                  VARCHAR2(60),
  NAME                        VARCHAR2(60),
  GENDER                      VARCHAR2(1),
  BIRTHDAY                    DATE,
  CRITTYPE                    VARCHAR2(2),
  CRITCODE                    VARCHAR2(30),
  MOBILE                      VARCHAR2(20),
  OFFERSTATUS                 VARCHAR2(2),
  SUBSTARTDATE                DATE,
  SUBENDDATE                  DATE,
  INSUREDTYPE                 VARCHAR2(2),
  SNOFMAININSURED             VARCHAR2(30),
  RELATIONSHIPWITHMAININSURED VARCHAR2(2),
  APPOINTEDBENEFIT            VARCHAR2(1),
  INSUREDPREMIUM              NUMBER(20,2),
  INSUREDCURRENTPREMIUM       NUMBER(20,2)
)
;
alter table DTO_ACCGRPPOLICYINSUREDLOG
  add constraint XPKDTO_ACCGRPPOLICYINSUREDLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYLOG
(
  SWIFTNO                    VARCHAR2(50) not null,
  PSWIFTNO                   VARCHAR2(50),
  BUSSTASKNO                 VARCHAR2(30),
  POLICYNO                   VARCHAR2(30),
  ENDORSEMENTTYPE            VARCHAR2(2),
  ENDORSEMENTNO              VARCHAR2(30),
  ENDORSEMENTAPPLICATIONDATE DATE,
  EFFECTIVEDATE              DATE,
  SPLITPOLICYNO              VARCHAR2(1),
  APPLICATIONFORMNO          VARCHAR2(30),
  APPLICATIONDATE            DATE,
  POLICYSTARTDATE            DATE,
  POLICYENDDATE              DATE,
  RENEWALMETHOD              VARCHAR2(2),
  RENEWALTIMES               NUMBER(3),
  SALES                      VARCHAR2(2),
  SALESCHANNELCODE           VARCHAR2(20),
  SALESCHANNELNAME           VARCHAR2(100),
  PRODUCTNAME                VARCHAR2(500),
  POLICYHOLDERNUM            NUMBER(8),
  EFFECTIVEINSUREDNUM        NUMBER(8),
  PREMIUM                    NUMBER(20,2),
  CURRENTPREMIUM             NUMBER(20,2),
  SPECIALREMARK              VARCHAR2(900)
)
;
alter table DTO_ACCGRPPOLICYLOG
  add constraint XPKDTO_ACCGRPPOLICYLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYPERSONPH
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50),
  BUSSTASKNO   VARCHAR2(30),
  POLICYNO     VARCHAR2(30),
  APPNTNO      VARCHAR2(30),
  NAME         VARCHAR2(120),
  CRITTYPE     VARCHAR2(2),
  CRITCODE     VARCHAR2(30),
  CONTACT      VARCHAR2(120),
  CONTACTPHONE VARCHAR2(20),
  CONTACTTEL   VARCHAR2(30)
)
;
alter table DTO_ACCGRPPOLICYPERSONPH
  add constraint XPKDTO_ACCGRPPOLICYPERSONPH primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYPERSONPHLOG
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50),
  BUSSTASKNO      VARCHAR2(30),
  ENDORSEMENTNO   VARCHAR2(30),
  ENDORSEMENTTYPE VARCHAR2(2),
  POLICYNO        VARCHAR2(30),
  APPNTNO         VARCHAR2(30),
  NAME            VARCHAR2(120),
  CRITTYPE        VARCHAR2(2),
  CRITCODE        VARCHAR2(30),
  CONTACT         VARCHAR2(120),
  CONTACTPHONE    VARCHAR2(20),
  CONTACTTEL      VARCHAR2(30)
)
;
alter table DTO_ACCGRPPOLICYPERSONPHLOG
  add constraint XPKDTO_ACCGRPPOLICYPERSONPHLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYRESULT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50),
  BUSSTASKNO         VARCHAR2(30),
  SINGLERESPONSECODE VARCHAR2(1),
  POLICYNO           VARCHAR2(30),
  ERRORREASON        VARCHAR2(600),
  POLICYSEQUENCENO   VARCHAR2(50)
)
;
alter table DTO_ACCGRPPOLICYRESULT
  add constraint XPKDTO_ACCGRPPOLICYRESULT primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYRESULTLOG
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  SINGLERESPONSECODE    VARCHAR2(1),
  POLICYNO              VARCHAR2(30),
  ENDORSEMENTNO         VARCHAR2(30),
  ENDORSEMENTTYPE       VARCHAR2(2),
  ERRORREASON           VARCHAR2(600),
  ENDORSEMENTSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_ACCGRPPOLICYRESULTLOG
  add constraint XPKDTO_ACCGRPPOLICYRESULTLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYRESULTS
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50),
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_ACCGRPPOLICYRESULTS
  add constraint XPKDTO_ACCGRPPOLICYRESULTS primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYRESULTSLOG
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50),
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_ACCGRPPOLICYRESULTSLOG
  add constraint XPKDTO_ACCGRPPOLICYRESULTSLOG primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYUPCOVERAGE
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  POLICYNO              VARCHAR2(30),
  CUSTOMERNO            VARCHAR2(60),
  POLNO                 VARCHAR2(30),
  COVERAGECODE          VARCHAR2(5),
  COMCOVERAGECODE       VARCHAR2(60),
  COVERAGENAME          VARCHAR2(200),
  COVERAGEEFFECTIVEDATE DATE,
  COVERAGEEXPIREDATE    DATE,
  MAINATTACHEDFLAG      VARCHAR2(1),
  COVERAGEPREMIUM       NUMBER(20,2),
  COVERAGESUMINSURED    NUMBER(20,2),
  PAYMENTMETHOD         VARCHAR2(2),
  PAYMENTYEARS          NUMBER(4),
  SPECIFICBUSINESS      VARCHAR2(1),
  SPECIFICBUSINESSCODE  VARCHAR2(5)
)
;
alter table DTO_ACCGRPPOLICYUPCOVERAGE
  add constraint XPKDTO_ACCGRPPOLICYUPCOVERAGE primary key (SWIFTNO);


create table DTO_ACCGRPPOLICYUPCOVERAGELOG
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  ENDORSEMENTNO         VARCHAR2(30),
  ENDORSEMENTTYPE       VARCHAR2(2),
  POLICYNO              VARCHAR2(30),
  CUSTOMERNO            VARCHAR2(60),
  POLNO                 VARCHAR2(30),
  COVERAGECODE          VARCHAR2(5),
  COMCOVERAGECODE       VARCHAR2(60),
  COVERAGENAME          VARCHAR2(200),
  COVERAGEEFFECTIVEDATE DATE,
  COVERAGEEXPIREDATE    DATE,
  MAINATTACHEDFLAG      VARCHAR2(1),
  COVERAGEPREMIUM       NUMBER(20,2),
  COVERAGESUMINSURED    NUMBER(20,2),
  PAYMENTMETHOD         VARCHAR2(2),
  PAYMENTYEARS          NUMBER(4),
  SPECIFICBUSINESS      VARCHAR2(1),
  SPECIFICBUSINESSCODE  VARCHAR2(5)
)
;
alter table DTO_ACCGRPPOLICYUPCOVERAGELOG
  add constraint XPKDTO_ACCGRPPOLICYUPCOVERAGEL primary key (SWIFTNO);


create table DTO_ACCIDENTRESULT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  CLAIMNO            VARCHAR2(50),
  ACCIDENTRESULT     VARCHAR2(2),
  ACCIDENTRESULTDATE DATE
)
;
alter table DTO_ACCIDENTRESULT
  add constraint PK_DTO_ACCIDENTRESULT primary key (SWIFTNO);
create index IDX_ACCIDENTRESULT on DTO_ACCIDENTRESULT (BUSSTASKNO);


create table DTO_ACCPOLICY
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  APPLICATIONFORMNO       VARCHAR2(30),
  APPLICATIONDATE         DATE,
  POLICYNO                VARCHAR2(30),
  POLICYSTARTDATE         DATE,
  POLICYENDDATE           DATE,
  RENEWALMETHOD           VARCHAR2(2),
  RENEWALTIMES            NUMBER(20,2),
  SALES                   VARCHAR2(2),
  SALESCHANNELCODE        VARCHAR2(20),
  SALESCHANNELNAME        VARCHAR2(100),
  PRODUCTNAME             VARCHAR2(500),
  PREMIUM                 NUMBER(20,2),
  SPECIALREMARK           VARCHAR2(900),
  BUSINESSADDRESS         VARCHAR2(200),
  UNDERWRITNGDATE         DATE,
  SINGLEDATE              DATE,
  SALESCHANNELNAMECOMMENT VARCHAR2(100)
)
;
alter table DTO_ACCPOLICY
  add constraint XPKDTO_ACCPOLICY primary key (SWIFTNO);


create table DTO_ACCPOLICYBENEFIT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  POLICYNO                VARCHAR2(30),
  CUSTOMERNO              VARCHAR2(60),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(3,2)
)
;
alter table DTO_ACCPOLICYBENEFIT
  add constraint XPKDTO_ACCPOLICYBENEFIT primary key (SWIFTNO);


create table DTO_ACCPOLICYBENEFITLOG
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  ENDORSEMENTNO           VARCHAR2(30),
  ENDORSEMENTTYPE         VARCHAR2(2),
  POLICYNO                VARCHAR2(30),
  CUSTOMERNO              VARCHAR2(60),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(3,2)
)
;
alter table DTO_ACCPOLICYBENEFITLOG
  add constraint XPKDTO_ACCPOLICYBENEFITLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYCOVERAGE
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50),
  BUSSTASKNO             VARCHAR2(30),
  POLICYNO               VARCHAR2(30),
  CUSTOMERNO             VARCHAR2(60),
  POLNO                  VARCHAR2(30),
  LIABILITYCODE          VARCHAR2(60),
  LIABILITYNAME          VARCHAR2(200),
  LIABILITYEFFECTIVEDATE DATE,
  LIABILITYEXPIREDATE    DATE,
  LIABILITYSTATUS        VARCHAR2(2),
  LIABILITYPREMIUM       NUMBER(20,2),
  LIMITAMOUNT            NUMBER(20,2),
  WAITINGPERIOD          NUMBER(8),
  REMARK                 VARCHAR2(600)
)
;
alter table DTO_ACCPOLICYCOVERAGE
  add constraint XPKDTO_ACCPOLICYCOVERAGE primary key (SWIFTNO);


create table DTO_ACCPOLICYCOVERAGELOG
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50),
  BUSSTASKNO             VARCHAR2(30),
  ENDORSEMENTNO          VARCHAR2(30),
  ENDORSEMENTTYPE        VARCHAR2(2),
  POLICYNO               VARCHAR2(30),
  CUSTOMERNO             VARCHAR2(60),
  POLNO                  VARCHAR2(30),
  LIABILITYCODE          VARCHAR2(60),
  LIABILITYNAME          VARCHAR2(200),
  LIABILITYEFFECTIVEDATE DATE,
  LIABILITYEXPIREDATE    DATE,
  LIABILITYSTATUS        VARCHAR2(2),
  LIABILITYPREMIUM       NUMBER(20,2),
  LIMITAMOUNT            NUMBER(20,2),
  WAITINGPERIOD          NUMBER(8),
  REMARK                 VARCHAR2(600)
)
;
alter table DTO_ACCPOLICYCOVERAGELOG
  add constraint XPKDTO_ACCPOLICYCOVERAGELOG primary key (SWIFTNO);


create table DTO_ACCPOLICYINSURED
(
  SWIFTNO          VARCHAR2(50) not null,
  PSWIFTNO         VARCHAR2(50),
  BUSSTASKNO       VARCHAR2(30),
  POLICYNO         VARCHAR2(30),
  CUSTOMERNO       VARCHAR2(60),
  NAME             VARCHAR2(60),
  GENDER           VARCHAR2(1),
  BIRTHDAY         DATE,
  CRITTYPE         VARCHAR2(2),
  CRITCODE         VARCHAR2(30),
  MOBILE           VARCHAR2(20),
  OFFERSTATUS      VARCHAR2(1),
  SUBSTARTDATE     DATE,
  SUBENDDATE       DATE,
  APPOINTEDBENEFIT VARCHAR2(1)
)
;
alter table DTO_ACCPOLICYINSURED
  add constraint XPKDTO_ACCPOLICYINSURED primary key (SWIFTNO);


create table DTO_ACCPOLICYINSUREDLOG
(
  SWIFTNO          VARCHAR2(50) not null,
  PSWIFTNO         VARCHAR2(50),
  BUSSTASKNO       VARCHAR2(30),
  ENDORSEMENTNO    VARCHAR2(30),
  ENDORSEMENTTYPE  VARCHAR2(2),
  POLICYNO         VARCHAR2(30),
  CUSTOMERNO       VARCHAR2(60),
  NAME             VARCHAR2(60),
  GENDER           VARCHAR2(1),
  BIRTHDAY         DATE,
  CRITTYPE         VARCHAR2(2),
  CRITCODE         VARCHAR2(30),
  MOBILE           VARCHAR2(20),
  OFFERSTATUS      VARCHAR2(1),
  SUBSTARTDATE     DATE,
  SUBENDDATE       DATE,
  APPOINTEDBENEFIT VARCHAR2(1)
)
;
alter table DTO_ACCPOLICYINSUREDLOG
  add constraint XPKDTO_ACCPOLICYINSUREDLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYLOG
(
  SWIFTNO                    VARCHAR2(50) not null,
  PSWIFTNO                   VARCHAR2(50),
  BUSSTASKNO                 VARCHAR2(30),
  POLICYNO                   VARCHAR2(30),
  ENDORSEMENTTYPE            VARCHAR2(2),
  ENDORSEMENTNO              VARCHAR2(30),
  ENDORSEMENTAPPLICATIONDATE DATE,
  EFFECTIVEDATE              DATE,
  APPLICATIONFORMNO          VARCHAR2(30),
  APPLICATIONDATE            DATE,
  POLICYSTARTDATE            DATE,
  POLICYENDDATE              DATE,
  RENEWALMETHOD              VARCHAR2(2),
  RENEWALTIMES               NUMBER(3),
  SALES                      VARCHAR2(2),
  SALESCHANNELCODE           VARCHAR2(30),
  SALESCHANNELNAME           VARCHAR2(100),
  PRODUCTNAME                VARCHAR2(500),
  PREMIUM                    NUMBER(20,2),
  SPECIALREMARK              VARCHAR2(900)
)
;
alter table DTO_ACCPOLICYLOG
  add constraint XPKDTO_ACCPOLICYLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYPERSONPH
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  POLICYNO                VARCHAR2(30),
  APPNTNO                 VARCHAR2(30),
  NAME                    VARCHAR2(120),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  MOBILE                  VARCHAR2(20)
)
;
alter table DTO_ACCPOLICYPERSONPH
  add constraint XPKDTO_ACCPOLICYPERSONPH primary key (SWIFTNO);


create table DTO_ACCPOLICYPERSONPHLOG
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50),
  BUSSTASKNO              VARCHAR2(30),
  ENDORSEMENTNO           VARCHAR2(30),
  ENDORSEMENTTYPE         VARCHAR2(2),
  POLICYNO                VARCHAR2(30),
  APPNTNO                 VARCHAR2(30),
  NAME                    VARCHAR2(120),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  MOBILE                  VARCHAR2(20)
)
;
alter table DTO_ACCPOLICYPERSONPHLOG
  add constraint XPKDTO_ACCPOLICYPERSONPHLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYRESULT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50),
  BUSSTASKNO         VARCHAR2(30),
  SINGLERESPONSECODE VARCHAR2(1),
  POLICYNO           VARCHAR2(30),
  ERRORREASON        VARCHAR2(600),
  POLICYSEQUENCENO   VARCHAR2(50)
)
;
alter table DTO_ACCPOLICYRESULT
  add constraint XPKDTO_ACCPOLICYRESULT primary key (SWIFTNO);


create table DTO_ACCPOLICYRESULTLOG
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  SINGLERESPONSECODE    VARCHAR2(1),
  POLICYNO              VARCHAR2(30),
  ENDORSEMENTNO         VARCHAR2(30),
  ENDORSEMENTTYPE       VARCHAR2(2),
  ERRORREASON           VARCHAR2(600),
  ENDORSEMENTSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_ACCPOLICYRESULTLOG
  add constraint XPKDTO_ACCPOLICYRESULTLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYRESULTS
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50),
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_ACCPOLICYRESULTS
  add constraint XPKDTO_ACCPOLICYRESULTS primary key (SWIFTNO);


create table DTO_ACCPOLICYRESULTSLOG
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50),
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_ACCPOLICYRESULTSLOG
  add constraint XPKDTO_ACCPOLICYRESULTSLOG primary key (SWIFTNO);


create table DTO_ACCPOLICYUPCOVERAGE
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  POLICYNO              VARCHAR2(30),
  CUSTOMERNO            VARCHAR2(60),
  POLNO                 VARCHAR2(30),
  COVERAGECODE          VARCHAR2(5),
  COMCOVERAGECODE       VARCHAR2(60),
  COVERAGENAME          VARCHAR2(200),
  COVERAGEEFFECTIVEDATE DATE,
  COVERAGEEXPIREDATE    DATE,
  MAINATTACHEDFLAG      VARCHAR2(1),
  COVERAGEPREMIUM       NUMBER(20,2),
  COVERAGESUMINSURED    NUMBER(20,2),
  PAYMENTMETHOD         VARCHAR2(2),
  PAYMENTYEARS          NUMBER(4),
  SPECIFICBUSINESS      VARCHAR2(1),
  SPECIFICBUSINESSCODE  VARCHAR2(5)
)
;
alter table DTO_ACCPOLICYUPCOVERAGE
  add constraint XPKDTO_ACCPOLICYUPCOVERAGE primary key (SWIFTNO);


create table DTO_ACCPOLICYUPCOVERAGELOG
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50),
  BUSSTASKNO            VARCHAR2(30),
  ENDORSEMENTNO         VARCHAR2(30),
  ENDORSEMENTTYPE       VARCHAR2(2),
  POLICYNO              VARCHAR2(30),
  CUSTOMERNO            VARCHAR2(60),
  POLNO                 VARCHAR2(30),
  COVERAGECODE          VARCHAR2(5),
  COMCOVERAGECODE       VARCHAR2(60),
  COVERAGENAME          VARCHAR2(200),
  COVERAGEEFFECTIVEDATE DATE,
  COVERAGEEXPIREDATE    DATE,
  MAINATTACHEDFLAG      VARCHAR2(1),
  COVERAGEPREMIUM       NUMBER(20,2),
  COVERAGESUMINSURED    NUMBER(20,2),
  PAYMENTMETHOD         VARCHAR2(2),
  PAYMENTYEARS          NUMBER(4),
  SPECIFICBUSINESS      VARCHAR2(1),
  SPECIFICBUSINESSCODE  VARCHAR2(5)
)
;
alter table DTO_ACCPOLICYUPCOVERAGELOG
  add constraint XPKDTO_ACCPOLICYUPCOVERAGELOG primary key (SWIFTNO);


create table DTO_APPROVALRECEIPT
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  CLAIMNO                     VARCHAR2(50),
  CLINICSTARTDATE             DATE,
  CLINICMONEY                 NUMBER(10,2),
  MUTUALFUNDPAYA              NUMBER(10,2),
  MUTUALFUNDPAYB              NUMBER(10,2),
  PAYMENTA                    NUMBER(10,2),
  OVERALLFINANCINGPAYMENT     NUMBER(10,2),
  OVERALLFINANCINGYEARPAYMENT NUMBER(10,2),
  PAYMENTB                    NUMBER(10,2),
  OWNEXPENSE                  NUMBER(10,2),
  RECEIPTNO                   VARCHAR2(60)
)
;
alter table DTO_APPROVALRECEIPT
  add constraint PK_DTO_APPROVALRECEIPT primary key (SWIFTNO);


create table DTO_ASYCLAIMINFORESPONSEOBJECT
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50) not null,
  BUSSTASKNO      VARCHAR2(30),
  RESPONSECODE    VARCHAR2(1),
  ERRORMESSAGE    VARCHAR2(600),
  TASKNO          VARCHAR2(50),
  GROUPSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_ASYCLAIMINFORESPONSEOBJECT
  add constraint PK_DTO_ASYCLAIMINFORESPOBJECT primary key (SWIFTNO);
create index IDX_ASYCLAIMINFORESPONSEOBJECT on DTO_ASYCLAIMINFORESPONSEOBJECT (BUSSTASKNO);


create table DTO_BIRTHCLINICRECEIPT
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  RECEIPTNO           VARCHAR2(60),
  HOSPITALCODE        VARCHAR2(10),
  CLINICDATE          DATE,
  FEEAMOUNT           NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1)
)
;
alter table DTO_BIRTHCLINICRECEIPT
  add constraint PK_DTO_BIRTHCLINICRECEIPT primary key (SWIFTNO);


create table DTO_BIRTHHOSPITALRECEIPT
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  RECEIPTNO           VARCHAR2(60),
  HOSPITALCODE        VARCHAR2(10),
  HOSPITALDATE        DATE,
  DISCHARDEDATE       DATE,
  HOSPITALSTAY        NUMBER(10),
  HOSPITALMONEY       NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1)
)
;
alter table DTO_BIRTHHOSPITALRECEIPT
  add constraint DTO_BIRTHHOSPITALRECEIPT primary key (SWIFTNO);


create table DTO_CLAIMINFO
(
  SWIFTNO                  VARCHAR2(50) not null,
  PSWIFTNO                 VARCHAR2(50) not null,
  BUSSTASKNO               VARCHAR2(30),
  USERNAME                 VARCHAR2(30),
  PASSWORD                 VARCHAR2(600),
  CLAIMNO                  VARCHAR2(50),
  REPORTDATE               DATE,
  REPORTNO                 VARCHAR2(50),
  REGISTRATIONDATE         DATE,
  REGISTRATIONNO           VARCHAR2(50),
  BATCHNO                  VARCHAR2(50),
  ACCIDENTTIME             DATE,
  ACCIDENTREASON           VARCHAR2(1),
  ADDRESS1                 VARCHAR2(6),
  ADDRESS2                 VARCHAR2(6),
  ADDRESS3                 VARCHAR2(6),
  ADDRESS4                 VARCHAR2(100),
  ACCIDENTDES              VARCHAR2(500),
  CLAIMINVESTIGATION       VARCHAR2(1),
  REMOTECLAIMINVESTIGATION VARCHAR2(2),
  INVESTIGATIONSTARTDATE   DATE,
  INVESTIGATIONENDDATE     DATE,
  TREATMENTADVICE          VARCHAR2(2),
  CRITICALILLNESSNO        VARCHAR2(8),
  INJURYREASONCODE         VARCHAR2(7),
  CLAIMAMOUNT              NUMBER(14,2),
  ENDCASEDATE              DATE,
  STATUS                   VARCHAR2(2),
  CANCELDATE               DATE,
  CLAIMDATE                DATE
)
;
alter table DTO_CLAIMINFO
  add constraint PK_DTO_CLAIMINFO primary key (SWIFTNO);
create index IDX_CLAIMINFO on DTO_CLAIMINFO (BUSSTASKNO);


create table DTO_CLAIMINFORESPONSEOBJECT
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50) not null,
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_CLAIMINFORESPONSEOBJECT
  add constraint PK_DTO_CLAIMINFORESPONSEOBJECT primary key (SWIFTNO);
create index IDX_CLAIMINFORESPONSEOBJECT on DTO_CLAIMINFORESPONSEOBJECT (BUSSTASKNO);


create table DTO_CLAIMRESULT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  SINGLERESPONSECODE VARCHAR2(1),
  CLAIMNO            VARCHAR2(50),
  ERRORREASON        VARCHAR2(600),
  CLAIMCODE          VARCHAR2(50)
)
;
alter table DTO_CLAIMRESULT
  add constraint PK_DTO_CLAIMRESULT primary key (SWIFTNO);
create index IDX_CLAIMRESULT on DTO_CLAIMRESULT (BUSSTASKNO);


create table DTO_CLINICRECEIPT
(
  SWIFTNO              VARCHAR2(50) not null,
  PSWIFTNO             VARCHAR2(50) not null,
  BUSSTASKNO           VARCHAR2(30),
  CLAIMNO              VARCHAR2(50),
  RECEIPTNO            VARCHAR2(60),
  HOSPITALCODE         VARCHAR2(10),
  CLINICDATE           DATE,
  CLINICMONEY          NUMBER(10,2),
  CASH                 NUMBER(10,2),
  ACCOUNTPAYMENT       NUMBER(10,2),
  ACCOUNTBALANCE       NUMBER(10,2),
  MEDICALPAYMENT       NUMBER(10,2),
  TOTALMEDICALPAYMENT  NUMBER(10,2),
  TOTALANNUALPAYMENT   NUMBER(10,2),
  INSURANCEPAYMENT     NUMBER(10,2),
  CLINICLARGEPAYMENT   NUMBER(10,2),
  RETIREMENTPAYMENT    NUMBER(10,2),
  DISABILITYSOLDIER    NUMBER(10,2),
  CIVILSERVANTS        NUMBER(10,2),
  BALANCEANNUALPAYMENT NUMBER(10,2),
  INDIVIDUALPAYMENT    NUMBER(10,2),
  PAYMENTA             NUMBER(10,2),
  PAYMENTFROM          NUMBER(10,2),
  PAYMENTCAP           NUMBER(10,2),
  PAYMENTB             NUMBER(10,2),
  OWNEXPENSE           NUMBER(10,2),
  RECEIPTCLAIMAMOUNT   NUMBER(10,2),
  OPERATION            VARCHAR2(1)
)
;
alter table DTO_CLINICRECEIPT
  add constraint PK_DTO_CLINICRECEIPT primary key (SWIFTNO);
create index IDX_CLINICRECEIPT on DTO_CLINICRECEIPT (BUSSTASKNO);


create table DTO_CLMCALLER
(
  SWIFTNO                  VARCHAR2(50) not null,
  PSWIFTNO                 VARCHAR2(50) not null,
  BUSSTASKNO               VARCHAR2(30),
  CLAIMNO                  VARCHAR2(50),
  NAME                     VARCHAR2(60),
  GENDER                   VARCHAR2(1),
  BIRTHDAY                 DATE,
  CRITTYPE                 VARCHAR2(2),
  CRITCODE                 VARCHAR2(30),
  RELATIONSHIPWITHCLAIMANT VARCHAR2(2),
  CONTACTNO                VARCHAR2(60),
  CONTACTADDRESS           VARCHAR2(600),
  ADDRESS1                 VARCHAR2(20),
  ADDRESS2                 VARCHAR2(20),
  ADDRESS3                 VARCHAR2(40),
  ADDRESS4                 VARCHAR2(100)
)
;
alter table DTO_CLMCALLER
  add constraint PK_DTO_CLMCALLER primary key (SWIFTNO);
create index IDX_CLMCALLER on DTO_CLMCALLER (BUSSTASKNO);


create table DTO_CLMCLAIMANT
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50) not null,
  BUSSTASKNO   VARCHAR2(30),
  CLAIMNO      VARCHAR2(50),
  NAME         VARCHAR2(60),
  GENDER       VARCHAR2(1),
  BIRTHDAY     DATE,
  CRITTYPE     VARCHAR2(2),
  CRITCODE     VARCHAR2(30),
  CLAIMANTTYPE VARCHAR2(2)
)
;
alter table DTO_CLMCLAIMANT
  add constraint PK_DTO_CLMCLAIMANT primary key (SWIFTNO);
create index IDX_CLMCLAIMANT on DTO_CLMCLAIMANT (BUSSTASKNO);


create table DTO_CLMNONMEDICRECEIPT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  CLAIMNO                 VARCHAR2(50),
  MAINFEENO               VARCHAR2(30),
  NONMEDICARERECEIPTNO    VARCHAR2(60),
  HOSPITALCODE            VARCHAR2(10),
  FEEHAPPENDATE           DATE,
  FEEENDDATE              DATE,
  LIABILITYCLASSIFICATION VARCHAR2(2),
  MEDICARETYPE            VARCHAR2(1),
  FEEAMOUNT               NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT     NUMBER(20,2),
  REIMBUSEMENTAMOUNT      NUMBER(20,2)
)
;
alter table DTO_CLMNONMEDICRECEIPT
  add constraint PK_DTO_CLMNONMEDICRECEIPT primary key (SWIFTNO);
create index IDX_CLMNONMEDICRECEIPT on DTO_CLMNONMEDICRECEIPT (BUSSTASKNO);


create table DTO_COOPERATIONHOSPITALRECEIPT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  CLAIMNO                 VARCHAR2(50),
  RECEIPTNO               VARCHAR2(60),
  HOSPITALCODE            VARCHAR2(10),
  HOSPITALDATE            DATE,
  DISCHARDEDATE           DATE,
  HOSPITALSTAY            NUMBER(10),
  HOSPITALMONEY           NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT     NUMBER(20,2),
  NRCMSREIMBURSEMENTMONEY NUMBER(20,2),
  RECEIPTCLAIMAMOUNT      NUMBER(10,2),
  OPERATION               VARCHAR2(1)
)
;
alter table DTO_COOPERATIONHOSPITALRECEIPT
  add constraint DTO_COOPERATIONHOSPITALRECEIPT primary key (SWIFTNO);


create table DTO_COSTITEM
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  MAINFEENO           VARCHAR2(30),
  FEEDETAILNO         VARCHAR2(30),
  COSTCATEGORY        VARCHAR2(10),
  AMOUNT              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2)
)
;
alter table DTO_COSTITEM
  add constraint PK_DTO_COSTITEM primary key (SWIFTNO);
create index IDX_COSTITEM on DTO_COSTITEM (BUSSTASKNO);


create table DTO_COVERAGEPAYMENT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  CLAIMNO                 VARCHAR2(50),
  POLICYNO                VARCHAR2(30),
  CUSTOMERNO              VARCHAR2(30),
  POLNO                   VARCHAR2(30),
  DUTYCODE                VARCHAR2(60),
  COVERAGETYPE            VARCHAR2(1),
  COVERAGECODE            VARCHAR2(5),
  COMCOVERAGECODE         VARCHAR2(60),
  COVERAGENAME            VARCHAR2(200),
  LIABILITYCLASSIFICATION VARCHAR2(2),
  LIABILITYCODE           VARCHAR2(60),
  CLAIMOPINION            VARCHAR2(200),
  CLAIMCONCLUSIONCODE     VARCHAR2(30),
  PAYMENTAMOUNT           NUMBER(14,2),
  OPERATION               VARCHAR2(1),
  HOSPITALCODE            VARCHAR2(10)
)
;
alter table DTO_COVERAGEPAYMENT
  add constraint PK_DTO_COVERAGEPAYMENT primary key (SWIFTNO);
create index IDX_COVERAGEPAYMENT on DTO_COVERAGEPAYMENT (BUSSTASKNO);


create table DTO_DIAGNOSIS
(
  SWIFTNO       VARCHAR2(50) not null,
  PSWIFTNO      VARCHAR2(50) not null,
  BUSSTASKNO    VARCHAR2(30),
  CLAIMNO       VARCHAR2(50),
  CUSTOMERNO    VARCHAR2(30),
  POLNO         VARCHAR2(30),
  DUTYCODE      VARCHAR2(60),
  CODE          VARCHAR2(10),
  DIAGNOSISTYPE VARCHAR2(10),
  MAINFEENO     VARCHAR2(30)
)
;
alter table DTO_DIAGNOSIS
  add constraint PK_DTO_DIAGNOSIS primary key (SWIFTNO);


create table DTO_DISEASECODE
(
  SWIFTNO     VARCHAR2(50) not null,
  PSWIFTNO    VARCHAR2(50) not null,
  BUSSTASKNO  VARCHAR2(30),
  CLAIMNO     VARCHAR2(50),
  MAINFEENO   VARCHAR2(30),
  POLICYNO    VARCHAR2(30),
  CUSTOMERNO  VARCHAR2(60),
  POLNO       VARCHAR2(30),
  DUTYCODE    VARCHAR2(60),
  DISEASECODE VARCHAR2(10)
)
;
alter table DTO_DISEASECODE
  add constraint PK_DTO_DISEASECODE primary key (SWIFTNO);
create index IDX_DISEASECODE on DTO_DISEASECODE (BUSSTASKNO);


create table DTO_ENDORSEMENTTYPE
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50) not null,
  BUSSTASKNO      VARCHAR2(30),
  POLICYNO        VARCHAR2(30),
  CONTNO          VARCHAR2(30),
  EDORNO          VARCHAR2(30),
  ENDORSEMENTTYPE VARCHAR2(3)
)
;
alter table DTO_ENDORSEMENTTYPE
  add constraint PK_ENDORSEMENTTYPE primary key (SWIFTNO);


create table DTO_HOSPITALRECEIPT
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50) not null,
  BUSSTASKNO             VARCHAR2(30),
  CLAIMNO                VARCHAR2(50),
  RECEIPTNO              VARCHAR2(60),
  HOSPITALCODE           VARCHAR2(10),
  HOSPITALDATE           DATE,
  DISCHARDEDATE          DATE,
  HOSPITALSTAY           NUMBER(10),
  HOSPITALMONEY          NUMBER(10,2),
  MEDICALPAYMENT         NUMBER(10,2),
  INSURANCEPAYMENT       NUMBER(10,2),
  COORDINATIONFUND       NUMBER(10,2),
  PAYMENTA               NUMBER(10,2),
  PAYMENTFROM            NUMBER(10,2),
  MUTUALPAYMENT          NUMBER(10,2),
  CIVILSERVANTS          NUMBER(10,2),
  BESIDEINSURANCEPAYMENT NUMBER(10,2),
  OWNEXPENSE             NUMBER(10,2),
  PAYMENTB               NUMBER(10,2),
  TOTALOWNEXPENSE        NUMBER(10,2),
  CASH                   NUMBER(10,2),
  ACCOUNTPAYMENT         NUMBER(10,2),
  RECEIPTCLAIMAMOUNT     NUMBER(10,2),
  OPERATION              VARCHAR2(1)
)
;
alter table DTO_HOSPITALRECEIPT
  add constraint PK_DTO_HOSPITALRECEIPT primary key (SWIFTNO);
create index IDX_HOSPITALRECEIPT on DTO_HOSPITALRECEIPT (BUSSTASKNO);


create table DTO_MEDICALFEEDETAIL
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  MAINFEENO           VARCHAR2(30),
  FEEDETAILNO         VARCHAR2(30),
  MEDICALDETAILNAME   VARCHAR2(500),
  FEEAMOUNT           NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  QUANTITY            NUMBER(10),
  UNITPRICE           NUMBER(10,2),
  UNIT                NUMBER(10)
)
;
alter table DTO_MEDICALFEEDETAIL
  add constraint PK_DTO_MEDICALFEEDETAIL primary key (SWIFTNO);
create index IDX_MEDICALFEEDETAIL on DTO_MEDICALFEEDETAIL (BUSSTASKNO);


create table DTO_NONMEDICCOSTITEM
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  MAINFEENO           VARCHAR2(30),
  FEEDETAILNO         VARCHAR2(30),
  COSTCATEGORY        VARCHAR2(2),
  COSTNAME            VARCHAR2(100),
  AMOUNT              NUMBER(10,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  REIMBUSEMENTAMOUNT  NUMBER(20,2),
  QUANTITY            NUMBER(10),
  UNITPRICE           NUMBER(10,2),
  UNIT                NUMBER(10)
)
;
alter table DTO_NONMEDICCOSTITEM
  add constraint PK_DTO_NONMEDICCOSTITEM primary key (SWIFTNO);
create index IDX_NONMEDICCOSTITEM on DTO_NONMEDICCOSTITEM (BUSSTASKNO);


create table DTO_OPERATION
(
  SWIFTNO       VARCHAR2(50) not null,
  PSWIFTNO      VARCHAR2(50) not null,
  BUSSTASKNO    VARCHAR2(30),
  CLAIMNO       VARCHAR2(50),
  CUSTOMERNO    VARCHAR2(30),
  POLNO         VARCHAR2(30),
  DUTYCODE      VARCHAR2(60),
  OPERATIONCODE VARCHAR2(10),
  MAINFEENO     VARCHAR2(30)
)
;
alter table DTO_OPERATION
  add constraint PK_DTO_OPERATION primary key (SWIFTNO);


create table DTO_ORDINARYCLINICRECEIPT
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  RECEIPTNO           VARCHAR2(60),
  HOSPITALCODE        VARCHAR2(10),
  CLINICDATE          DATE,
  FEEAMOUNT           NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1)
)
;
alter table DTO_ORDINARYCLINICRECEIPT
  add constraint PK_DTO_ORDINARYCLINICRECEIPT primary key (SWIFTNO);


create table DTO_ORDINARYHOSPITALRECEIPT
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  RECEIPTNO           VARCHAR2(60),
  HOSPITALCODE        VARCHAR2(10),
  HOSPITALDATE        DATE,
  DISCHARDEDATE       DATE,
  HOSPITALSTAY        NUMBER(3),
  HOSPITALMONEY       NUMBER(20,2),
  FEEDEDUCTIBLEAMOUNT NUMBER(20,2),
  RECEIPTCLAIMAMOUNT  NUMBER(10,2),
  OPERATION           VARCHAR2(1)
)
;
alter table DTO_ORDINARYHOSPITALRECEIPT
  add constraint PK_DTO_ORDINARYHOSPITALRECEIPT primary key (SWIFTNO);


create table DTO_POLICY
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  USERNAME            VARCHAR2(30),
  PASSWORD            VARCHAR2(600),
  SPLITPOLICYNO       VARCHAR2(1),
  REJECTION           VARCHAR2(1),
  APPLICATIONFORMNO   VARCHAR2(30),
  POLICYNO            VARCHAR2(30),
  APPLICATIONDATE     DATE,
  ACCEPTDATE          DATE,
  ORGANID             VARCHAR2(20),
  ORGANNAME           VARCHAR2(100),
  CHANNELTYPE         VARCHAR2(2),
  SALESTYPE           VARCHAR2(6),
  SALESCODE           VARCHAR2(20),
  SALESNAME           VARCHAR2(30),
  SALESCHANNELCODE    VARCHAR2(20),
  SALESCHANNELNAME    VARCHAR2(100),
  BUSINESSADDRESS     VARCHAR2(200),
  CONTRACTTYPE        VARCHAR2(2),
  POLICYSTARTDATE     DATE,
  POLICYENDDATE       DATE,
  TERMINATIONDATE     DATE,
  SUSPENDDATE         DATE,
  RECOVERDATE         DATE,
  CONTRACTSOURCE      VARCHAR2(2),
  CONTRACTNO          VARCHAR2(30),
  RENEWALTIMES        NUMBER(8),
  RENEWALMETHOD       VARCHAR2(30),
  CONTRACTSTATUS      VARCHAR2(2),
  TERMINATIONREASON   VARCHAR2(1),
  SUMINSURED          NUMBER(20,2),
  EFFECTIVESUMINSURED NUMBER(20,2),
  PREMIUM             NUMBER(20,2),
  CURRENTPREMIUM      NUMBER(20,2),
  PAYMENTMETHOD       VARCHAR2(2),
  PAYMENTYEARS        NUMBER(4),
  PAYMENTNO           NUMBER(3),
  POLICYHOLDERPRO     VARCHAR2(1),
  POLICYHOLDERNUM     NUMBER(8),
  EFFECTIVEINSUREDNUM NUMBER(8),
  FORMERPOLICYNO      VARCHAR2(30),
  SPECIALREMARK       VARCHAR2(3000),
  REGULARCLEARINGMARK VARCHAR2(1),
  REGULARCLEARING     VARCHAR2(2),
  REGULARCLEARINGDATE DATE,
  PREMIUMDUEDATE      DATE,
  REALTIMECLAIMFLAG   VARCHAR2(1),
  POLICYLOAN          VARCHAR2(1),
  AUTOPAIDUP          VARCHAR2(1),
  COINSURANCE         VARCHAR2(1),
  LEADCOINSURANCE     VARCHAR2(1),
  YEARPREMIUM         NUMBER(20,2)
)
;
alter table DTO_POLICY
  add constraint PK_DTO_POLICY primary key (SWIFTNO);
create index IDX_POLICY on DTO_POLICY (BUSSTASKNO);


create table DTO_POLICYAMOUNT
(
  SWIFTNO    VARCHAR2(50) not null,
  PSWIFTNO   VARCHAR2(50) not null,
  BUSSTASKNO VARCHAR2(30),
  SECTIONNO  VARCHAR2(2),
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  DEDUCTIBLE NUMBER(12,2),
  CLAIMRATIO NUMBER(5,2)
)
;
alter table DTO_POLICYAMOUNT
  add constraint PK_DTO_POLICYAMOUNT primary key (SWIFTNO);
create index IDX_POLICYAMOUNT on DTO_POLICYAMOUNT (BUSSTASKNO);


create table DTO_POLICYAMOUNTLOG
(
  SWIFTNO    VARCHAR2(50) not null,
  PSWIFTNO   VARCHAR2(50) not null,
  BUSSTASKNO VARCHAR2(30),
  SECTIONNO  VARCHAR2(2),
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  DEDUCTIBLE NUMBER(12,2),
  CLAIMRATIO NUMBER(5,2)
)
;
alter table DTO_POLICYAMOUNTLOG
  add constraint PK_DTO_POLICYAMOUNTLOG primary key (SWIFTNO);
create index IDX_POLICYAMOUNTLOG on DTO_POLICYAMOUNTLOG (BUSSTASKNO);


create table DTO_POLICYASYNRESULT
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50) not null,
  BUSSTASKNO      VARCHAR2(30),
  RESPONSECODE    VARCHAR2(1),
  ERRORMESSAGE    VARCHAR2(600),
  TASKNO          VARCHAR2(50),
  GROUPSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_POLICYASYNRESULT
  add constraint PK_DTO_POLICYASYNRESULT primary key (SWIFTNO);
create index IDX_POLICYASYNRESULT on DTO_POLICYASYNRESULT (BUSSTASKNO);


create table DTO_POLICYBENEFIT
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  POLICYNO                VARCHAR2(30),
  CONTNO                  VARCHAR2(30),
  POLNO                   VARCHAR2(30),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(4),
  BENEFITDISTRIBUTION     VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(3,2)
)
;
alter table DTO_POLICYBENEFIT
  add constraint PK_DTO_POLICYBENEFIT primary key (SWIFTNO);
create index IDX_POLICYBENEFIT on DTO_POLICYBENEFIT (BUSSTASKNO);


create table DTO_POLICYBENEFITLOG
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  POLICYNO                VARCHAR2(30),
  CONTNO                  VARCHAR2(30),
  POLNO                   VARCHAR2(30),
  EDORNO                  VARCHAR2(30),
  EDORTYPE                VARCHAR2(3),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2),
  BENEFITDISTRIBUTION     VARCHAR2(2),
  ORDERNO                 VARCHAR2(10),
  PROPORTION              NUMBER(10,2)
)
;
alter table DTO_POLICYBENEFITLOG
  add constraint PK_DTO_POLICYBENEFITLOG primary key (SWIFTNO);
create index IDX_POLICYBENEFITLOG on DTO_POLICYBENEFITLOG (BUSSTASKNO);


create table DTO_POLICYCOVERAGE
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  GRPPOLNO                    VARCHAR2(30),
  RISKCODE                    VARCHAR2(60),
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  LIABILITYCODE               VARCHAR2(60),
  LIABILITYNAME               VARCHAR2(200),
  LIABILITYEFFECTIVEDATE      DATE,
  LIABILITYEXPIREDATE         DATE,
  LIABILITYSTATUS             VARCHAR2(2),
  LIABILITYPREMIUM            NUMBER(20,2),
  LIABILITYCURRENTPREMIUM     NUMBER(20,2),
  LIMITAMOUNT                 NUMBER(20,2),
  EFFECTIVELYAMOUNT           NUMBER(20,2),
  WAITINGPERIOD               NUMBER(8),
  INSUREDGROUPCODE            VARCHAR2(30),
  GROUPNAME                   VARCHAR2(100),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
alter table DTO_POLICYCOVERAGE
  add constraint PK_DTO_POLICYCOVERAGE primary key (SWIFTNO);
create index IDX_POLICYCOVERAGE on DTO_POLICYCOVERAGE (BUSSTASKNO);


create table DTO_POLICYCOVERAGELOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  GRPPOLNO                    VARCHAR2(30),
  RISKCODE                    VARCHAR2(60),
  EDORNO                      VARCHAR2(30),
  EDORTYPE                    VARCHAR2(3),
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  LIABILITYCODE               VARCHAR2(60),
  LIABILITYNAME               VARCHAR2(200),
  LIABILITYEFFECTIVEDATE      DATE,
  LIABILITYEXPIREDATE         DATE,
  LIABILITYSTATUS             VARCHAR2(2),
  LIABILITYPREMIUM            NUMBER(20,2),
  LIMITAMOUNT                 NUMBER(20,2),
  EFFECTIVELYAMOUNT           NUMBER(20,2),
  WAITINGPERIOD               NUMBER(8),
  INSUREDGROUPCODE            VARCHAR2(30),
  GROUPNAME                   VARCHAR2(100),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
alter table DTO_POLICYCOVERAGELOG
  add constraint PK_DTO_POLICYCOVERAGELOG primary key (SWIFTNO);
create index IDX_POLICYCOVERAGELOG on DTO_POLICYCOVERAGELOG (BUSSTASKNO);


create table DTO_POLICYGROUPPH
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50) not null,
  BUSSTASKNO             VARCHAR2(30),
  NAME                   VARCHAR2(120),
  ADDRESS1               VARCHAR2(6),
  ADDRESS2               VARCHAR2(6),
  ADDRESS3               VARCHAR2(6),
  ADDRESS4               VARCHAR2(100),
  CRITTYPE               VARCHAR2(2),
  CRITCODE               VARCHAR2(30),
  SOCIALSECURITYNO       VARCHAR2(50),
  COMPANYNATURE          VARCHAR2(3),
  INDUSTRYCLASSIFICATION VARCHAR2(4),
  LEGALREPRESENTATIVE    VARCHAR2(50),
  CONTACT                VARCHAR2(50),
  NUMBEROFUNITS          NUMBER(10)
)
;
alter table DTO_POLICYGROUPPH
  add constraint PK_DTO_POLICYGROUPPH primary key (SWIFTNO);
create index IDX_POLICYGROUPPH on DTO_POLICYGROUPPH (BUSSTASKNO);


create table DTO_POLICYGROUPPHLOG
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50) not null,
  BUSSTASKNO             VARCHAR2(30),
  NAME                   VARCHAR2(100),
  ADDRESS1               VARCHAR2(6),
  ADDRESS2               VARCHAR2(6),
  ADDRESS3               VARCHAR2(6),
  ADDRESS4               VARCHAR2(100),
  CRITTYPE               VARCHAR2(2),
  CRITCODE               VARCHAR2(30),
  SOCIALSECURITYNO       VARCHAR2(50),
  COMPANYNATURE          VARCHAR2(3),
  INDUSTRYCLASSIFICATION VARCHAR2(4),
  LEGALREPRESENTATIVE    VARCHAR2(50),
  CONTACT                VARCHAR2(50),
  NUMBEROFUNITS          NUMBER(10)
)
;
alter table DTO_POLICYGROUPPHLOG
  add constraint PK_DTO_POLICYGROUPPHLOG primary key (SWIFTNO);
create index IDX_POLICYGROUPPHLOG on DTO_POLICYGROUPPHLOG (BUSSTASKNO);


create table DTO_POLICYINSURED
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  NAME                        VARCHAR2(60),
  GENDER                      VARCHAR2(1),
  BIRTHDAY                    DATE,
  CRITTYPE                    VARCHAR2(2),
  CRITCODE                    VARCHAR2(30),
  RELATIONSHIPWITHPH          VARCHAR2(2),
  CUSTOMERNO                  VARCHAR2(60),
  ADDRESS1                    VARCHAR2(6),
  ADDRESS2                    VARCHAR2(6),
  ADDRESS3                    VARCHAR2(6),
  ADDRESS4                    VARCHAR2(100),
  ANOMALYINFORM               VARCHAR2(1),
  OFFERSTATUS                 VARCHAR2(2),
  SUBSTARTDATE                DATE,
  SUBENDDATE                  DATE,
  INSUREDGROUPCODE            VARCHAR2(30),
  INSUREDTYPE                 VARCHAR2(2),
  SNOFMAININSURED             VARCHAR2(30),
  RELATIONSHIPWITHMAININSURED VARCHAR2(2),
  SERVICEMARK                 VARCHAR2(2),
  HEALTHFLAG                  VARCHAR2(1),
  SOCIALCARENO                VARCHAR2(30),
  OCCUPATIONALCODE            VARCHAR2(7),
  WORKPLACE                   VARCHAR2(200),
  EMPOYEENO                   VARCHAR2(30),
  APPOINTEDBENEFIT            VARCHAR2(1)
)
;
alter table DTO_POLICYINSURED
  add constraint PK_DTO_POLICYINSURED primary key (SWIFTNO);
create index IDX_POLICYINSURED on DTO_POLICYINSURED (BUSSTASKNO);


create table DTO_POLICYINSUREDLOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  EDORNO                      VARCHAR2(30),
  EDORTYPE                    VARCHAR2(3),
  ORIGINALCUSTOMERNO          VARCHAR2(60),
  ORIGINALSUBENDDATE          DATE,
  NAME                        VARCHAR2(60),
  GENDER                      VARCHAR2(1),
  BIRTHDAY                    DATE,
  CRITTYPE                    VARCHAR2(2),
  CRITCODE                    VARCHAR2(30),
  RELATIONSHIPWITHPH          VARCHAR2(2),
  CUSTOMERNO                  VARCHAR2(30),
  ADDRESS1                    VARCHAR2(6),
  ADDRESS2                    VARCHAR2(6),
  ADDRESS3                    VARCHAR2(6),
  ADDRESS4                    VARCHAR2(100),
  ANOMALYINFORM               VARCHAR2(1),
  OFFERSTATUS                 VARCHAR2(2),
  SUBSTARTDATE                DATE,
  SUBENDDATE                  DATE,
  INSUREDGROUPCODE            VARCHAR2(30),
  INSUREDTYPE                 VARCHAR2(2),
  SNOFMAININSURED             VARCHAR2(30),
  RELATIONSHIPWITHMAININSURED VARCHAR2(2),
  SERVICEMARK                 VARCHAR2(2),
  HEALTHFLAG                  VARCHAR2(1),
  SOCIALCARENO                VARCHAR2(30),
  OCCUPATIONALCODE            VARCHAR2(7),
  WORKPLACE                   VARCHAR2(60),
  EMPOYEENO                   VARCHAR2(30),
  APPOINTEDBENEFIT            VARCHAR2(1)
)
;
alter table DTO_POLICYINSUREDLOG
  add constraint PK_DTO_POLICYINSUREDLOG primary key (SWIFTNO);
create index IDX_POLICYINSUREDLOG on DTO_POLICYINSUREDLOG (BUSSTASKNO);


create table DTO_POLICYLOG
(
  SWIFTNO                    VARCHAR2(50) not null,
  PSWIFTNO                   VARCHAR2(50) not null,
  BUSSTASKNO                 VARCHAR2(30),
  USERNAME                   VARCHAR2(30),
  PASSWORD                   VARCHAR2(600),
  REJECTION                  VARCHAR2(1),
  APPLICATIONFORMNO          VARCHAR2(30),
  POLICYNO                   VARCHAR2(30),
  ENDORSEMENTTYPE            VARCHAR2(3),
  ENDORSEMENTNO              VARCHAR2(30),
  ENDORSEMENTAPPLICATIONDATE DATE,
  EFFECTIVEDATE              DATE,
  APPLICATIONDATE            DATE,
  ACCEPTDATE                 DATE,
  CANCELDATE                 DATE,
  MAINATTACHEDFLAG           VARCHAR2(1),
  ORGANID                    VARCHAR2(20),
  ORGANNAME                  VARCHAR2(100),
  CHANNELTYPE                VARCHAR2(2),
  SALESTYPE                  VARCHAR2(6),
  SALESCODE                  VARCHAR2(20),
  SALESNAME                  VARCHAR2(30),
  SALESCHANNELCODE           VARCHAR2(20),
  SALESCHANNELNAME           VARCHAR2(100),
  BUSINESSADDRESS            VARCHAR2(200),
  CONTRACTTYPE               VARCHAR2(2),
  POLICYSTARTDATE            DATE,
  POLICYENDDATE              DATE,
  TERMINATIONDATE            DATE,
  SUSPENDDATE                DATE,
  RECOVERDATE                DATE,
  CONTRACTSOURCE             VARCHAR2(2),
  CONTRACTNO                 VARCHAR2(30),
  RENEWALTIMES               NUMBER(8),
  RENEWALMETHOD              VARCHAR2(30),
  CONTRACTSTATUS             VARCHAR2(2),
  TERMINATIONREASON          VARCHAR2(1),
  SUMINSURED                 NUMBER(20,2),
  EFFECTIVESUMINSURED        NUMBER(20,2),
  PREMIUM                    NUMBER(20,2),
  CURRENTPREMIUM             NUMBER(20,2),
  PAYMENTMETHOD              VARCHAR2(2),
  PAYMENTYEARS               NUMBER(4),
  PAYMENTNO                  NUMBER(3),
  POLICYHOLDERPRO            VARCHAR2(1),
  POLICYHOLDERNUM            NUMBER(8),
  EFFECTIVEINSUREDNUM        NUMBER(8),
  FORMERPOLICYNO             VARCHAR2(30),
  SPECIALREMARK              VARCHAR2(600),
  REGULARCLEARINGMARK        VARCHAR2(1),
  REGULARCLEARING            VARCHAR2(2),
  REGULARCLEARINGDATE        DATE,
  PREMIUMDUEDATE             DATE,
  REALTIMECLAIMFLAG          VARCHAR2(1),
  POLICYLOAN                 VARCHAR2(1),
  AUTOPAIDUP                 VARCHAR2(1),
  COINSURANCE                VARCHAR2(1),
  LEADCOINSURANCE            VARCHAR2(1),
  SURRENDERCHARGE            NUMBER(20,2),
  YEARPREMIUM                NUMBER(20,2)
)
;
alter table DTO_POLICYLOG
  add constraint PK_DTO_POLICYLOG primary key (SWIFTNO);
create index IDX_POLICYLOG on DTO_POLICYLOG (BUSSTASKNO);


create table DTO_POLICYLOGASYNCRESULT
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50) not null,
  BUSSTASKNO      VARCHAR2(30),
  RESPONSECODE    VARCHAR2(1),
  ERRORMESSAGE    VARCHAR2(600),
  TASKNO          VARCHAR2(50),
  GROUPSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_POLICYLOGASYNCRESULT
  add constraint PK_DTO_POLICYLOGASYNCRESULT primary key (SWIFTNO);
create index IDX_POLICYLOGASYNCRESULT on DTO_POLICYLOGASYNCRESULT (BUSSTASKNO);


create table DTO_POLICYLOGRESULT
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50) not null,
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_POLICYLOGRESULT
  add constraint PK_DTO_POLICYLOGRESULT primary key (SWIFTNO);
create index IDX_POLICYLOGRESULT on DTO_POLICYLOGRESULT (BUSSTASKNO);


create table DTO_POLICYLOGRESULTITEM
(
  SWIFTNO               VARCHAR2(50) not null,
  PSWIFTNO              VARCHAR2(50) not null,
  BUSSTASKNO            VARCHAR2(30),
  SINGLERESPONSECODE    VARCHAR2(1),
  POLICYNO              VARCHAR2(30),
  ENDORSEMENTNO         VARCHAR2(30),
  ENDORSEMENTTYPE       VARCHAR2(100),
  ERRORREASON           VARCHAR2(600),
  ENDORSEMENTSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_POLICYLOGRESULTITEM
  add constraint PK_DTO_POLICYLOGRESULTITEM primary key (SWIFTNO);
create index IDX_POLICYLOGRESULTITEM on DTO_POLICYLOGRESULTITEM (BUSSTASKNO);


create table DTO_POLICYPAYMENT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  CLAIMNO            VARCHAR2(50),
  POLICYSEQUENCENO   VARCHAR2(50),
  POLICYNO           VARCHAR2(30),
  CUSTOMERNO         VARCHAR2(60),
  OFFERSTATUS        VARCHAR2(2),
  TOTALPAYMENTAMOUNT NUMBER(14,2),
  RENEWALTIMES       NUMBER(8)
)
;
alter table DTO_POLICYPAYMENT
  add constraint PK_DTO_POLICYPAYMENT primary key (SWIFTNO);
create index IDX_POLICYPAYMENT on DTO_POLICYPAYMENT (BUSSTASKNO);


create table DTO_POLICYPERSONPH
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2)
)
;
alter table DTO_POLICYPERSONPH
  add constraint PK_DTO_POLICYPERSONPH primary key (SWIFTNO);
create index IDX_POLICYPERSONPH on DTO_POLICYPERSONPH (BUSSTASKNO);


create table DTO_POLICYPERSONPHLOG
(
  SWIFTNO                 VARCHAR2(50) not null,
  PSWIFTNO                VARCHAR2(50) not null,
  BUSSTASKNO              VARCHAR2(30),
  NAME                    VARCHAR2(60),
  GENDER                  VARCHAR2(1),
  BIRTHDAY                DATE,
  CRITTYPE                VARCHAR2(2),
  CRITCODE                VARCHAR2(30),
  RELATIONSHIPWITHINSURED VARCHAR2(2)
)
;
alter table DTO_POLICYPERSONPHLOG
  add constraint PK_DTO_POLICYPERSONPHLOG primary key (SWIFTNO);
create index IDX_POLICYPERSONPHLOG on DTO_POLICYPERSONPHLOG (BUSSTASKNO);


create table DTO_POLICYRESULT
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  SINGLERESPONSECODE VARCHAR2(1),
  POLICYNO           VARCHAR2(30),
  ERRORREASON        VARCHAR2(2000),
  POLICYSEQUENCENO   VARCHAR2(50)
)
;
alter table DTO_POLICYRESULT
  add constraint PK_DTO_POLICYRESULT primary key (SWIFTNO);
create index IDX_POLICYRESULT on DTO_POLICYRESULT (BUSSTASKNO);


create table DTO_POLICYRESULTS
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50) not null,
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_POLICYRESULTS
  add constraint PK_DTO_POLICYRESULTS primary key (SWIFTNO);
create index IDX_POLICYRESULTS on DTO_POLICYRESULTS (BUSSTASKNO);


create table DTO_POLICYUPCOVERAGE
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  GRPPOLNO                    VARCHAR2(30),
  COVERAGETYPE                VARCHAR2(1),
  COVERAGECODE                VARCHAR2(5),
  COMCOVERAGECODE             VARCHAR2(60),
  COVERAGENAME                VARCHAR2(200),
  COVERAGEEFFECTIVEDATE       DATE,
  COVERAGEEXPIREDATE          DATE,
  MAINATTACHEDFLAG            VARCHAR2(1),
  COVERAGECURRENTPREMIUM      NUMBER(20,2),
  COVERAGEPREMIUM             NUMBER(20,2),
  COVERAGESUMINSURED          NUMBER(20,2),
  COVERAGEEFFECTIVESUMINSURED NUMBER(20,2),
  PAYMENTMETHOD               VARCHAR2(2),
  PAYMENTNO                   NUMBER(3),
  PAYMENTYEARS                NUMBER(4),
  SPECIFICBUSINESS            VARCHAR2(1),
  SPECIFICBUSINESSCODE        VARCHAR2(5),
  COVERAGESTATUS              VARCHAR2(2),
  COVERAGEDAYAMOUNT           NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT  NUMBER(20,2),
  COVERAGEYEARPREMIUM         NUMBER(20,2),
  PREMIUMSOURCE               VARCHAR2(2)
)
;
alter table DTO_POLICYUPCOVERAGE
  add constraint PK_DTO_POLICYUPCOVERAGE primary key (SWIFTNO);
create index IDX_POLICYUPCOVERAGE on DTO_POLICYUPCOVERAGE (BUSSTASKNO);


create table DTO_POLICYUPCOVERAGELOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  GRPPOLNO                    VARCHAR2(30),
  EDORNO                      VARCHAR2(30),
  EDORTYPE                    VARCHAR2(3),
  COVERAGETYPE                VARCHAR2(1),
  COVERAGECODE                VARCHAR2(5),
  COMCOVERAGECODE             VARCHAR2(60),
  COVERAGENAME                VARCHAR2(200),
  COVERAGEEFFECTIVEDATE       DATE,
  COVERAGEEXPIREDATE          DATE,
  MAINATTACHEDFLAG            VARCHAR2(1),
  COVERAGECURRENTPREMIUM      NUMBER(20,2),
  COVERAGEPREMIUM             NUMBER(20,2),
  COVERAGESUMINSURED          NUMBER(20,2),
  COVERAGEEFFECTIVESUMINSURED NUMBER(20,2),
  PAYMENTMETHOD               VARCHAR2(2),
  PAYMENTNO                   NUMBER(3),
  PAYMENTYEARS                NUMBER(4),
  SPECIFICBUSINESS            VARCHAR2(1),
  SPECIFICBUSINESSCODE        VARCHAR2(5),
  COVERAGESTATUS              VARCHAR2(2),
  COVERAGEDAYAMOUNT           NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT  NUMBER(20,2),
  COVERAGEYEARPREMIUM         NUMBER(20,2),
  PREMIUMSOURCE               VARCHAR2(2),
  COVERAGESURRENDERCHARGE     NUMBER(20,2)
)
;
alter table DTO_POLICYUPCOVERAGELOG
  add constraint PK_DTO_POLICYUPCOVERAGELOG primary key (SWIFTNO);
create index IDX_POLICYUPCOVERAGELOG on DTO_POLICYUPCOVERAGELOG (BUSSTASKNO);


create table DTO_QUERYCOMMONPARAMS
(
  SWIFTNO         VARCHAR2(50) not null,
  PSWIFTNO        VARCHAR2(50) not null,
  BUSSTASKNO      VARCHAR2(30),
  USERNAME        VARCHAR2(30),
  PASSWORD        VARCHAR2(600),
  GROUPSEQUENCENO VARCHAR2(50)
)
;
alter table DTO_QUERYCOMMONPARAMS
  add constraint PK_DTO_QUERYCOMMONPARAMS primary key (SWIFTNO);
create index IDX_QUERYCOMMONPARAMS on DTO_QUERYCOMMONPARAMS (BUSSTASKNO);


create table DTO_SPECIALPOLICYAMOUNT
(
  SWIFTNO    VARCHAR2(50) not null,
  PSWIFTNO   VARCHAR2(50) not null,
  BUSSTASKNO VARCHAR2(30),
  POLICYNO   VARCHAR2(30),
  CONTNO     VARCHAR2(30),
  POLNO      VARCHAR2(30),
  DUTYCODE   VARCHAR2(60),
  SECTIONNO  VARCHAR2(2),
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  DEDUCTIBLE NUMBER(12,2),
  CLAIMRATIO NUMBER(5,2)
)
;
alter table DTO_SPECIALPOLICYAMOUNT
  add constraint PK_DTO_SPECIALPOLICYAMOUNT primary key (SWIFTNO);
create index IDX_SPECIALPOLICYAMOUNT on DTO_SPECIALPOLICYAMOUNT (BUSSTASKNO);


create table DTO_SPECIALPOLICYAMOUNTLOG
(
  SWIFTNO    VARCHAR2(50) not null,
  PSWIFTNO   VARCHAR2(50) not null,
  BUSSTASKNO VARCHAR2(30),
  POLICYNO   VARCHAR2(30),
  CONTNO     VARCHAR2(30),
  POLNO      VARCHAR2(30),
  DUTYCODE   VARCHAR2(60),
  EDORNO     VARCHAR2(30),
  EDORTYPE   VARCHAR2(3),
  SECTIONNO  VARCHAR2(2),
  COSTSTART  NUMBER(12,2),
  COSTEND    NUMBER(12,2),
  DEDUCTIBLE NUMBER(12,2),
  CLAIMRATIO NUMBER(5,2)
)
;
alter table DTO_SPECIALPOLICYAMOUNTLOG
  add constraint PK_DTO_SPECIALPOLICYAMOUNTLOG primary key (SWIFTNO);
create index IDX_SPECIALPOLICYAMOUNTLOG on DTO_SPECIALPOLICYAMOUNTLOG (BUSSTASKNO);


create table DTO_SPECIALPOLICYCOVERAGE
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  POLNO                       VARCHAR2(30),
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  LIABILITYCODE               VARCHAR2(60),
  LIABILITYNAME               VARCHAR2(200),
  LIABILITYEFFECTIVEDATE      DATE,
  LIABILITYEXPIREDATE         DATE,
  LIABILITYSTATUS             VARCHAR2(2),
  LIABILITYPREMIUM            NUMBER(20,2),
  LIABILITYCURRENTPREMIUM     NUMBER(20,2),
  LIMITAMOUNT                 NUMBER(20,2),
  EFFECTIVELYAMOUNT           NUMBER(20,2),
  WAITINGPERIOD               NUMBER(8),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
alter table DTO_SPECIALPOLICYCOVERAGE
  add constraint PK_DTO_SPECIALPOLICYCOVERAGE primary key (SWIFTNO);
create index IDX_SPECIALPOLICYCOVERAGE on DTO_SPECIALPOLICYCOVERAGE (BUSSTASKNO);


create table DTO_SPECIALPOLICYCOVERAGELOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  POLNO                       VARCHAR2(30),
  EDORNO                      VARCHAR2(30),
  EDORTYPE                    VARCHAR2(3),
  LIABILITYCLASSIFICATION     VARCHAR2(2),
  LIABILITYCODE               VARCHAR2(60),
  LIABILITYNAME               VARCHAR2(200),
  LIABILITYEFFECTIVEDATE      DATE,
  LIABILITYEXPIREDATE         DATE,
  LIABILITYSTATUS             VARCHAR2(2),
  LIABILITYPREMIUM            NUMBER(20,2),
  LIABILITYCURRENTPREMIUM     NUMBER(20,2),
  LIMITAMOUNT                 NUMBER(20,2),
  EFFECTIVELYAMOUNT           NUMBER(20,2),
  WAITINGPERIOD               NUMBER(8),
  LIABILITYDAYAMOUNT          NUMBER(20,2),
  LIABILITYDAYEFFECTIVEAMOUNT NUMBER(20,2)
)
;
alter table DTO_SPECIALPOLICYCOVERAGELOG
  add constraint PK_DTO_SPECIALPOLICYCLOG primary key (SWIFTNO);
create index IDX_SPECIALPOLICYCOVERAGELOG on DTO_SPECIALPOLICYCOVERAGELOG (BUSSTASKNO);


create table DTO_SPECIALPOLICYUPCOVERAGE
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  POLNO                       VARCHAR2(30),
  COVERAGETYPE                VARCHAR2(1),
  COVERAGECODE                VARCHAR2(5),
  COMCOVERAGECODE             VARCHAR2(60),
  COVERAGENAME                VARCHAR2(200),
  COVERAGEEFFECTIVEDATE       DATE,
  COVERAGEEXPIREDATE          DATE,
  MAINATTACHEDFLAG            VARCHAR2(1),
  COVERAGEPREMIUM             NUMBER(20,2),
  COVERAGECURRENTPREMIUM      NUMBER(20,2),
  COVERAGESUMINSURED          NUMBER(20,2),
  COVERAGEEFFECTIVESUMINSURED NUMBER(20,2),
  PAYMENTMETHOD               VARCHAR2(2),
  PAYMENTYEARS                NUMBER(4),
  PAYMENTNO                   NUMBER(3),
  SPECIFICBUSINESS            VARCHAR2(1),
  SPECIFICBUSINESSCODE        VARCHAR2(5),
  COVERAGESTATUS              VARCHAR2(2),
  COVERAGEDAYAMOUNT           NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT  NUMBER(20,2),
  COVERAGEYEARPREMIUM         NUMBER(20,2),
  PREMIUMSOURCE               VARCHAR2(2)
)
;
alter table DTO_SPECIALPOLICYUPCOVERAGE
  add constraint PK_DTO_SPECIALPOLICYUPCOVERAGE primary key (SWIFTNO);
create index IDX_SPECIALPOLICYUPCOVERAGE on DTO_SPECIALPOLICYUPCOVERAGE (BUSSTASKNO);


create table DTO_SPECIALPOLICYUPCOVERAGELOG
(
  SWIFTNO                     VARCHAR2(50) not null,
  PSWIFTNO                    VARCHAR2(50) not null,
  BUSSTASKNO                  VARCHAR2(30),
  POLICYNO                    VARCHAR2(30),
  CONTNO                      VARCHAR2(30),
  POLNO                       VARCHAR2(30),
  EDORNO                      VARCHAR2(30),
  EDORTYPE                    VARCHAR2(3),
  COVERAGETYPE                VARCHAR2(1),
  COVERAGECODE                VARCHAR2(5),
  COMCOVERAGECODE             VARCHAR2(60),
  COVERAGENAME                VARCHAR2(200),
  COVERAGEEFFECTIVEDATE       DATE,
  COVERAGEEXPIREDATE          DATE,
  MAINATTACHEDFLAG            VARCHAR2(1),
  COVERAGEPREMIUM             NUMBER(20,2),
  COVERAGECURRENTPREMIUM      NUMBER(20,2),
  COVERAGESUMINSURED          NUMBER(20,2),
  COVERAGEEFFECTIVESUMINSURED NUMBER(20,2),
  PAYMENTMETHOD               VARCHAR2(2),
  PAYMENTYEARS                NUMBER(4),
  PAYMENTNO                   NUMBER(3),
  SPECIFICBUSINESS            VARCHAR2(1),
  SPECIFICBUSINESSCODE        VARCHAR2(5),
  COVERAGESTATUS              VARCHAR2(2),
  COVERAGEDAYAMOUNT           NUMBER(20,2),
  COVERAGEDAYEFFECTIVEAMOUNT  NUMBER(20,2),
  COVERAGEYEARPREMIUM         NUMBER(20,2),
  PREMIUMSOURCE               VARCHAR2(2),
  COVERAGESURRENDERCHARGE     NUMBER(20,2)
)
;
alter table DTO_SPECIALPOLICYUPCOVERAGELOG
  add constraint PK_DTO_SPECIALPOLICYLOG primary key (SWIFTNO);
create index IDX_SPECIALPOLICYUPCOVERAGELOG on DTO_SPECIALPOLICYUPCOVERAGELOG (BUSSTASKNO);


create table DTO_SPECIALRECEIPT
(
  SWIFTNO                    VARCHAR2(50) not null,
  PSWIFTNO                   VARCHAR2(50) not null,
  BUSSTASKNO                 VARCHAR2(30),
  CLAIMNO                    VARCHAR2(50),
  RECEIPTNO                  VARCHAR2(60),
  HOSPITALCODE               VARCHAR2(10),
  CLINICDATE                 DATE,
  SPECIALMONEY               NUMBER(10,2),
  MEDICALPAYMENT             NUMBER(10,2),
  INSURANCEPAYMENT           NUMBER(10,2),
  COORDINATIONFUND           NUMBER(10,2),
  MUTUALPAYMENT              NUMBER(10,2),
  RETIREMENTPAYMENT          NUMBER(10,2),
  CIVILSERVANTS              NUMBER(10,2),
  DISABILITYSOLDIER          NUMBER(10,2),
  CASH                       NUMBER(10,2),
  INDIVIDUALPAYMENT          NUMBER(10,2),
  PAYMENTA                   NUMBER(10,2),
  PAYMENTFROM                NUMBER(10,2),
  PAYMENTCAP                 NUMBER(10,2),
  PAYMENTB                   NUMBER(10,2),
  OWNEXPENSE                 NUMBER(10,2),
  ACCOUNTPAYMENT             NUMBER(10,2),
  YEARANNUALCOORDINATIONFUND NUMBER(10,2),
  YEARANNUALMUTUALPAYMENT    NUMBER(10,2),
  ACCOUNTBALANCE             NUMBER(10,2),
  OPERATION                  VARCHAR2(1)
)
;
alter table DTO_SPECIALRECEIPT
  add constraint PK_DTO_SPECIALRECEIPT primary key (SWIFTNO);
create index IDX_SPECIALRECEIPT on DTO_SPECIALRECEIPT (BUSSTASKNO);


create table DTO_SPECIALUNDERWRITING
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  POLICYNO            VARCHAR2(30),
  CONTNO              VARCHAR2(30),
  POLNO               VARCHAR2(30),
  UNDERWRITINGRESULT  VARCHAR2(2),
  UNDERWRITINGDATE    DATE,
  DECLINEDREASON      VARCHAR2(2),
  STATE               VARCHAR2(2),
  PHYSICALEXAMINATION VARCHAR2(2)
)
;
alter table DTO_SPECIALUNDERWRITING
  add constraint PK_DTO_SPECIALUNDERWRITING primary key (SWIFTNO);
create index IDX_SPECIALUNDERWRITING on DTO_SPECIALUNDERWRITING (BUSSTASKNO);


create table DTO_SPECIALUNDERWRITINGLOG
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  POLICYNO            VARCHAR2(30),
  CONTNO              VARCHAR2(30),
  POLNO               VARCHAR2(30),
  EDORNO              VARCHAR2(30),
  EDORTYPE            VARCHAR2(3),
  UNDERWRITINGRESULT  VARCHAR2(2),
  UNDERWRITINGDATE    DATE,
  DECLINEDREASON      VARCHAR2(2),
  PHYSICALEXAMINATION VARCHAR2(2),
  STATE               VARCHAR2(2)
)
;
alter table DTO_SPECIALUNDERWRITINGLOG
  add constraint PK_DTO_SPECIALUNDERWRITINGLOG primary key (SWIFTNO);
create index IDX_SPECIALUNDERWRITINGLOG on DTO_SPECIALUNDERWRITINGLOG (BUSSTASKNO);


create table DTO_TAB_RELATIONSHIP
(
  IDNO     VARCHAR2(20) not null,
  DTONAME  VARCHAR2(200) not null,
  TABNAME  VARCHAR2(200) not null,
  DTOCLASS VARCHAR2(500) not null
)
;
alter table DTO_TAB_RELATIONSHIP
  add constraint PK_DTO_TAB_RELATIONSHIP primary key (IDNO);


create table DTO_UNDERWRITING
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  UNDERWRITINGRESULT  VARCHAR2(2),
  UNDERWRITINGDATE    DATE,
  DECLINEDREASON      VARCHAR2(2),
  STATE               VARCHAR2(2),
  PHYSICALEXAMINATION VARCHAR2(2)
)
;
alter table DTO_UNDERWRITING
  add constraint PK_DTO_UNDERWRITING primary key (SWIFTNO);
create index IDX_UNDERWRITING on DTO_UNDERWRITING (BUSSTASKNO);


create table DTO_UNDERWRITINGLOG
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  UNDERWRITINGRESULT VARCHAR2(2),
  UNDERWRITINGDATE   DATE
)
;
alter table DTO_UNDERWRITINGLOG
  add constraint PK_DTO_UNDERWRITINGLOG primary key (SWIFTNO);
create index IDX_UNDERWRITINGLOG on DTO_UNDERWRITINGLOG (BUSSTASKNO);


create table DTO_UPSTATUSCOVERAGE
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  UPDATESN            VARCHAR2(30),
  GRPPOLNO            VARCHAR2(30),
  DUTYCODE            VARCHAR2(60),
  CONTPLANCODE        VARCHAR2(30),
  LIABILITYCODE       VARCHAR2(60),
  LIABILITYEXPIREDATE DATE,
  LIABILITYSTATUS     VARCHAR2(2)
)
;
alter table DTO_UPSTATUSCOVERAGE
  add constraint PK_DTO_UPSTATUSCOVERAGE primary key (SWIFTNO);
create index IDX_UPSTATUSCOVERAGE on DTO_UPSTATUSCOVERAGE (BUSSTASKNO);


create table DTO_UPSTATUSINFO
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50) not null,
  BUSSTASKNO             VARCHAR2(30),
  UPDATESN               VARCHAR2(30),
  USERNAME               VARCHAR2(30),
  PASSWORD               VARCHAR2(600),
  POLICYNO               VARCHAR2(30),
  POLICYSTATUSUPDATETYPE VARCHAR2(2),
  TERMINATIONDATE        DATE,
  CONTRACTSTATUS         VARCHAR2(2),
  TERMINATIONREASON      VARCHAR2(1),
  REGULARCLEARINGMARK    VARCHAR2(1),
  REGULARCLEARING        VARCHAR2(2),
  REGULARCLEARINGDATE    DATE,
  AUTOPAIDUP             VARCHAR2(1),
  PAUSEDATE              DATE
)
;
alter table DTO_UPSTATUSINFO
  add constraint PK_DTO_UPSTATUSINFO primary key (SWIFTNO);
create index IDX_UPSTATUSINFO on DTO_UPSTATUSINFO (BUSSTASKNO);


create table DTO_UPSTATUSPOLICYINSURED
(
  SWIFTNO     VARCHAR2(50) not null,
  PSWIFTNO    VARCHAR2(50) not null,
  BUSSTASKNO  VARCHAR2(30),
  UPDATESN    VARCHAR2(30),
  CONTNO      VARCHAR2(30),
  POLICYNO    VARCHAR2(30),
  CUSTOMERNO  VARCHAR2(60),
  OFFERSTATUS VARCHAR2(2),
  SUBENDDATE  DATE
)
;
alter table DTO_UPSTATUSPOLICYINSURED
  add constraint PK_DTO_UPSTATUSPOLICYINSURED primary key (SWIFTNO);
create index IDX_UPSTATUSPOLICYINSURED on DTO_UPSTATUSPOLICYINSURED (BUSSTASKNO);


create table DTO_UPSTATUSRESULT
(
  SWIFTNO                VARCHAR2(50) not null,
  PSWIFTNO               VARCHAR2(50) not null,
  BUSSTASKNO             VARCHAR2(30),
  SINGLERESPONSECODE     VARCHAR2(1),
  POLICYNO               VARCHAR2(30),
  POLICYSTATUSUPDATETYPE VARCHAR2(2),
  ERRORREASON            VARCHAR2(600)
)
;
alter table DTO_UPSTATUSRESULT
  add constraint PK_DTO_UPSTATUSRESULT primary key (SWIFTNO);
create index IDX_UPSTATUSRESULT on DTO_UPSTATUSRESULT (BUSSTASKNO);


create table DTO_UPSTATUSRESULTS
(
  SWIFTNO      VARCHAR2(50) not null,
  PSWIFTNO     VARCHAR2(50) not null,
  BUSSTASKNO   VARCHAR2(30),
  RESPONSECODE VARCHAR2(1),
  ERRORMESSAGE VARCHAR2(600),
  TASKNO       VARCHAR2(50)
)
;
alter table DTO_UPSTATUSRESULTS
  add constraint PK_DTO_UPSTATUSRESULTS primary key (SWIFTNO);


create table DTO_UPSTATUSSPECIALCOVERAGE
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  UPDATESN            VARCHAR2(30),
  POLNO               VARCHAR2(30),
  DUTYCODE            VARCHAR2(60),
  LIABILITYCODE       VARCHAR2(60),
  LIABILITYEXPIREDATE DATE,
  LIABILITYSTATUS     VARCHAR2(2)
)
;
alter table DTO_UPSTATUSSPECIALCOVERAGE
  add constraint PK_DTO_UPSTATUSSPECIALCOVERAGE primary key (SWIFTNO);
create index IDX_UPSTATUSSPECIALCOVERAGE on DTO_UPSTATUSSPECIALCOVERAGE (BUSSTASKNO);


create table DTO_UPSTATUSSPECIALUPCOVERAGE
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  UPDATESN           VARCHAR2(30),
  GRPPOLNO           VARCHAR2(30),
  COVERAGETYPE       VARCHAR2(1),
  COVERAGECODE       VARCHAR2(5),
  COMCOVERAGECODE    VARCHAR2(60),
  COVERAGESUMINSURED NUMBER(20,2),
  COVERAGESTATUS     VARCHAR2(2)
)
;
alter table DTO_UPSTATUSSPECIALUPCOVERAGE
  add constraint PK_UPSTATUSSPECIALUPCOVERAGE primary key (SWIFTNO);
create index IDX_UPSTATUSSPECIALUPCOVERAGE on DTO_UPSTATUSSPECIALUPCOVERAGE (BUSSTASKNO);


create table DTO_UPSTATUSUPCOVERAGE
(
  SWIFTNO            VARCHAR2(50) not null,
  PSWIFTNO           VARCHAR2(50) not null,
  BUSSTASKNO         VARCHAR2(30),
  UPDATESN           VARCHAR2(30),
  POLNO              VARCHAR2(30),
  CUSTOMERNO         VARCHAR2(60),
  COVERAGETYPE       VARCHAR2(1),
  COVERAGECODE       VARCHAR2(5),
  COMCOVERAGECODE    VARCHAR2(60),
  COVERAGESUMINSURED NUMBER(20,2),
  COVERAGEPREMIUM    NUMBER(20,2),
  COVERAGESTATUS     VARCHAR2(2)
)
;
alter table DTO_UPSTATUSUPCOVERAGE
  add constraint PK_DTO_UPSTATUSUPCOVERAGE primary key (SWIFTNO);
create index IDX_UPSTATUSUPCOVERAGE on DTO_UPSTATUSUPCOVERAGE (BUSSTASKNO);


create table DTO_WESTERNMEDICINE
(
  SWIFTNO             VARCHAR2(50) not null,
  PSWIFTNO            VARCHAR2(50) not null,
  BUSSTASKNO          VARCHAR2(30),
  CLAIMNO             VARCHAR2(50),
  CUSTOMERNO          VARCHAR2(30),
  POLNO               VARCHAR2(30),
  DUTYCODE            VARCHAR2(60),
  WESTERNMEDICINECODE VARCHAR2(10),
  MAINFEENO           VARCHAR2(30)
)
;
alter table DTO_WESTERNMEDICINE
  add constraint DTO_WESTERNMEDICINE primary key (SWIFTNO);


create table JKX_GZ_1
(
  GZ     VARCHAR2(10),
  GZ_NUM INTEGER,
  RANDOM VARCHAR2(10)
)
;


create table JOB_CONFIG
(
  NAME       VARCHAR2(50) not null,
  REMARK     VARCHAR2(200),
  FLAG1      VARCHAR2(50),
  FLAG2      VARCHAR2(50),
  FLAG3      VARCHAR2(50),
  FLAG4      VARCHAR2(50),
  FLAG5      VARCHAR2(50),
  MAKETIME   VARCHAR2(20) not null,
  MODIFYTIME VARCHAR2(20) not null
)
;
comment on table JOB_CONFIG
  is '批处理系统配置表';
comment on column JOB_CONFIG.NAME
  is '名称';
comment on column JOB_CONFIG.REMARK
  is '备注说明，以便直观知道该配置项是做什么的';
comment on column JOB_CONFIG.FLAG1
  is '标志1';
comment on column JOB_CONFIG.FLAG2
  is ' ';
comment on column JOB_CONFIG.FLAG3
  is '标志3';
comment on column JOB_CONFIG.FLAG4
  is '标志4';
comment on column JOB_CONFIG.FLAG5
  is '标志5';
comment on column JOB_CONFIG.MAKETIME
  is '建立时间';
comment on column JOB_CONFIG.MODIFYTIME
  is '修改时间';
alter table JOB_CONFIG
  add constraint PK_JOB_CONFIG primary key (NAME);


create table JOB_JOBDETAILS
(
  JOBDETAILID  VARCHAR2(6) not null,
  JOBDESCRIBE  VARCHAR2(200) not null,
  JOBGROUPNAME VARCHAR2(80) not null,
  JOBNAME      VARCHAR2(80) not null,
  JOBCLASSNAME VARCHAR2(128) not null
)
;
comment on table JOB_JOBDETAILS
  is '作业表';
comment on column JOB_JOBDETAILS.JOBDETAILID
  is '编码';
comment on column JOB_JOBDETAILS.JOBDESCRIBE
  is '作业描述';
comment on column JOB_JOBDETAILS.JOBGROUPNAME
  is '作业组名';
comment on column JOB_JOBDETAILS.JOBNAME
  is '作业名';
comment on column JOB_JOBDETAILS.JOBCLASSNAME
  is '包含所有的完全路径名
';
alter table JOB_JOBDETAILS
  add constraint PK_JOB_JOBDETAILS primary key (JOBDETAILID);


create table JOB_JOBLOG
(
  LOGNO       VARCHAR2(10) not null,
  LOGTYPE     VARCHAR2(20),
  JOBPLANCODE VARCHAR2(6),
  LOGTIME     VARCHAR2(20) not null,
  LOGCONTENT  VARCHAR2(1000) not null,
  ACTIONCODE  VARCHAR2(20),
  OPERATOR    VARCHAR2(10)
)
;
comment on table JOB_JOBLOG
  is '作业计划实例的日志表';
comment on column JOB_JOBLOG.LOGNO
  is '流水号';
comment on column JOB_JOBLOG.LOGTYPE
  is '0-引擎，1-计划实例';
comment on column JOB_JOBLOG.JOBPLANCODE
  is '计划编码';
comment on column JOB_JOBLOG.LOGTIME
  is '日志时间';
comment on column JOB_JOBLOG.LOGCONTENT
  is '日志内容';
comment on column JOB_JOBLOG.ACTIONCODE
  is 'E-00启动引擎，E-01关闭引擎，JP-00开始运行，JP-01运行正常完毕，JP-02运行异常完毕，JP-03终结';
comment on column JOB_JOBLOG.OPERATOR
  is '操作员';
alter table JOB_JOBLOG
  add constraint PK_JOB_JOBLOG primary key (LOGNO);


create table JOB_JOBPLANS
(
  JOBPLANCODE      VARCHAR2(8) not null,
  JOBDETAILID      VARCHAR2(6) not null,
  JOBPLANDESC      VARCHAR2(200) not null,
  TRIGGERGROUPNAME VARCHAR2(80) not null,
  TRIGGERNAME      VARCHAR2(80) not null,
  RUNTYPE          VARCHAR2(5) not null,
  CRONEXP          VARCHAR2(200),
  CRONEXPDESC      VARCHAR2(80),
  REPEATINTERVAL   NUMBER(12),
  REPEATUNIT       VARCHAR2(2),
  FIRSTRUNTIME     VARCHAR2(20),
  ENDTIME          VARCHAR2(20),
  PRIORITY         VARCHAR2(8) not null,
  USEFLAG          VARCHAR2(2) not null,
  TRIGGERSTATE     VARCHAR2(2),
  OPERATOR         VARCHAR2(10),
  MAKETIME         VARCHAR2(20),
  MODIFYTIME       VARCHAR2(20)
)
;
comment on table JOB_JOBPLANS
  is '批处理作业计划表';
comment on column JOB_JOBPLANS.JOBPLANCODE
  is '计划编码';
comment on column JOB_JOBPLANS.JOBDETAILID
  is '作业编码';
comment on column JOB_JOBPLANS.JOBPLANDESC
  is '计划描述';
comment on column JOB_JOBPLANS.TRIGGERGROUPNAME
  is '不需要用户维护';
comment on column JOB_JOBPLANS.TRIGGERNAME
  is '不需要用户维护该字段';
comment on column JOB_JOBPLANS.RUNTYPE
  is '0-默认 1-Cron表达式';
comment on column JOB_JOBPLANS.CRONEXP
  is 'Cron表达式';
comment on column JOB_JOBPLANS.CRONEXPDESC
  is 'Cron表达式描述';
comment on column JOB_JOBPLANS.REPEATINTERVAL
  is '循环间隔数值';
comment on column JOB_JOBPLANS.REPEATUNIT
  is '0-分、1-时、2-天 ';
comment on column JOB_JOBPLANS.FIRSTRUNTIME
  is '用户在界面上配置的首次运行时间，不会被后面因系统重算而被修改';
comment on column JOB_JOBPLANS.ENDTIME
  is '结束时间';
comment on column JOB_JOBPLANS.PRIORITY
  is '1--10';
comment on column JOB_JOBPLANS.USEFLAG
  is '0-停用1-启用';
comment on column JOB_JOBPLANS.TRIGGERSTATE
  is ' 0-等待
1-运行中
2-停止
3-终结
';
comment on column JOB_JOBPLANS.OPERATOR
  is '操作员';
comment on column JOB_JOBPLANS.MAKETIME
  is '建立日期';
comment on column JOB_JOBPLANS.MODIFYTIME
  is '修改时间';
alter table JOB_JOBPLANS
  add constraint PK_JOB_JOBPLANS primary key (JOBPLANCODE);


create table JOB_JOBPLANSPARAMS
(
  PARAMCODE   VARCHAR2(6) not null,
  JOBPLANCODE VARCHAR2(8) not null,
  PARAMNAME   VARCHAR2(20) not null,
  PARAMVALUE  VARCHAR2(100) not null
)
;
comment on table JOB_JOBPLANSPARAMS
  is '批处理计划参数表';
comment on column JOB_JOBPLANSPARAMS.PARAMCODE
  is '流水号';
comment on column JOB_JOBPLANSPARAMS.JOBPLANCODE
  is '计划编码';
comment on column JOB_JOBPLANSPARAMS.PARAMNAME
  is ' ';
comment on column JOB_JOBPLANSPARAMS.PARAMVALUE
  is '参数值';
alter table JOB_JOBPLANSPARAMS
  add constraint PK_JOB_JOBPLANSPARAMS primary key (PARAMCODE);


create table LDCOM
(
  COMCODE                  VARCHAR2(10) not null,
  OUTCOMCODE               VARCHAR2(10),
  NAME                     VARCHAR2(120),
  SHORTNAME                VARCHAR2(60),
  ADDRESS                  VARCHAR2(120),
  ZIPCODE                  VARCHAR2(6),
  PHONE                    VARCHAR2(18),
  FAX                      VARCHAR2(18),
  EMAIL                    VARCHAR2(60),
  WEBADDRESS               VARCHAR2(100),
  SATRAPNAME               VARCHAR2(20),
  INSUMONITORCODE          VARCHAR2(10),
  INSUREID                 VARCHAR2(12),
  SIGNID                   VARCHAR2(6),
  REGIONALISMCODE          VARCHAR2(6),
  COMNATURE                VARCHAR2(1),
  VALIDCODE                VARCHAR2(2),
  SIGN                     VARCHAR2(10),
  COMCITYSIZE              VARCHAR2(1),
  SERVICENAME              VARCHAR2(120),
  SERVICENO                VARCHAR2(60),
  SERVICEPHONE             VARCHAR2(18),
  SERVICEPOSTADDRESS       VARCHAR2(120),
  SERVICEPOSTZIPCODE       VARCHAR2(6),
  LETTERSERVICENAME        VARCHAR2(120),
  LETTERSERVICENO          VARCHAR2(60),
  LETTERSERVICEPHONE       VARCHAR2(18),
  LETTERSERVICEPOSTADDRESS VARCHAR2(120),
  LETTERSERVICEPOSTZIPCODE VARCHAR2(6),
  COMGRADE                 VARCHAR2(2),
  COMAREATYPE              VARCHAR2(2),
  INPUTDATE                DATE,
  INPUTTIME                VARCHAR2(8),
  SEQUENCE                 VARCHAR2(4)
)
;
comment on column LDCOM.LETTERSERVICENAME
  is 'PICC健康险保单上需要打印';
comment on column LDCOM.LETTERSERVICENO
  is 'PICC健康险保单上需要打印';
comment on column LDCOM.LETTERSERVICEPHONE
  is 'PICC健康险保单上需要打印';
comment on column LDCOM.LETTERSERVICEPOSTADDRESS
  is 'PICC健康险保单上需要打印';
comment on column LDCOM.LETTERSERVICEPOSTZIPCODE
  is 'PICC健康险保单上需要打印';
comment on column LDCOM.COMGRADE
  is '01-支公司
02-分公司
03-地区级公司
04-总公司';
alter table LDCOM
  add constraint PK_LDCOM primary key (COMCODE);


create table LDCONTROLCODE
(
  CODE            VARCHAR2(20) not null,
  CODETYPE1       VARCHAR2(20) not null,
  CODETYPE2       VARCHAR2(20) not null,
  CODEDESCRIPTION VARCHAR2(80),
  OTHERSIGN       VARCHAR2(10)
)
;
alter table LDCONTROLCODE
  add constraint PK_LDCONTROLCODE primary key (CODETYPE1, CODE, CODETYPE2);


create table LDMAXNO
(
  NOTYPE  VARCHAR2(15) not null,
  NOLIMIT VARCHAR2(12) not null,
  MAXNO   INTEGER not null
)
;
comment on table LDMAXNO
  is '产生最大的流水号，所有的号码从1开始
NoType:
DOC_ID 	: EasyScan的ES_DOC_MAIN表的doc_id的序列号
PAGE_ID	: EasyScan的ES_DOC_PAGES表的page_id的序列号';
alter table LDMAXNO
  add constraint PK_LDMAXNO primary key (NOTYPE, NOLIMIT);


create table LDMENU
(
  NODECODE        VARCHAR2(5) not null,
  PARENTNODECODE  VARCHAR2(5),
  NODELEVEL       VARCHAR2(1),
  NODENAME        VARCHAR2(60),
  CHILDFLAG       VARCHAR2(10),
  NODEKEY         VARCHAR2(10),
  RUNSCRIPT       VARCHAR2(150),
  NODEDESCRIPTION VARCHAR2(100),
  NODESIGN        VARCHAR2(5),
  NODEORDER       INTEGER
)
;
comment on table LDMENU
  is '所有的菜单节点都在该表中描述。
';
comment on column LDMENU.RUNSCRIPT
  is '此处为需要执行的语句或命令行或网页连接。';
alter table LDMENU
  add constraint PK_LDMENU primary key (NODECODE);


create table LDMENUGRP
(
  MENUGRPCODE        VARCHAR2(5) not null,
  MENUGRPNAME        VARCHAR2(30),
  MENUGRPDESCRIPTION VARCHAR2(100),
  MENUSIGN           VARCHAR2(5),
  OPERATOR           VARCHAR2(10),
  MAKEDATE           DATE,
  MAKETIME           VARCHAR2(8)
)
;
alter table LDMENUGRP
  add constraint PK_LDMENUGRP primary key (MENUGRPCODE);


create table LDMENUGRPTOMENU
(
  MENUGRPCODE VARCHAR2(5) not null,
  NODECODE    VARCHAR2(5) not null
)
;
alter table LDMENUGRPTOMENU
  add constraint PK_LDMENUGRPTOMENU primary key (MENUGRPCODE, NODECODE);


create table LDMENUSHORT
(
  NODECODE        VARCHAR2(5) not null,
  PARENTNODECODE  VARCHAR2(5),
  NODELEVEL       VARCHAR2(1),
  NODENAME        VARCHAR2(60),
  CHILDFLAG       VARCHAR2(10),
  NODEKEY         VARCHAR2(10),
  RUNSCRIPT       VARCHAR2(150),
  NODEDESCRIPTION VARCHAR2(100),
  NODESIGN        VARCHAR2(5),
  NODEORDER       INTEGER,
  OPERATOR        VARCHAR2(10) not null
)
;
comment on column LDMENUSHORT.RUNSCRIPT
  is '此处为需要执行的语句或命令行或网页连接。';
alter table LDMENUSHORT
  add constraint PK_LDMENUSHORT primary key (NODECODE, OPERATOR);


create table LDMENU_20161025
(
  NODECODE        VARCHAR2(5) not null,
  PARENTNODECODE  VARCHAR2(5),
  NODELEVEL       VARCHAR2(1),
  NODENAME        VARCHAR2(60),
  CHILDFLAG       VARCHAR2(10),
  NODEKEY         VARCHAR2(10),
  RUNSCRIPT       VARCHAR2(150),
  NODEDESCRIPTION VARCHAR2(100),
  NODESIGN        VARCHAR2(5),
  NODEORDER       INTEGER
)
;


create table LDPAGEACCESS
(
  RUNSCRIPT       VARCHAR2(150) not null,
  NODEDESCRIPTION VARCHAR2(100),
  NODECODE        VARCHAR2(5) not null
)
;
comment on column LDPAGEACCESS.RUNSCRIPT
  is '此处为需要执行的语句或命令行或网页连接。';
alter table LDPAGEACCESS
  add constraint PK_LDPAGEACCESS primary key (NODECODE, RUNSCRIPT);


create table LDSYSVAR
(
  SYSVAR      VARCHAR2(20) not null,
  SYSVARTYPE  VARCHAR2(3),
  SYSVARVALUE VARCHAR2(100)
)
;
comment on table LDSYSVAR
  is '该表中的所有变量的命名都必须是小写的，不同的数据库可能
会区分大小写。
在该表中有一些必须的系统变量：
1。onerow，没有意义，在使用sql语句进行计算的时候用到。
2。checkNewType 表示在财务暂缴费录入的时候时候是否需要和单证表相关
   0 －－ 表示不用校验单证表。
   1 －－ 表示需要校验暂缴费号。
   2 －－ 表示只校验印刷号。
   3 －－ 表示同时校验暂缴费号和印刷号。

3.SignValiDateBackFlag:签单追溯标记
变量取值："0"--不追溯
         "1"--追溯到签单次日
         "2"--追溯到交费到帐最大次日
	 "3"--追溯到交费到帐最小次日
4.SignPayCheckFlag:签单是否要校验交费.
         "1"--暂交费必须等于应交保费
         "2"--暂交费可以大于应交保费
5.XmlPath:指定磁盘导入的磁盘绝对路径：E:/Xml/Import/
6.LAAgent：
7.SignValiDateBackFlag：签单生效日期是否回溯。
          "0"--不回溯
          "1"--回溯
8.DisplayBankFilePath：文件下载的配置路径
9.SendToBankFilePath:发送文件的磁盘绝对路径。
10.ReturnFromBankPath：从银行返回的文件存放的绝对路径。
11.URGEInteval：催办通知书的过期时间长度。默认为30天。
12.OutTimeNum：需要催办的通知书的过期时间长度。默认为30天。

13.checkNewType
    0 不校验
    1 校验暂交费收据
    2 校验投保单印刷号
    3 都校验（包括1和2的情况）

14.ChangeSubValiDateFlag
是否在附加险签单时，如果和主险不是同一批的，那么将附加险的生效日期改为主险的生效日期。
0 为不处理 1 为更改

15.NewPolDunFlag (新单催收标记)
           0 不催收
           1 只催收个险
           3 只催收银行险
           9 都催收
16.MaxSendToBank设置发送银行的最大次数，现在为7次。
17.NotVerifyCertifyCode 存放不需要校验单证是否发放给业务员的所有单证编码。
   格式为：单证编码1/单证编码2/
18.NotVerifyRiskcode  存放不需要校验险种印刷号是否发放给业务员的所有险种编码
   格式为：险种编码1/险种编码2/

19 AutoVerifyStation 自动核销的位置--即续期交费时，保单余额足够支付保费且选择为抵交续期保费时的自动核销
         1 财务核销时处理
         2 催收时处理

20 aheaddays 催收提前的天数，默认是30天

21 relationflag--续期和续保是否关联标记

  0 主险续期和附加险自动续保不关联并且主险自动续保不记入主险续期
  1 主险续期和附加险自动续保关联并且主险自动续保不记入主险续期
  2 主险续期和附加险自动续保关联并且主险自动续保记入主险续期


22 CreatListPath--清单生成文件路径（目前续期应收清单，实收清单用）

23 ShowListPath--下载清单文件（目前续期应收清单，实收清单用）

24 EasyScanConfigFile  :EasyScan使用的配置文件

25 CheckCardBuget
  1 表示需要校验预算
  0 表示不需要校验预算

';
alter table LDSYSVAR
  add constraint PK_LDSYSVAR primary key (SYSVAR);


create table LDUSER
(
  USERCODE         VARCHAR2(6) not null,
  USERNAME         VARCHAR2(30),
  COMCODE          VARCHAR2(10) not null,
  PASSWORD         VARCHAR2(16),
  USERDESCRIPTION  VARCHAR2(50),
  USERSTATE        VARCHAR2(1),
  UWPOPEDOM        VARCHAR2(2),
  CLAIMPOPEDOM     VARCHAR2(2),
  OTHERPOPEDOM     VARCHAR2(2),
  POPUWFLAG        VARCHAR2(1),
  SUPERPOPEDOMFLAG VARCHAR2(1),
  OPERATOR         VARCHAR2(10) not null,
  MAKEDATE         DATE not null,
  MAKETIME         VARCHAR2(8) not null,
  VALIDSTARTDATE   DATE,
  VALIDENDDATE     DATE,
  CERTIFYFLAG      VARCHAR2(1),
  EDORPOPEDOM      VARCHAR2(2),
  BLACKLISTPOPEDOM VARCHAR2(2)
)
;
comment on column LDUSER.USERSTATE
  is 'userstate	0	有效
userstate	1	失效
userstate       2       暂停
';
comment on column LDUSER.UWPOPEDOM
  is 'uwpopedom	A	A级核保员
uwpopedom	B	B级核保员
uwpopedom	C	C级核保员
uwpopedom	D	D级核保员
uwpopedom	E	E级核保员
uwpopedom	F	F级核保员
';
comment on column LDUSER.CLAIMPOPEDOM
  is 'claimpopedom	A	A级核赔员
claimpopedom	B	B级核赔员
claimpopedom	C	C级核赔员
';
comment on column LDUSER.OTHERPOPEDOM
  is 'otherpopedom	0	没有其他权限
';
comment on column LDUSER.SUPERPOPEDOMFLAG
  is 'superpopedomflag	0	没有超级权限
superpopedomflag	1	有超级权限
';
comment on column LDUSER.CERTIFYFLAG
  is '1 -- 表示单证管理员
0 -- 表示非单证管理员。';
comment on column LDUSER.EDORPOPEDOM
  is 'EdorPopedom	A	A级核保员
EdorPopedom	B	B级核保员
EdorPopedom	C	C级核保员
EdorPopedom	D	D级核保员
EdorPopedom	E	E级核保员
EdorPopedom	F	F级核保员
';
alter table LDUSER
  add constraint PK_LDUSER primary key (USERCODE);


create table LDUSERLOG
(
  LOGNO      VARCHAR2(10) not null,
  MANAGECOM  VARCHAR2(10) not null,
  OPERATOR   VARCHAR2(10) not null,
  LOGTYPE    VARCHAR2(2),
  LOGCONTENT VARCHAR2(150),
  CIENTIP    VARCHAR2(15),
  MAKEDATE   DATE not null,
  MAKETIME   VARCHAR2(8) not null
)
;
alter table LDUSERLOG
  add constraint PK_LDUSERLOG primary key (LOGNO);


create table LDUSERLOGIN
(
  USERCODE    VARCHAR2(10) not null,
  COMCODE     VARCHAR2(10),
  CLIENTNAME  VARCHAR2(40),
  CLIENTTYPE  VARCHAR2(40),
  CLIENTIP    VARCHAR2(15),
  PRINTERTYPE VARCHAR2(40),
  INPUTTYPE   VARCHAR2(20),
  RGTDATE     DATE,
  LOGINDATE   DATE,
  LOGINTIME   DATE
)
;
alter table LDUSERLOGIN
  add constraint PK_LDUSERLOGIN primary key (USERCODE);


create table LDUSERTOMENUGRP
(
  USERCODE    VARCHAR2(10) not null,
  MENUGRPCODE VARCHAR2(5) not null
)
;
alter table LDUSERTOMENUGRP
  add constraint PK_LDUSERTOMENUGRP primary key (USERCODE, MENUGRPCODE);


create table LDUSERTRACE
(
  TRACENO      NUMBER(10) not null,
  MANAGECOM    VARCHAR2(10) not null,
  OPERATOR     VARCHAR2(10) not null,
  TRACETYPE    VARCHAR2(2),
  TRACECONTENT VARCHAR2(150),
  CLIENTIP     VARCHAR2(15),
  MAKEDATE     DATE not null,
  MAKETIME     VARCHAR2(8) not null,
  LOCATION     VARCHAR2(50)
)
;
alter table LDUSERTRACE
  add constraint PK_LDUSERTRACE primary key (TRACENO);


create table LMMAILCONTENTPARAMS
(
  PARAMCODE VARCHAR2(50) not null,
  CALTYPE   VARCHAR2(2),
  F1        VARCHAR2(10),
  F2        VARCHAR2(10),
  F3        VARCHAR2(10),
  F4        VARCHAR2(10),
  F5        VARCHAR2(10),
  CALCODE   VARCHAR2(50) not null
)
;
alter table LMMAILCONTENTPARAMS
  add constraint PK_LMMAILCONTENTPARAMS primary key (PARAMCODE, CALCODE);


create table LMNETSETUP
(
  NETNAME           VARCHAR2(50) not null,
  NETTYPE           VARCHAR2(20),
  SURRSERVEADDRESS  VARCHAR2(100),
  PORT              VARCHAR2(100),
  NETUSERNAME       VARCHAR2(50),
  NERUSERPASSWORD   VARCHAR2(100),
  EMAILSERVER       VARCHAR2(100),
  EMAIUSERNAME      VARCHAR2(50),
  EMAILUSERPASSWORD VARCHAR2(100),
  EMAILADDRESS      VARCHAR2(100),
  STATE             VARCHAR2(20),
  OPERATOR          VARCHAR2(50) not null,
  MAKEDATE          DATE not null,
  MAKETIME          VARCHAR2(20) not null
)
;
comment on table LMNETSETUP
  is '网络配置';
comment on column LMNETSETUP.NETNAME
  is '网络名称';
comment on column LMNETSETUP.NETTYPE
  is '1 无代理
2 socket4
3 socket4a';
comment on column LMNETSETUP.SURRSERVEADDRESS
  is '代理服务器地址';
comment on column LMNETSETUP.PORT
  is '端口';
comment on column LMNETSETUP.NETUSERNAME
  is '用户名';
comment on column LMNETSETUP.NERUSERPASSWORD
  is '口令';
comment on column LMNETSETUP.EMAILSERVER
  is '电子邮件服务器';
comment on column LMNETSETUP.EMAIUSERNAME
  is '电子邮件用户名';
comment on column LMNETSETUP.EMAILUSERPASSWORD
  is '电子邮件口令';
comment on column LMNETSETUP.EMAILADDRESS
  is '电子邮箱地址';
comment on column LMNETSETUP.STATE
  is '标示是否启用
0 不启用
1 启用';
comment on column LMNETSETUP.OPERATOR
  is '操作员';
comment on column LMNETSETUP.MAKEDATE
  is '入机日期';
comment on column LMNETSETUP.MAKETIME
  is '入机时间';
alter table LMNETSETUP
  add constraint PK_LMNETSETUP primary key (NETNAME);


create table PARA_COMTOLICENSE
(
  CODETYPE    VARCHAR2(30) not null,
  CODE        VARCHAR2(50) not null,
  CODENAME    VARCHAR2(200),
  LICENSENO   VARCHAR2(50),
  LICENSENAME VARCHAR2(200)
)
;
alter table PARA_COMTOLICENSE
  add constraint XPKPARA_COMTOLICENSE primary key (CODETYPE, CODE);


create table PARA_DISEASE
(
  DISEASECODE VARCHAR2(50) not null,
  DISEASENAME VARCHAR2(600),
  DISEASETYPE VARCHAR2(1)
)
;
alter table PARA_DISEASE
  add primary key (DISEASECODE);


create table PARA_HOSPITAL
(
  HOSPCODE VARCHAR2(50) not null,
  HOSPNAME VARCHAR2(200),
  HOSPADDR VARCHAR2(600),
  HOSPTYPE VARCHAR2(1)
)
;
alter table PARA_HOSPITAL
  add primary key (HOSPCODE);


create table PARA_OCCUPATION
(
  OCCUCODE VARCHAR2(30) not null,
  OCCUNAME VARCHAR2(500)
)
;
alter table PARA_OCCUPATION
  add primary key (OCCUCODE);


create table PARA_RISKDUTYAMNT
(
  DUTYCODE VARCHAR2(20) not null,
  RISKCODE VARCHAR2(20) not null,
  AMNTTYPE VARCHAR2(2),
  AMOUNT   NUMBER(20,2),
  CALDEF   VARCHAR2(2)
)
;
alter table PARA_RISKDUTYAMNT
  add primary key (DUTYCODE, RISKCODE);


create table PARA_RISKDUTYCLMATTR
(
  DUTYCODE   VARCHAR2(20) not null,
  RISKCODE   VARCHAR2(20) not null,
  SECTIONNO  VARCHAR2(10) not null,
  COSTSTART  NUMBER(20,2),
  COSTEND    NUMBER(20,2),
  DEDUCTIBLE NUMBER(20,2),
  CLAIMRATIO NUMBER(20,4)
)
;
alter table PARA_RISKDUTYCLMATTR
  add primary key (DUTYCODE, RISKCODE, SECTIONNO);


create table PUBCARDTRAN
(
  MANAGECOM    VARCHAR2(10) not null,
  CODETYPE     VARCHAR2(20) not null,
  HEALCODE     VARCHAR2(20),
  HEALCODENAME VARCHAR2(200),
  LISCODE      VARCHAR2(20),
  LISCODENAME  VARCHAR2(200),
  OPERATOR     VARCHAR2(10),
  MAKEDATE     DATE,
  MAKETIME     VARCHAR2(8),
  MODIFYDATE   DATE,
  MODIFYTIME   VARCHAR2(8)
)
;


create table RLSH_OCCUPATION
(
  SYSID       VARCHAR2(10) not null,
  OCCUCODE    VARCHAR2(30) not null,
  OCCUNAME    VARCHAR2(500),
  MAPOCCUCODE VARCHAR2(30)
)
;
alter table RLSH_OCCUPATION
  add primary key (SYSID, OCCUCODE);


create table RLSH_RELATIONSHIP
(
  SYSID          VARCHAR2(10) not null,
  RLSHCODE       VARCHAR2(30) not null,
  RLSHNAME       VARCHAR2(500),
  MAPRLSHCODE    VARCHAR2(30),
  MAPREVRLSHCODE VARCHAR2(30)
)
;
alter table RLSH_RELATIONSHIP
  add constraint XPKRLSH_RELATIONSHIP primary key (SYSID, RLSHCODE);


create table ZBX_CS_LDDEPARTMENT
(
  DEPARTMENTID   VARCHAR2(10) not null,
  DEPARTMENTNAME VARCHAR2(50),
  MAKEDATE       DATE,
  MAKETIME       VARCHAR2(8)
)
;
alter table ZBX_CS_LDDEPARTMENT
  add constraint PK_ZBX_CS_LDDEPARTMENT primary key (DEPARTMENTID);


create table ZBX_CS_LDMENU
(
  NODECODE        VARCHAR2(5) not null,
  PARENTNODECODE  VARCHAR2(5),
  NODELEVEL       VARCHAR2(1),
  NODENAME        VARCHAR2(30),
  CHILDFLAG       VARCHAR2(10),
  NODEKEY         VARCHAR2(10),
  RUNSCRIPT       VARCHAR2(150),
  NODEDESCRIPTION VARCHAR2(100),
  NODESIGN        VARCHAR2(5),
  NODEORDER       INTEGER,
  DEPARTMENTID    VARCHAR2(10)
)
;
alter table ZBX_CS_LDMENU
  add constraint PK_ZBX_CS_LDMENU primary key (NODECODE);
alter table ZBX_CS_LDMENU
  add constraint FK_ZBX_CS_LDMENU_01 foreign key (DEPARTMENTID)
  references ZBX_CS_LDDEPARTMENT (DEPARTMENTID);


create table ZBX_CS_LDMENUGRP
(
  MENUGRPCODE        VARCHAR2(5) not null,
  MENUGRPNAME        VARCHAR2(30),
  MENUGRPDESCRIPTION VARCHAR2(100),
  MENUSIGN           VARCHAR2(5),
  OPERATOR           VARCHAR2(10),
  MAKEDATE           DATE,
  MAKETIME           VARCHAR2(8),
  DEPARTMENTID       VARCHAR2(10)
)
;
alter table ZBX_CS_LDMENUGRP
  add constraint PK_ZBX_CS_LDMENUGRP primary key (MENUGRPCODE);
alter table ZBX_CS_LDMENUGRP
  add constraint FK_ZBX_CS_LDMENUGRP_01 foreign key (DEPARTMENTID)
  references ZBX_CS_LDDEPARTMENT (DEPARTMENTID);


create table ZBX_CS_LDMENUGRPTOMENU
(
  MENUGRPCODE VARCHAR2(5) not null,
  NODECODE    VARCHAR2(5) not null
)
;
alter table ZBX_CS_LDMENUGRPTOMENU
  add constraint PK_ZBX_CS_LDMENUGRPTOMENU primary key (MENUGRPCODE, NODECODE);
alter table ZBX_CS_LDMENUGRPTOMENU
  add constraint FK_ZBX_CS_LDMENUGRPTOMENU_01 foreign key (MENUGRPCODE)
  references ZBX_CS_LDMENUGRP (MENUGRPCODE);
alter table ZBX_CS_LDMENUGRPTOMENU
  add constraint FK_ZBX_CS_LDMENUGRPTOMENU_02 foreign key (NODECODE)
  references ZBX_CS_LDMENU (NODECODE);


create table ZBX_CS_LDUSER
(
  USERCODE         VARCHAR2(20) not null,
  USERNAME         VARCHAR2(20),
  COMCODE          VARCHAR2(20) not null,
  PASSWORD         VARCHAR2(16),
  USERDESCRIPTION  VARCHAR2(50),
  USERSTATE        VARCHAR2(1),
  UWPOPEDOM        VARCHAR2(10),
  CLAIMPOPEDOM     VARCHAR2(2),
  OTHERPOPEDOM     VARCHAR2(2),
  POPUWFLAG        VARCHAR2(1),
  SUPERPOPEDOMFLAG VARCHAR2(1),
  OPERATOR         VARCHAR2(10) not null,
  MAKEDATE         DATE not null,
  MAKETIME         VARCHAR2(8) not null,
  VALIDSTARTDATE   DATE,
  VALIDENDDATE     DATE,
  CERTIFYFLAG      VARCHAR2(1),
  EDORPOPEDOM      VARCHAR2(2),
  AGENTCOM         VARCHAR2(20),
  GEDORPOPEDOM     VARCHAR2(2),
  PWDSTARTDATA     VARCHAR2(16) default '2007-07-01' not null,
  PWDENDDATA       VARCHAR2(16) default '2007-09-20' not null,
  LOCKSTATE        VARCHAR2(2),
  USEFLAG          VARCHAR2(2) default '1' not null,
  LOGONTYPE        VARCHAR2(1),
  DEPARTMENTID     VARCHAR2(10)
)
;
alter table ZBX_CS_LDUSER
  add constraint PK_ZBX_CS_LDUSER primary key (USERCODE);
alter table ZBX_CS_LDUSER
  add constraint FK_ZBX_CS_LDUSER_01 foreign key (DEPARTMENTID)
  references ZBX_CS_LDDEPARTMENT (DEPARTMENTID);


create table ZBX_CS_LDUSERTOMENUGRP
(
  USERCODE    VARCHAR2(10) not null,
  MENUGRPCODE VARCHAR2(5) not null
)
;
alter table ZBX_CS_LDUSERTOMENUGRP
  add constraint PK_ZBX_CS_LDUSERTOMENUGRP primary key (USERCODE, MENUGRPCODE);
alter table ZBX_CS_LDUSERTOMENUGRP
  add constraint FK_ZBX_CS_LDUSERTOMENUGRP_01 foreign key (USERCODE)
  references ZBX_CS_LDUSER (USERCODE);
alter table ZBX_CS_LDUSERTOMENUGRP
  add constraint FK_ZBX_CS_LDUSERTOMENUGRP_02 foreign key (MENUGRPCODE)
  references ZBX_CS_LDMENUGRP (MENUGRPCODE);


create table ZBX_T_POLICY
(
  CONTNO           VARCHAR2(50),
  ACCEPT_DATE      VARCHAR2(50),
  APPLICATION_DATE VARCHAR2(50),
  CREATE_TIME      VARCHAR2(50)
)
;