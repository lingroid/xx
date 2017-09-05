
DROP TABLE T_Extra_BP_Sign_Info;

DROP TABLE T_Sale_Team_Info;

DROP TABLE T_Sale_Team_Member_Info;

DROP TABLE T_Plan_Info;

DROP TABLE T_Plan_Team_Info;

DROP TABLE T_Plan_Team_Support_Member_Info;

DROP TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info;

DROP TABLE T_Extra_BP_Sign_Mtral_Info;

DROP TABLE T_Extra_BP_Type_Info;

DROP TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info;

DROP TABLE T信美_Employee_Info;

DROP TABLE T_Ache_Blng_Dtl_Tbl;

DROP TABLE T_Plan_Extra_BP_Personnel_Info;

DROP TABLE T_Per_Order_Ache_Blng_Chg_His;

DROP TABLE T_Ache_Blng_Team_Tbl;

DROP TABLE T_Ache_Blng_Extra_BP_Tbl;

DROP TABLE T_Ache_Blng_Team_Member_Tbl;

DROP TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info;

DROP TABLE T_Org_BP_Info;

DROP TABLE T_Org_BP_Member_Info;

DROP TABLE T_Per_Order_Team_Ache_Blng_Info;

DROP TABLE T_Month_Ache_Stl_Info;

CREATE TABLE T_Ache_Blng_Dtl_Tbl
(
	Cvrg_Code            VARCHAR(25) NOT NULL,
	Policy_Type          CHAR(18) NULL,
	Plan_Code            BIGINT(19) NULL,
	Plan_Name            VARCHAR(500) NULL,
	Order_Code           VARCHAR(25) NULL,
	Policy_Code          VARCHAR(20) NULL,
	Total_Policy_Code    VARCHAR(20) NULL,
	Std_Premium          DECIMAL(18,2) NULL,
	Ache_Src_Fst_Lbl     VARCHAR(3) NULL,
	Biz_Src_Sec_Lbl      VARCHAR(3) NULL,
	Stl_Status           VARCHAR(3) NULL,
	Pre_Stl_User_Code    BIGINT(19) NULL,
	Pre_Stl_Init_Tm      DATETIME NULL,
	Cfm_User_Code        BIGINT(19) NULL,
	Cfm_Tm               DATETIME NULL,
	Stl_User_Code        BIGINT(19) NULL,
	Stl_Tm               DATETIME NULL
);

ALTER TABLE T_Ache_Blng_Dtl_Tbl
ADD PRIMARY KEY (Cvrg_Code);

CREATE TABLE T_Ache_Blng_Extra_BP_Tbl
(
	Cvrg_Code            VARCHAR(20) NOT NULL,
	IBS_User_Id          BIGINT(19) NOT NULL,
	Ache_Type            VARCHAR(3) NOT NULL,
	Name                 VARCHAR(100) NULL,
	Mobile               VARCHAR(20) NULL,
	Extra_BP_Type        VARCHAR(10) NULL,
	Extra_BP_Lvl         VARCHAR(10) NULL,
	Award_Shared_Ratio   DECIMAL(18,2) NULL,
	Award_Pts            DECIMAL(18,2) NULL,
	Consult_Fee          DECIMAL(18,2) NULL
);

ALTER TABLE T_Ache_Blng_Extra_BP_Tbl
ADD PRIMARY KEY (Cvrg_Code,IBS_User_Id,Ache_Type);

CREATE TABLE T_Ache_Blng_Team_Member_Tbl
(
	Cvrg_Code            VARCHAR(20) NOT NULL,
	Ache_Blng_Employee_Id BIGINT(19) NOT NULL,
	Ache_Blng_Employee_Name VARCHAR(50) NULL,
	Employee_Shared_Ratio DECIMAL(18,2) NULL,
	Ache_Award           DECIMAL(18,2) NULL
);

ALTER TABLE T_Ache_Blng_Team_Member_Tbl
ADD PRIMARY KEY (Cvrg_Code,Ache_Blng_Employee_Id);

CREATE TABLE T_Ache_Blng_Team_Tbl
(
	Cvrg_Code            VARCHAR(20) NOT NULL,
	Ache_Blng_Team_Id    BIGINT(19) NOT NULL,
	Ache_Blng_Team_Name  VARCHAR(200) NULL,
	Team_Shared_Ratio    DECIMAL(18,2) NULL,
	Ache_Award           DECIMAL(18,2) NULL
);

ALTER TABLE T_Ache_Blng_Team_Tbl
ADD PRIMARY KEY (Cvrg_Code,Ache_Blng_Team_Id);

CREATE TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info
(
	Lvl_Code             VARCHAR(10) NOT NULL,
	Lvl_Name             VARCHAR(50) NULL,
	Std_Premium_Min      DECIMAL(18,2) NULL,
	Std_Premium_Max      DECIMAL(18,2) NULL,
	Blng_Member_Type_Code VARCHAR(10) NULL,
	Shared_Ratio         DECIMAL(18,2) NULL,
	Lvl_Valid_Period     INT NULL,
	Perm_Valid_Ind       VARCHAR(3) NULL,
	Memo                 VARCHAR(500) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL,
	Del_Ind              VARCHAR(3) NULL
);

ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info
ADD PRIMARY KEY (Lvl_Code);

CREATE TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info
(
	Log_Id               BIGINT(19) NOT NULL,
	IBS_User_Id          VARCHAR(25) NULL,
	Contact_Mobile       VARCHAR(20) NULL,
	Name                 VARCHAR(50) NULL,
	Ecif_Cust_Id         BIGINT(19) NULL,
	Extra_BP_Type        VARCHAR(3) NULL,
	Extra_BP_Lvl         VARCHAR(3) NULL,
	Shared_Ratio         DECIMAL(18,2) NULL,
	Lvl_Chg_Dt           DATETIME NULL,
	Lvl_Valid_Close_Dt   DATETIME NULL,
	Ache_Blng_Employee_Id BIGINT(19) NULL,
	Employee_Ache_Ratio  DECIMAL(18,2) NULL,
	Ache_Blng_Team_Id    BIGINT(19) NULL,
	Team_Ache_Ratio      DECIMAL(18,2) NULL,
	Ache_Blng_Adj_User_Id BIGINT(19) NULL,
	Ache_Blng_Adj_Tm     DATETIME NULL,
	Start_Tm             DATETIME NULL,
	End_Tm               DATETIME NULL
);

ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info
ADD PRIMARY KEY (Log_Id);

