DROP TABLE LCCONT;
CREATE TABLE LCCONT (
    contno VARCHAR(20) NOT NULL COMMENT '保险合同号',
	CVALIDATE DATE not null COMMENT '生效日',
	
    amnt DECIMAL(16, 2) NOT NULL COMMENT '保额',
    prem DECIMAL(16, 2) NOT NULL COMMENT '每期保费', 
    
	PAYINTV INTEGER not null COMMENT '交费方式',
	PAYTODATE DATE COMMENT '交至日期',
	PAYENDDATE DATE not NULL COMMENT '交费终止日',
	
	-- 客户信息
    appntno VARCHAR(20) NOT NULL COMMENT '投保人客户号',
    insuredno VARCHAR(20) NOT NULL COMMENT '主被保险人客户号',
    
    OPERATOR varchar(20) not null COMMENT '操作人',
    MAKEDATE DATE NOT NULL COMMENT '入机日期',
    MAKETIME VARCHAR(10) NOT NULL COMMENT '入机时间',
    MODIFYDATE DATE NOT NULL COMMENT '最后一次修改日期',
    MODIFYTIME VARCHAR(10) NOT NULL COMMENT '最后一次修改时间',
    
    -- 显式地指定主键约束
    PRIMARY KEY (contno)
    
) 
-- 为整个表添加注释
COMMENT = '保单主表，存储保险合同的核心信息';