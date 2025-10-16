drop table LCPOL;
create table LCPOL(
    -- 险种信息
	CONTNO VARCHAR(20) not null COMMENT '保单号',
	CVALIDATE DATE not null COMMENT '生效日',
	POLNO VARCHAR(20) not null COMMENT '险种号码',
	MAINPOLNO VARCHAR(20) not null COMMENT '主险号',
	RISKCODE VARCHAR(20) not null COMMENT '险种编码',
	
	AMNT DECIMAL(16,2) not null COMMENT '险种保额',
	PREM DECIMAL(16,2) not null COMMENT '险种每期保费',
	
	PAYINTV INTEGER not null COMMENT '交费方式',
	PAYTODATE DATE COMMENT '交至日期',
	PAYENDYEAR INTEGER not null COMMENT '交费期间',
	PAYENDYEARFLAG VARCHAR(8) not null COMMENT '交费期间单位',
	PAYENDDATE DATE not null COMMENT '交费终止日',
	
	INSUREYEAR INTEGER not null COMMENT '保障期间',
	INSUREYEARFLAG VARCHAR(8) not null COMMENT '保障期间单位',
	
	LIVEGETMODE VARCHAR(8) COMMENT '生存金处理方式',
	
	-- 客户信息-投保人信息
    appntno VARCHAR(20) NOT NULL COMMENT '投保人客户号',
    
	-- 客户信息-主被保人信息
    insuredno VARCHAR(20) NOT NULL COMMENT '主被保险人客户号',
    insuredage integer not null COMMENT '主被保人承保年龄',
    
	OPERATOR varchar(20) not null COMMENT '操作人',
    MAKEDATE DATE NOT NULL COMMENT '入机日期',
    MAKETIME VARCHAR(10) NOT NULL COMMENT '入机时间',
    MODIFYDATE DATE NOT NULL COMMENT '最后一次修改日期',
    MODIFYTIME VARCHAR(10) NOT NULL COMMENT '最后一次修改时间',
    
    -- 显式地指定主键约束
    PRIMARY KEY (CONTNO,POLNO)
)
-- 备注
COMMENT = '保单险种表';