CREATE TABLE "customer" (
"id" VARCHAR(32) NOT NULL /* 用户ID */,
"login_id" VARCHAR(64) NOT NULL /* 登录名 */,
"password" VARCHAR(20) NOT NULL DEFAULT 'NULL' /* 登录密码 */,
"telephone" VARCHAR(20) NOT NULL /* 电话号码 */,
"nickname" VARCHAR(32) NOT NULL /* 别名 */,
"sex" CHAR(1) /* 性别 */,
"account_id" VARCHAR(32) NOT NULL /* 账户ID */,
PRIMARY KEY ("id")
);
COMMENT ON TABLE "customer" IS '用户表';
COMMENT ON COLUMN "customer"."id" IS '用户ID';
COMMENT ON COLUMN "customer"."login_id" IS '登录名';
COMMENT ON COLUMN "customer"."password" IS '登录密码';
COMMENT ON COLUMN "customer"."telephone" IS '电话号码';
COMMENT ON COLUMN "customer"."nickname" IS '别名';
COMMENT ON COLUMN "customer"."sex" IS '性别';
COMMENT ON COLUMN "customer"."account_id" IS '账户ID';

CREATE TABLE "customer_address" (
"id"  SERIAL NOT NULL /* 地址编号 */,
"customer_id" VARCHAR(32) NOT NULL /* 客户ID */,
"field1" VARCHAR(2) NOT NULL /* 省份 */,
"field2" VARCHAR(2) NOT NULL /* 市 */,
PRIMARY KEY ("id")
);
COMMENT ON TABLE "customer_address" IS '客户地址表';
COMMENT ON COLUMN "customer_address"."id" IS '地址编号';
COMMENT ON COLUMN "customer_address"."customer_id" IS '客户ID';
COMMENT ON COLUMN "customer_address"."field1" IS '省份';
COMMENT ON COLUMN "customer_address"."field2" IS '市';

CREATE TABLE "account" (
"id" VARCHAR(32) NOT NULL /* 账户ID */,
PRIMARY KEY ("id")
);
COMMENT ON TABLE "account" IS '账户信息表';
COMMENT ON COLUMN "account"."id" IS '账户ID';

CREATE TABLE "order" (
"id"  SERIAL ,
PRIMARY KEY ("id")
);
COMMENT ON TABLE "order" IS '订单表';

CREATE TABLE "SPU" (
"id"  SERIAL ,
PRIMARY KEY ("id")
);

CREATE TABLE "SPU" (
"id"  SERIAL ,
PRIMARY KEY ("id")
);

ALTER TABLE "customer" ADD FOREIGN KEY ("account_id") REFERENCES "account" ("id");
ALTER TABLE "customer_address" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");