CREATE TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info
(
	IBS_User_Id          VARCHAR(25) NOT NULL,
	Contact_Mobile       VARCHAR(20) NULL,
	Name                 VARCHAR(50) NULL,
	Ecif_Cust_Id         BIGINT(19) NULL,
	Extra_BP_Type        VARCHAR(3) NULL,
	Extra_BP_Lvl         VARCHAR(3) NULL,
	Shared_Ratio         DECIMAL(18,2) NULL,
	Lvl_Chg_Dt           DATETIME NULL,
	Lvl_Valid_Close_Dt   DATETIME NULL,
	Ache_Blng_Employee_Id BIGINT(19) NULL,
	Employee_Ache_Ratio  DECIMAL(18,2) NULL,
	Ache_Blng_Team_Id    BIGINT(19) NULL,
	Team_Ache_Ratio      DECIMAL(18,2) NULL,
	Ache_Blng_Adj_User_Id BIGINT(19) NULL,
	Ache_Blng_Adj_Tm     DATETIME NULL
);

ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info
ADD PRIMARY KEY (IBS_User_Id);

CREATE TABLE T_Extra_BP_Sign_Info
(
	Extra_BP_Id          BIGINT(19) NOT NULL,
	Ecif_Cust_Id         BIGINT(19) NULL,
	IBS_User_Id          BIGINT(19) NULL,
	Member_Id            VARCHAR(20) NULL,
	Cust_Name            VARCHAR(100) NULL,
	Gender               VARCHAR(3) NULL,
	Age                  INT NULL,
	Iden_Type            VARCHAR(3) NULL,
	Iden_Code            VARCHAR(20) NULL,
	Birthday             DATETIME NULL,
	Contact_Mobile       VARCHAR(20) NULL,
	Contact_Mailbox      VARCHAR(50) NULL,
	Province             VARCHAR(3) NULL,
	City                 VARCHAR(3) NULL,
	County               VARCHAR(3) NULL,
	Graduate_School      VARCHAR(100) NULL,
	Highest_Edu_Degree   VARCHAR(3) NULL,
	Specialty            VARCHAR(50) NULL,
	Enterprise           VARCHAR(100) NULL,
	Dept                 VARCHAR(100) NULL,
	Duty                 VARCHAR(100) NULL,
	Extra_BP_Type        VARCHAR(3) NULL,
	Sign_Status          TEXT NULL,
	Sign_St_Dt           DATETIME NULL,
	Valid_St_Dt          DATETIME NULL,
	Valid_End_Dt         DATETIME NULL,
	Blng_Org             VARCHAR(100) NULL,
	Open_Bank            VARCHAR(100) NULL,
	Open_Subbranch       VARCHAR(100) NULL,
	Open_Acct_Num        VARCHAR(50) NULL,
	Recommend_Shared_Mode VARCHAR(3) NULL,
	Recommend_Shared_Ratio DECIMAL(18,2) NULL,
	Cooper_Meth          VARCHAR(3) NULL,
	Ache_Blng_Employee_Id VARCHAR(50) NULL,
	Employee_Ache_Ratio  DECIMAL(18,2) NULL,
	Ache_Blng_Team_Id    VARCHAR(50) NULL,
	Team_Ache_Ratio      DECIMAL(18,2) NULL,
	Member_Rank          VARCHAR(3) NULL,
	Super_Recmmdr        VARCHAR(50) NULL,
	Create_User_Id       DATETIME NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Extra_BP_Sign_Info
ADD PRIMARY KEY (Extra_BP_Id);

CREATE UNIQUE INDEX IDX_EXTRABP_INFO_ECIFID ON T_Extra_BP_Sign_Info
(
	Ecif_Cust_Id
);

CREATE INDEX IDX_EXTRABP_INFO_NAME_AND_PHONE ON T_Extra_BP_Sign_Info
(
	Contact_Mobile
);

CREATE UNIQUE INDEX IDX_EXTRABP_INFO_SING_STR_DT ON T_Extra_BP_Sign_Info
(
	Sign_St_Dt
);

CREATE TABLE T_Extra_BP_Sign_Mtral_Info
(
	Mtral_Id             DATETIME NOT NULL,
	Extra_BP_Id          BIGINT(19) NULL,
	Extra_BP_Type        VARCHAR(3) NULL,
	Mtral_Type           VARCHAR(3) NULL,
	Mtral_Seq            INT NULL,
	Res_From_Apname      VARCHAR(50) NULL,
	Res_Type             VARCHAR(50) NULL,
	Res_Name             VARCHAR(50) NULL,
	File_Name            VARCHAR(50) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Extra_BP_Sign_Mtral_Info
ADD PRIMARY KEY (Mtral_Id);

CREATE TABLE T_Extra_BP_Type_Info
(
	Type_Code            VARCHAR(10) NOT NULL,
	Type_Name            VARCHAR(50) NULL,
	Perm_Valid_Ind       VARCHAR(3) NULL,
	Qualify_Valid_Period INT NULL,
	Memo                 VARCHAR(500) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL,
	Del_Ind              VARCHAR(3) NULL
);

ALTER TABLE T_Extra_BP_Type_Info
ADD PRIMARY KEY (Type_Code);

CREATE TABLE T_Month_Ache_Stl_Info
(
	Month                VARCHAR(10) NOT NULL,
	Stl_Status           VARCHAR(3) NULL,
	Pre_Stl_User_Code    CHAR(18) NULL,
	Pre_Stl_Tm           DATETIME NULL,
	Cfm_Tm               DATETIME NULL,
	Stl_User_Code        BIGINT(19) NULL,
	Stl_Tm               DATETIME NULL
);

ALTER TABLE T_Month_Ache_Stl_Info
ADD PRIMARY KEY (Month);

CREATE TABLE T_Org_BP_Info
(
	Org_BP_Id            BIGINT(19) NOT NULL,
	Org_Name             VARCHAR(200) NULL,
	Org_Lvl              VARCHAR(3) NULL,
	Super_Org_Id         BIGINT(19) NULL,
	Res_Per_Member_Id    VARCHAR(20) NULL,
	Res_Per_Ecif_Id      CHAR(18) NULL,
	Res_Per_IBS_User_Id  BIGINT(19) NULL,
	Res_Per_Name         VARCHAR(100) NULL,
	Res_Per_Tel          VARCHAR(20) NULL,
	Corp_Addr            VARCHAR(200) NULL,
	Ache_Shared_Ratio    DECIMAL(18,2) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Org_BP_Info
ADD PRIMARY KEY (Org_BP_Id);

CREATE TABLE T_Org_BP_Member_Info
(
	Member_Id            DATETIME NOT NULL,
	Org_BP_Id            BIGINT(19) NULL,
	IBS_User_Id          BIGINT(19) NULL,
	Member_Code          VARCHAR(20) NULL,
	Name                 VARCHAR(100) NULL,
	Tel                  VARCHAR(20) NULL,
	Iden_Type            VARCHAR(3) NULL,
	Iden_Code            VARCHAR(20) NULL,
	Mailbox              VARCHAR(100) NULL,
	Province             VARCHAR(3) NULL,
	City                 VARCHAR(3) NULL,
	County               VARCHAR(3) NULL,
	Dtl_Addr             VARCHAR(200) NULL,
	Res_Per_Flag         VARCHAR(3) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Org_BP_Member_Info
ADD PRIMARY KEY (Member_Id);

CREATE TABLE T_Per_Order_Ache_Blng_Chg_His
(
	Seq_Num              CHAR(18) NOT NULL,
	Cvrg_Code            BIGINT(19) NULL,
	Order_Code           VARCHAR(25) NULL,
	Policy_Code          VARCHAR(25) NULL,
	Total_Policy_Code    VARCHAR(20) NULL,
	Std_Premium          DECIMAL(18,2) NULL,
	Recmmdr_Id           BIGINT(19) NULL,
	Recmmdr_Name         VARCHAR(100) NULL,
	Recmmdr_Shared_Ratio DECIMAL(18,2) NULL,
	Ache_Blng_Employee_Id BIGINT(19) NULL,
	Ache_Blng_Employee_Name VARCHAR(50) NULL,
	Employee_Shared_Ratio DECIMAL(18,2) NULL,
	Ache_Blng_Team_Id    BIGINT(19) NULL,
	Ache_Blng_Team_Name  VARCHAR(200) NULL,
	Team_Shared_Ratio    DECIMAL(18,2) NULL,
	Ache_Src_Fst_Lbl     VARCHAR(3) NULL,
	Biz_Src_Sec_Lbl      VARCHAR(3) NULL,
	Stl_Status           VARCHAR(3) NULL,
	Update_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL
);

ALTER TABLE T_Per_Order_Ache_Blng_Chg_His
ADD PRIMARY KEY (Seq_Num);

CREATE TABLE T_Per_Order_Team_Ache_Blng_Info
(
	IBS_User_Id          BIGINT(19) NOT NULL,
	Lbl_Type             VARCHAR(3) NULL,
	Team_Id              BIGINT(19) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Per_Order_Team_Ache_Blng_Info
ADD PRIMARY KEY (IBS_User_Id);

CREATE TABLE T_Plan_Extra_BP_Personnel_Info
(
	Plan_Id              BIGINT(19) NOT NULL,
	Extra_BP_Id          BIGINT(19) NOT NULL,
	Shared_Ratio         DECIMAL(18,2) NULL,
	Name                 VARCHAR(50) NULL,
	Mobile               VARCHAR(20) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Plan_Extra_BP_Personnel_Info
ADD PRIMARY KEY (Plan_Id,Extra_BP_Id);

CREATE TABLE T_Plan_Info
(
	Plan_Id              BIGINT(19) NOT NULL,
	Plan_Code            VARCHAR(25) NULL,
	Plan_Name            VARCHAR(500) NULL,
	Plan_Type            VARCHAR(3) NULL,
	Plan_Res_Per         BIGINT(19) NULL,
	Inter_Recommend_Award DECIMAL(18,2) NULL,
	Std_Ind              VARCHAR(3) NULL,
	Independent_BP_Ind   VARCHAR(3) NULL,
	Sync_Tm              DATETIME NULL,
	Sync_Type            VARCHAR(3) NULL,
	Sync_User_Id         BIGINT(19) NULL
);

ALTER TABLE T_Plan_Info
ADD PRIMARY KEY (Plan_Id);

CREATE TABLE T_Plan_Team_Info
(
	Plan_Id              BIGINT(19) NOT NULL,
	Team_Id              BIGINT(19) NOT NULL,
	Team_Name            VARCHAR(500) NULL,
	Shared_Ratio         DECIMAL(18,2) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Plan_Team_Info
ADD PRIMARY KEY (Plan_Id,Team_Id);

CREATE TABLE T_Plan_Team_Support_Member_Info
(
	Plan_Id              BIGINT(19) NOT NULL,
	Team_Id              BIGINT(19) NOT NULL,
	Employee_Id          BIGINT(19) NOT NULL,
	Name                 CHAR(18) NULL,
	Ache_Pct             DECIMAL(18,2) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL
);

ALTER TABLE T_Plan_Team_Support_Member_Info
ADD PRIMARY KEY (Plan_Id,Team_Id,Employee_Id);

CREATE TABLE T_Sale_Team_Info
(
	Team_Id              BIGINT(19) NOT NULL,
	Team_Name            VARCHAR(200) NULL,
	Team_Lvl             VARCHAR(3) NULL,
	Super_Team_Id        BIGINT(19) NULL,
	Team_Res_Per_Id      BIGINT(19) NULL,
	Team_Desc            VARCHAR(500) NULL,
	Per_Order_Team_Shared_Ratio DECIMAL(18,2) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL,
	Valid_Ind            VARCHAR(3) NULL
);

ALTER TABLE T_Sale_Team_Info
ADD PRIMARY KEY (Team_Id);

CREATE TABLE T_Sale_Team_Member_Info
(
	Team_Id              BIGINT(19) NOT NULL,
	Employee_Id          BIGINT(19) NOT NULL,
	Name                 VARCHAR(50) NULL,
	Contact_Tel          VARCHAR(20) NULL,
	Create_User_Id       BIGINT(19) NULL,
	Create_Tm            DATETIME NULL,
	Update_User_Id       BIGINT(19) NULL,
	Update_Tm            DATETIME NULL,
	Valid_Ind            VARCHAR(3) NULL
);

ALTER TABLE T_Sale_Team_Member_Info
ADD PRIMARY KEY (Team_Id,Employee_Id);

CREATE TABLE T信美_Employee_Info
(
	Employee_Id          BIGINT(19) NOT NULL,
	Employee_Name        VARCHAR(100) NULL,
	Valid_Ind            VARCHAR(3) NULL,
	On_Board_Tm          DATETIME NULL
);

ALTER TABLE T信美_Employee_Info
ADD PRIMARY KEY (Employee_Id);

alter TABLE T_Ache_Blng_Dtl_Tbl COMMENT = '业绩归属明细表' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Cvrg_Code Cvrg_Code VARCHAR(25) NOT NULL COMMENT '险种编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Policy_Type Policy_Type CHAR(18) NULL COMMENT '保单类型';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Plan_Code Plan_Code BIGINT(19) NULL COMMENT '计划编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Plan_Name Plan_Name VARCHAR(500) NULL COMMENT '计划名称';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Order_Code Order_Code VARCHAR(25) NULL COMMENT '订单编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Policy_Code Policy_Code VARCHAR(20) NULL COMMENT '保单编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Total_Policy_Code Total_Policy_Code VARCHAR(20) NULL COMMENT '总保单编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Std_Premium Std_Premium DECIMAL(18,2) NULL COMMENT '标准保费';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Ache_Src_Fst_Lbl Ache_Src_Fst_Lbl VARCHAR(3) NULL COMMENT '业绩来源一级标签';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Biz_Src_Sec_Lbl Biz_Src_Sec_Lbl VARCHAR(3) NULL COMMENT '业务来源二级标签';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Stl_Status Stl_Status VARCHAR(3) NULL COMMENT '结算状态';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Pre_Stl_User_Code Pre_Stl_User_Code BIGINT(19) NULL COMMENT '预结算用户编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Pre_Stl_Init_Tm Pre_Stl_Init_Tm DATETIME NULL COMMENT '预结算发起时间';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Cfm_User_Code Cfm_User_Code BIGINT(19) NULL COMMENT '确认用户编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Cfm_Tm Cfm_Tm DATETIME NULL COMMENT '确认时间';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Stl_User_Code Stl_User_Code BIGINT(19) NULL COMMENT '结算用户编码';
      ALTER TABLE T_Ache_Blng_Dtl_Tbl CHANGE COLUMN Stl_Tm Stl_Tm DATETIME NULL COMMENT '结算时间';
      
alter TABLE T_Ache_Blng_Extra_BP_Tbl COMMENT = '业绩归属外部BP表' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Cvrg_Code Cvrg_Code VARCHAR(20) NOT NULL COMMENT '险种编码';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN IBS_User_Id IBS_User_Id BIGINT(19) NOT NULL COMMENT '电商用户编号';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Ache_Type Ache_Type VARCHAR(3) NOT NULL COMMENT '业绩类型';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Name Name VARCHAR(100) NULL COMMENT '姓名';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Mobile Mobile VARCHAR(20) NULL COMMENT '手机号';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Extra_BP_Type Extra_BP_Type VARCHAR(10) NULL COMMENT '外部BP类型';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Extra_BP_Lvl Extra_BP_Lvl VARCHAR(10) NULL COMMENT '外部BP等级';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Award_Shared_Ratio Award_Shared_Ratio DECIMAL(18,2) NULL COMMENT '奖励分成比例';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Award_Pts Award_Pts DECIMAL(18,2) NULL COMMENT '奖励积分';
      ALTER TABLE T_Ache_Blng_Extra_BP_Tbl CHANGE COLUMN Consult_Fee Consult_Fee DECIMAL(18,2) NULL COMMENT '咨询费';
      
alter TABLE T_Ache_Blng_Team_Member_Tbl COMMENT = '业绩归属团队成员表' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Ache_Blng_Team_Member_Tbl CHANGE COLUMN Cvrg_Code Cvrg_Code VARCHAR(20) NOT NULL COMMENT '险种编码';
      ALTER TABLE T_Ache_Blng_Team_Member_Tbl CHANGE COLUMN Ache_Blng_Employee_Id Ache_Blng_Employee_Id BIGINT(19) NOT NULL COMMENT '业绩归属员工编号';
      ALTER TABLE T_Ache_Blng_Team_Member_Tbl CHANGE COLUMN Ache_Blng_Employee_Name Ache_Blng_Employee_Name VARCHAR(50) NULL COMMENT '业绩归属员工姓名';
      ALTER TABLE T_Ache_Blng_Team_Member_Tbl CHANGE COLUMN Employee_Shared_Ratio Employee_Shared_Ratio DECIMAL(18,2) NULL COMMENT '员工分成比例';
      ALTER TABLE T_Ache_Blng_Team_Member_Tbl CHANGE COLUMN Ache_Award Ache_Award DECIMAL(18,2) NULL COMMENT '业绩奖励';
      
alter TABLE T_Ache_Blng_Team_Tbl COMMENT = '业绩归属团队表' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Ache_Blng_Team_Tbl CHANGE COLUMN Cvrg_Code Cvrg_Code VARCHAR(20) NOT NULL COMMENT '险种编码';
      ALTER TABLE T_Ache_Blng_Team_Tbl CHANGE COLUMN Ache_Blng_Team_Id Ache_Blng_Team_Id BIGINT(19) NOT NULL COMMENT '业绩归属团队编号';
      ALTER TABLE T_Ache_Blng_Team_Tbl CHANGE COLUMN Ache_Blng_Team_Name Ache_Blng_Team_Name VARCHAR(200) NULL COMMENT '业绩归属团队名称';
      ALTER TABLE T_Ache_Blng_Team_Tbl CHANGE COLUMN Team_Shared_Ratio Team_Shared_Ratio DECIMAL(18,2) NULL COMMENT '团队分成比例';
      ALTER TABLE T_Ache_Blng_Team_Tbl CHANGE COLUMN Ache_Award Ache_Award DECIMAL(18,2) NULL COMMENT '业绩奖励';
      
alter TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info COMMENT = '外部BP等级与奖励比例信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Lvl_Code Lvl_Code VARCHAR(10) NOT NULL COMMENT '等级编码';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Lvl_Name Lvl_Name VARCHAR(50) NULL COMMENT '等级名称';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Std_Premium_Min Std_Premium_Min DECIMAL(18,2) NULL COMMENT '标准保费下限';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Std_Premium_Max Std_Premium_Max DECIMAL(18,2) NULL COMMENT '标准保费上限';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Blng_Member_Type_Code Blng_Member_Type_Code VARCHAR(10) NULL COMMENT '所属会员类型编码';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Shared_Ratio Shared_Ratio DECIMAL(18,2) NULL COMMENT '分成比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Lvl_Valid_Period Lvl_Valid_Period INT NULL COMMENT '级别有效期';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Perm_Valid_Ind Perm_Valid_Ind VARCHAR(3) NULL COMMENT '永久有效标志';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Memo Memo VARCHAR(500) NULL COMMENT '备注';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      ALTER TABLE T_Extra_BP_Lvl_And_Award_Ratio_Info CHANGE COLUMN Del_Ind Del_Ind VARCHAR(3) NULL COMMENT '删除标志';
      
alter TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info COMMENT = '外部BP级别与个单分成变更历史信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Log_Id Log_Id BIGINT(19) NOT NULL COMMENT '日志编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN IBS_User_Id IBS_User_Id VARCHAR(25) NULL COMMENT '电商用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Contact_Mobile Contact_Mobile VARCHAR(20) NULL COMMENT '联系手机';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Name Name VARCHAR(50) NULL COMMENT '姓名';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Ecif_Cust_Id Ecif_Cust_Id BIGINT(19) NULL COMMENT 'ECIF客户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Extra_BP_Type Extra_BP_Type VARCHAR(3) NULL COMMENT '外部BP类型';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Extra_BP_Lvl Extra_BP_Lvl VARCHAR(3) NULL COMMENT '外部BP等级';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Shared_Ratio Shared_Ratio DECIMAL(18,2) NULL COMMENT '分成比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Lvl_Chg_Dt Lvl_Chg_Dt DATETIME NULL COMMENT '等级变更日期';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Lvl_Valid_Close_Dt Lvl_Valid_Close_Dt DATETIME NULL COMMENT '等级有效截止日期';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Ache_Blng_Employee_Id Ache_Blng_Employee_Id BIGINT(19) NULL COMMENT '业绩归属员工编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Employee_Ache_Ratio Employee_Ache_Ratio DECIMAL(18,2) NULL COMMENT '员工业绩比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Ache_Blng_Team_Id Ache_Blng_Team_Id BIGINT(19) NULL COMMENT '业绩归属团队编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Team_Ache_Ratio Team_Ache_Ratio DECIMAL(18,2) NULL COMMENT '团队业绩比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Ache_Blng_Adj_User_Id Ache_Blng_Adj_User_Id BIGINT(19) NULL COMMENT '业绩归属调整用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Ache_Blng_Adj_Tm Ache_Blng_Adj_Tm DATETIME NULL COMMENT '业绩归属调整时间';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN Start_Tm Start_Tm DATETIME NULL COMMENT '开始时间';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Chg_His_Info CHANGE COLUMN End_Tm End_Tm DATETIME NULL COMMENT '结束时间';
      
alter TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info COMMENT = '外部BP级别与个单分成信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN IBS_User_Id IBS_User_Id VARCHAR(25) NOT NULL COMMENT '电商用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Contact_Mobile Contact_Mobile VARCHAR(20) NULL COMMENT '联系手机';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Name Name VARCHAR(50) NULL COMMENT '姓名';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Ecif_Cust_Id Ecif_Cust_Id BIGINT(19) NULL COMMENT 'ECIF客户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Extra_BP_Type Extra_BP_Type VARCHAR(3) NULL COMMENT '外部BP类型';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Extra_BP_Lvl Extra_BP_Lvl VARCHAR(3) NULL COMMENT '外部BP等级';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Shared_Ratio Shared_Ratio DECIMAL(18,2) NULL COMMENT '分成比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Lvl_Chg_Dt Lvl_Chg_Dt DATETIME NULL COMMENT '等级变更日期';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Lvl_Valid_Close_Dt Lvl_Valid_Close_Dt DATETIME NULL COMMENT '等级有效截止日期';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Ache_Blng_Employee_Id Ache_Blng_Employee_Id BIGINT(19) NULL COMMENT '业绩归属员工编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Employee_Ache_Ratio Employee_Ache_Ratio DECIMAL(18,2) NULL COMMENT '员工业绩比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Ache_Blng_Team_Id Ache_Blng_Team_Id BIGINT(19) NULL COMMENT '业绩归属团队编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Team_Ache_Ratio Team_Ache_Ratio DECIMAL(18,2) NULL COMMENT '团队业绩比例';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Ache_Blng_Adj_User_Id Ache_Blng_Adj_User_Id BIGINT(19) NULL COMMENT '业绩归属调整用户编号';
      ALTER TABLE T_Extra_BP_Lvl_And_Per_Order_Shared_Info CHANGE COLUMN Ache_Blng_Adj_Tm Ache_Blng_Adj_Tm DATETIME NULL COMMENT '业绩归属调整时间';
      
alter TABLE T_Extra_BP_Sign_Info COMMENT = '外部BP签约信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Extra_BP_Id Extra_BP_Id BIGINT(19) NOT NULL COMMENT '外部BP编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Ecif_Cust_Id Ecif_Cust_Id BIGINT(19) NULL COMMENT 'ECIF客户编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN IBS_User_Id IBS_User_Id BIGINT(19) NULL COMMENT '电商用户编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Member_Id Member_Id VARCHAR(20) NULL COMMENT '会员编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Cust_Name Cust_Name VARCHAR(100) NULL COMMENT '客户姓名';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Gender Gender VARCHAR(3) NULL COMMENT '性别';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Age Age INT NULL COMMENT '年龄';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Iden_Type Iden_Type VARCHAR(3) NULL COMMENT '证件类型';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Iden_Code Iden_Code VARCHAR(20) NULL COMMENT '证件编码';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Birthday Birthday DATETIME NULL COMMENT '出生日期';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Contact_Mobile Contact_Mobile VARCHAR(20) NULL COMMENT '联系手机';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Contact_Mailbox Contact_Mailbox VARCHAR(50) NULL COMMENT '联系邮箱';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Province Province VARCHAR(3) NULL COMMENT '省';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN City City VARCHAR(3) NULL COMMENT '市';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN County County VARCHAR(3) NULL COMMENT '县';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Graduate_School Graduate_School VARCHAR(100) NULL COMMENT '毕业学校';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Highest_Edu_Degree Highest_Edu_Degree VARCHAR(3) NULL COMMENT '最高学历';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Specialty Specialty VARCHAR(50) NULL COMMENT '专业';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Enterprise Enterprise VARCHAR(100) NULL COMMENT '工作单位';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Dept Dept VARCHAR(100) NULL COMMENT '部门';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Duty Duty VARCHAR(100) NULL COMMENT '职务';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Extra_BP_Type Extra_BP_Type VARCHAR(3) NULL COMMENT '外部BP类型';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Sign_Status Sign_Status TEXT NULL COMMENT '签约状态';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Sign_St_Dt Sign_St_Dt DATETIME NULL COMMENT '签约开始日期';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Valid_St_Dt Valid_St_Dt DATETIME NULL COMMENT '有效开始日期';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Valid_End_Dt Valid_End_Dt DATETIME NULL COMMENT '有效结束日期';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Blng_Org Blng_Org VARCHAR(100) NULL COMMENT '所属机构';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Open_Bank Open_Bank VARCHAR(100) NULL COMMENT '开户行';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Open_Subbranch Open_Subbranch VARCHAR(100) NULL COMMENT '开户支行';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Open_Acct_Num Open_Acct_Num VARCHAR(50) NULL COMMENT '开户账号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Recommend_Shared_Mode Recommend_Shared_Mode VARCHAR(3) NULL COMMENT '推荐分成方式';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Recommend_Shared_Ratio Recommend_Shared_Ratio DECIMAL(18,2) NULL COMMENT '推荐分成比例';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Cooper_Meth Cooper_Meth VARCHAR(3) NULL COMMENT '合作方式';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Ache_Blng_Employee_Id Ache_Blng_Employee_Id VARCHAR(50) NULL COMMENT '业绩归属员工编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Employee_Ache_Ratio Employee_Ache_Ratio DECIMAL(18,2) NULL COMMENT '员工业绩比例';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Ache_Blng_Team_Id Ache_Blng_Team_Id VARCHAR(50) NULL COMMENT '业绩归属团队编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Team_Ache_Ratio Team_Ache_Ratio DECIMAL(18,2) NULL COMMENT '团队业绩比例';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Member_Rank Member_Rank VARCHAR(3) NULL COMMENT '会员层级';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Super_Recmmdr Super_Recmmdr VARCHAR(50) NULL COMMENT '上级推荐人';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Create_User_Id Create_User_Id DATETIME NULL COMMENT '创建用户编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Extra_BP_Sign_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Extra_BP_Sign_Mtral_Info COMMENT = '外部BP签约资料信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Mtral_Id Mtral_Id DATETIME NOT NULL COMMENT '资料编号';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Extra_BP_Id Extra_BP_Id BIGINT(19) NULL COMMENT '外部BP编号';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Extra_BP_Type Extra_BP_Type VARCHAR(3) NULL COMMENT '外部BP类型';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Mtral_Type Mtral_Type VARCHAR(3) NULL COMMENT '资料类型';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Mtral_Seq Mtral_Seq INT NULL COMMENT '资料顺序';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Res_From_Apname Res_From_Apname VARCHAR(50) NULL COMMENT '资源应用名';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Res_Type Res_Type VARCHAR(50) NULL COMMENT '资源类型';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Res_Name Res_Name VARCHAR(50) NULL COMMENT '资源文件名';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN File_Name File_Name VARCHAR(50) NULL COMMENT '文件名称';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Extra_BP_Sign_Mtral_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Extra_BP_Type_Info COMMENT = '外部BP类型信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Type_Code Type_Code VARCHAR(10) NOT NULL COMMENT '类型编码';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Type_Name Type_Name VARCHAR(50) NULL COMMENT '类型名称';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Perm_Valid_Ind Perm_Valid_Ind VARCHAR(3) NULL COMMENT '永久有效标志';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Qualify_Valid_Period Qualify_Valid_Period INT NULL COMMENT '资格有效期';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Memo Memo VARCHAR(500) NULL COMMENT '备注';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      ALTER TABLE T_Extra_BP_Type_Info CHANGE COLUMN Del_Ind Del_Ind VARCHAR(3) NULL COMMENT '删除标志';
      
alter TABLE T_Month_Ache_Stl_Info COMMENT = '月度业绩结算信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Month Month VARCHAR(10) NOT NULL COMMENT '月度';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Stl_Status Stl_Status VARCHAR(3) NULL COMMENT '结算状态';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Pre_Stl_User_Code Pre_Stl_User_Code CHAR(18) NULL COMMENT '预结算用户编码';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Pre_Stl_Tm Pre_Stl_Tm DATETIME NULL COMMENT '预结算时间';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Cfm_Tm Cfm_Tm DATETIME NULL COMMENT '确认时间';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Stl_User_Code Stl_User_Code BIGINT(19) NULL COMMENT '结算用户编码';
      ALTER TABLE T_Month_Ache_Stl_Info CHANGE COLUMN Stl_Tm Stl_Tm DATETIME NULL COMMENT '结算时间';
      
alter TABLE T_Org_BP_Info COMMENT = '机构BP信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Org_BP_Info CHANGE COLUMN Org_BP_Id Org_BP_Id BIGINT(19) NOT NULL COMMENT '机构BP编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Org_Name Org_Name VARCHAR(200) NULL COMMENT '机构名称';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Org_Lvl Org_Lvl VARCHAR(3) NULL COMMENT '机构级别';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Super_Org_Id Super_Org_Id BIGINT(19) NULL COMMENT '上级机构编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Res_Per_Member_Id Res_Per_Member_Id VARCHAR(20) NULL COMMENT '负责人会员编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Res_Per_Ecif_Id Res_Per_Ecif_Id CHAR(18) NULL COMMENT '负责人ECIF编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Res_Per_IBS_User_Id Res_Per_IBS_User_Id BIGINT(19) NULL COMMENT '负责人电商用户编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Res_Per_Name Res_Per_Name VARCHAR(100) NULL COMMENT '负责人姓名';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Res_Per_Tel Res_Per_Tel VARCHAR(20) NULL COMMENT '负责人电话';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Corp_Addr Corp_Addr VARCHAR(200) NULL COMMENT '公司地址';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Ache_Shared_Ratio Ache_Shared_Ratio DECIMAL(18,2) NULL COMMENT '业绩分成比例';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Org_BP_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Org_BP_Member_Info COMMENT = '机构BP成员信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Member_Id Member_Id DATETIME NOT NULL COMMENT '成员编号';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Org_BP_Id Org_BP_Id BIGINT(19) NULL COMMENT '机构BP编号';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN IBS_User_Id IBS_User_Id BIGINT(19) NULL COMMENT '电商用户编号';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Member_Code Member_Code VARCHAR(20) NULL COMMENT '会员编码';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Name Name VARCHAR(100) NULL COMMENT '姓名';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Tel Tel VARCHAR(20) NULL COMMENT '电话';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Iden_Type Iden_Type VARCHAR(3) NULL COMMENT '证件类型';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Iden_Code Iden_Code VARCHAR(20) NULL COMMENT '证件编码';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Mailbox Mailbox VARCHAR(100) NULL COMMENT '邮箱';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Province Province VARCHAR(3) NULL COMMENT '省';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN City City VARCHAR(3) NULL COMMENT '市';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN County County VARCHAR(3) NULL COMMENT '县';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Dtl_Addr Dtl_Addr VARCHAR(200) NULL COMMENT '详细地址';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Res_Per_Flag Res_Per_Flag VARCHAR(3) NULL COMMENT '负责人标识';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Org_BP_Member_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Per_Order_Ache_Blng_Chg_His COMMENT = '个单业绩归属变更历史' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Seq_Num Seq_Num CHAR(18) NOT NULL COMMENT '流水号';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Cvrg_Code Cvrg_Code BIGINT(19) NULL COMMENT '险种编码';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Order_Code Order_Code VARCHAR(25) NULL COMMENT '订单编码';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Policy_Code Policy_Code VARCHAR(25) NULL COMMENT '保单编码';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Total_Policy_Code Total_Policy_Code VARCHAR(20) NULL COMMENT '总保单编码';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Std_Premium Std_Premium DECIMAL(18,2) NULL COMMENT '标准保费';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Recmmdr_Id Recmmdr_Id BIGINT(19) NULL COMMENT '推荐人编号';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Recmmdr_Name Recmmdr_Name VARCHAR(100) NULL COMMENT '推荐人姓名';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Recmmdr_Shared_Ratio Recmmdr_Shared_Ratio DECIMAL(18,2) NULL COMMENT '推荐人分成比例';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Ache_Blng_Employee_Id Ache_Blng_Employee_Id BIGINT(19) NULL COMMENT '业绩归属员工编号';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Ache_Blng_Employee_Name Ache_Blng_Employee_Name VARCHAR(50) NULL COMMENT '业绩归属员工姓名';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Employee_Shared_Ratio Employee_Shared_Ratio DECIMAL(18,2) NULL COMMENT '员工分成比例';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Ache_Blng_Team_Id Ache_Blng_Team_Id BIGINT(19) NULL COMMENT '业绩归属团队编号';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Ache_Blng_Team_Name Ache_Blng_Team_Name VARCHAR(200) NULL COMMENT '业绩归属团队名称';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Team_Shared_Ratio Team_Shared_Ratio DECIMAL(18,2) NULL COMMENT '团队分成比例';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Ache_Src_Fst_Lbl Ache_Src_Fst_Lbl VARCHAR(3) NULL COMMENT '业绩来源一级标签';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Biz_Src_Sec_Lbl Biz_Src_Sec_Lbl VARCHAR(3) NULL COMMENT '业务来源二级标签';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Stl_Status Stl_Status VARCHAR(3) NULL COMMENT '结算状态';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      ALTER TABLE T_Per_Order_Ache_Blng_Chg_His CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      
alter TABLE T_Per_Order_Team_Ache_Blng_Info COMMENT = '个单团队业绩归属信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN IBS_User_Id IBS_User_Id BIGINT(19) NOT NULL COMMENT '电商用户编号';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Lbl_Type Lbl_Type VARCHAR(3) NULL COMMENT '标签类型';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Team_Id Team_Id BIGINT(19) NULL COMMENT '团队编号';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Per_Order_Team_Ache_Blng_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Plan_Extra_BP_Personnel_Info COMMENT = '计划外部BP人员信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Plan_Id Plan_Id BIGINT(19) NOT NULL COMMENT '计划编号';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Extra_BP_Id Extra_BP_Id BIGINT(19) NOT NULL COMMENT '外部BP编号';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Shared_Ratio Shared_Ratio DECIMAL(18,2) NULL COMMENT '分成比例';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Name Name VARCHAR(50) NULL COMMENT '姓名';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Mobile Mobile VARCHAR(20) NULL COMMENT '手机号';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Plan_Extra_BP_Personnel_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Plan_Info COMMENT = '计划信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Plan_Info CHANGE COLUMN Plan_Id Plan_Id BIGINT(19) NOT NULL COMMENT '计划编号';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Plan_Code Plan_Code VARCHAR(25) NULL COMMENT '计划编码';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Plan_Name Plan_Name VARCHAR(500) NULL COMMENT '计划名称';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Plan_Type Plan_Type VARCHAR(3) NULL COMMENT '计划类型';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Plan_Res_Per Plan_Res_Per BIGINT(19) NULL COMMENT '计划负责人';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Inter_Recommend_Award Inter_Recommend_Award DECIMAL(18,2) NULL COMMENT '内部推荐奖励';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Std_Ind Std_Ind VARCHAR(3) NULL COMMENT '标准标志';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Independent_BP_Ind Independent_BP_Ind VARCHAR(3) NULL COMMENT '独立BP标志';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Sync_Tm Sync_Tm DATETIME NULL COMMENT '同步时间';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Sync_Type Sync_Type VARCHAR(3) NULL COMMENT '同步类型';
      ALTER TABLE T_Plan_Info CHANGE COLUMN Sync_User_Id Sync_User_Id BIGINT(19) NULL COMMENT '同步用户编号';
      
alter TABLE T_Plan_Team_Info COMMENT = '计划团队信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Plan_Id Plan_Id BIGINT(19) NOT NULL COMMENT '计划编号';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Team_Id Team_Id BIGINT(19) NOT NULL COMMENT '团队编号';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Team_Name Team_Name VARCHAR(500) NULL COMMENT '团队名称';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Shared_Ratio Shared_Ratio DECIMAL(18,2) NULL COMMENT '分成比例';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Plan_Team_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Plan_Team_Support_Member_Info COMMENT = '计划团队支持成员信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Plan_Id Plan_Id BIGINT(19) NOT NULL COMMENT '计划编号';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Team_Id Team_Id BIGINT(19) NOT NULL COMMENT '团队编号';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Employee_Id Employee_Id BIGINT(19) NOT NULL COMMENT '员工编号';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Name Name CHAR(18) NULL COMMENT '姓名';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Ache_Pct Ache_Pct DECIMAL(18,2) NULL COMMENT '业绩占比';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Plan_Team_Support_Member_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      
alter TABLE T_Sale_Team_Info COMMENT = '销售团队信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Team_Id Team_Id BIGINT(19) NOT NULL COMMENT '团队编号';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Team_Name Team_Name VARCHAR(200) NULL COMMENT '团队名称';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Team_Lvl Team_Lvl VARCHAR(3) NULL COMMENT '团队层级';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Super_Team_Id Super_Team_Id BIGINT(19) NULL COMMENT '上级团队编号';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Team_Res_Per_Id Team_Res_Per_Id BIGINT(19) NULL COMMENT '团队负责人编号';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Team_Desc Team_Desc VARCHAR(500) NULL COMMENT '团队描述';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Per_Order_Team_Shared_Ratio Per_Order_Team_Shared_Ratio DECIMAL(18,2) NULL COMMENT '个单团队分成比例';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      ALTER TABLE T_Sale_Team_Info CHANGE COLUMN Valid_Ind Valid_Ind VARCHAR(3) NULL COMMENT '有效标志';
      
alter TABLE T_Sale_Team_Member_Info COMMENT = '销售团队成员信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Team_Id Team_Id BIGINT(19) NOT NULL COMMENT '团队编号';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Employee_Id Employee_Id BIGINT(19) NOT NULL COMMENT '员工编号';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Name Name VARCHAR(50) NULL COMMENT '姓名';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Contact_Tel Contact_Tel VARCHAR(20) NULL COMMENT '联系电话';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Create_User_Id Create_User_Id BIGINT(19) NULL COMMENT '创建用户编号';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Create_Tm Create_Tm DATETIME NULL COMMENT '创建时间';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Update_User_Id Update_User_Id BIGINT(19) NULL COMMENT '修改用户编号';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Update_Tm Update_Tm DATETIME NULL COMMENT '修改时间';
      ALTER TABLE T_Sale_Team_Member_Info CHANGE COLUMN Valid_Ind Valid_Ind VARCHAR(3) NULL COMMENT '有效标志';
      
alter TABLE T信美_Employee_Info COMMENT = '信美员工信息' ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
    ALTER TABLE T信美_Employee_Info CHANGE COLUMN Employee_Id Employee_Id BIGINT(19) NOT NULL COMMENT '员工编号';
      ALTER TABLE T信美_Employee_Info CHANGE COLUMN Employee_Name Employee_Name VARCHAR(100) NULL COMMENT '员工姓名';
      ALTER TABLE T信美_Employee_Info CHANGE COLUMN Valid_Ind Valid_Ind VARCHAR(3) NULL COMMENT '有效标志';
      ALTER TABLE T信美_Employee_Info CHANGE COLUMN On_Board_Tm On_Board_Tm DATETIME NULL COMMENT '入职时间';
      

