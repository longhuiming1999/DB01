drop table LDPERSON;
create table LDPERSON(
    -- 险种信息
	CUSTOMERNO VARCHAR(20) not null COMMENT '客户号',
	
    name varchar(100) not null COMMENT '客户姓名',
    lastname varchar(100) COMMENT '姓',
    firstname varchar(100) COMMENT '名',
    
    sex varchar(8) not null COMMENT '性别',
    birthday date COMMENT '出生日期',
    idtype varchar(8) COMMENT '证件类型',
    idno varchar(50) COMMENT '证件号码',
    
    idstartdate date COMMENT '证件有效期起期',
    idexpdate date COMMENT '证件有效期止期',
    
    
	OPERATOR varchar(20) not null COMMENT '操作人',
    MAKEDATE DATE NOT NULL COMMENT '入机日期',
    MAKETIME VARCHAR(10) NOT NULL COMMENT '入机时间',
    MODIFYDATE DATE NOT NULL COMMENT '最后一次修改日期',
    MODIFYTIME VARCHAR(10) NOT NULL COMMENT '最后一次修改时间',
    
    -- 显式地指定主键约束
    PRIMARY KEY (CUSTOMERNO)
)
-- 备注
COMMENT = '客户信息表';