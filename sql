<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/?keyword=default -->
<sql>
<datatypes db="postgresql">
	<group color="rgb(238,238,170)" label="Numeric">
		<type label="Integer" quote="" sql="INTEGER" length="0" re="INT"/>
		<type label="Small Integer" quote="" sql="SMALLINT" length="0"/>
		<type label="Big Integer" quote="" sql="BIGINT" length="0"/>
		<type label="Decimal" quote="" sql="DECIMAL" length="1" re="numeric"/>
		<type label="Serial" quote="" sql="SERIAL" length="0" re="SERIAL4" fk="Integer"/>
		<type label="Big Serial" quote="" sql="BIGSERIAL" length="0" re="SERIAL8" fk="Big Integer"/>
		<type label="Real" quote="" sql="BIGINT" length="0"/>
		<type label="Single precision" quote="" sql="FLOAT" length="0"/>
		<type label="Double precision" quote="" sql="DOUBLE" length="0" re="DOUBLE"/>
	</group>

	<group color="rgb(255,200,200)" label="Character">
		<type label="Char" quote="'" sql="CHAR" length="1"/>
		<type label="Varchar" quote="'" sql="VARCHAR" length="1" re="CHARACTER VARYING"/>
		<type label="Text" quote="'" sql="TEXT" length="0"/>
		<type label="Binary" quote="'" sql="BYTEA" length="1"/>
		<type label="Boolean" quote="'" sql="BOOLEAN" length="0"/>
	</group>

	<group color="rgb(200,255,200)" label="Date &amp; Time">
		<type label="Date" quote="'" sql="DATE" length="0"/>
		<type label="Time" quote="'" sql="TIME" length="1"/>
		<type label="Time w/ TZ" quote="'" sql="TIME WITH TIME ZONE" length="0"/>
		<type label="Interval" quote="'" sql="INTERVAL" length="1"/>
		<type label="Timestamp" quote="'" sql="TIMESTAMP" length="1"/>
		<type label="Timestamp w/ TZ" quote="'" sql="TIMESTAMP WITH TIME ZONE" length="0"/>
		<type label="Timestamp wo/ TZ" quote="'" sql="TIMESTAMP WITHOUT TIME ZONE" length="0"/>
	</group>

	<group color="rgb(200,200,255)" label="Miscellaneous">
		<type label="XML" quote="'" sql="XML" length="1"/>
		<type label="Bit" quote="'" sql="BIT" length="1"/>
		<type label="Bit Varying" quote="'" sql="VARBIT" length="1" re="BIT VARYING"/>
		<type label="Inet Host Addr" quote="'" sql="INET" length="0"/>
		<type label="Inet CIDR Addr" quote="'" sql="CIDR" length="0"/>
		<type label="Geometry" quote="'" sql="GEOMETRY" length="0"/>
	</group>
</datatypes><table x="561" y="94" name="customer">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>客户ID</comment>
</row>
<row name="telephone" null="0" autoincrement="0">
<datatype>VARCHAR(20)</datatype>
<default>'NULL'</default><comment>电话号码</comment>
</row>
<row name="nickname" null="1" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>别名</comment>
</row>
<row name="sex" null="1" autoincrement="0">
<datatype>CHAR(1)</datatype>
<default>NULL</default><comment>性别</comment>
</row>
<row name="account_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="account" row="id" />
<comment>账户ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>客户表</comment>
</table>
<table x="764" y="36" name="customer_address">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>地址编号</comment>
</row>
<row name="customer_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="customer" row="id" />
<comment>客户ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>客户地址表</comment>
</table>
<table x="365" y="31" name="account">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>账户ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>账户表</comment>
</table>
<table x="207" y="121" name="account_history">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>账户历史编号</comment>
</row>
<row name="account_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="account" row="id" />
<comment>账户ID</comment>
</row>
<row name="type" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<comment>账户操作类型</comment>
</row>
<row name="change" null="0" autoincrement="0">
<datatype>DECIMAL</datatype>
<default>0.00</default><comment>变动金额</comment>
</row>
<row name="balance" null="0" autoincrement="0">
<datatype>DECIMAL</datatype>
<comment>余额</comment>
</row>
<row name="order_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<default>'NULL'</default><relation table="order" row="id" />
<comment>订单ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>账户历史表</comment>
</table>
<table x="490" y="352" name="order">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>订单ID</comment>
</row>
<row name="status" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<comment>订单状态</comment>
</row>
<row name="total_price" null="0" autoincrement="0">
<datatype>DECIMAL</datatype>
<comment>订单总额</comment>
</row>
<row name="pay" null="0" autoincrement="0">
<datatype>DECIMAL</datatype>
<comment>付款额度</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>订单表</comment>
</table>
<table x="798" y="491" name="sub_order">
<row name="id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<comment>子订单ID</comment>
</row>
<row name="order_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="order" row="id" />
<comment>主订单ID</comment>
</row>
<row name="product_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="product" row="id" />
<comment>商品ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>子订单</comment>
</table>
<table x="205" y="426" name="order_history">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>订单历史编号</comment>
</row>
<row name="order_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="order" row="id" />
<comment>订单ID</comment>
</row>
<row name="update_time" null="0" autoincrement="0">
<datatype>TIMESTAMP</datatype>
<comment>更新时间</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="243" y="867" name="product_cate">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>商品种类</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>商品种类</comment>
</table>
<table x="496" y="745" name="product">
<row name="id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>商品ID</comment>
</row>
<row name="cate_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="product_cate" row="id" />
<comment>商品种类</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>产品</comment>
</table>
<table x="1089" y="755" name="supplier">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>提供者ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>商品供应商</comment>
</table>
<table x="756" y="725" name="product_supplier_r">
<row name="id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><comment>产品供应商关系ID</comment>
</row>
<row name="product_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<default>'NULL'</default><relation table="product" row="id" />
<comment>产品ID</comment>
</row>
<row name="supplier_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="supplier" row="id" />
<comment>供应商ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>产品供应商关系表</comment>
</table>
<table x="1343" y="151" name="container">
<row name="id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="addr1" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<comment>省份</comment>
</row>
<row name="addr2" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<comment>市</comment>
</row>
<row name="addr3" null="0" autoincrement="0">
<datatype>CHAR(2)</datatype>
<comment>区</comment>
</row>
<row name="addr4" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<default>'NULL'</default><comment>详细地址</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>货柜信息表</comment>
</table>
<table x="1335" y="343" name="container_detail">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="container_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="container" row="id" />
<comment>货柜ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>货柜详细</comment>
</table>
<table x="1288" y="476" name="container_detail_history">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>货道历史ID</comment>
</row>
<row name="container_detail_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="container_detail" row="id" />
<comment>货道ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>货道历史信息</comment>
</table>
<table x="853" y="312" name="order_container_history">
<row name="id" null="0" autoincrement="1">
<datatype>INTEGER</datatype>
<comment>编号ID</comment>
</row>
<row name="order_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="order" row="id" />
<comment>订单ID</comment>
</row>
<row name="sub_order_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="sub_order" row="id" />
<comment>子订单ID</comment>
</row>
<row name="container_detail_history_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="container_detail_history" row="id" />
<comment>货道历史记录表</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>子订单货道记录表</comment>
</table>
<table x="780.1428581159942" y="895.714290579971" name="product_price">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="product_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<relation table="product" row="id" />
<comment>商品ID</comment>
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>商品价格表</comment>
</table>
<table x="188.14285811599422" y="684.714290579971" name="order_price">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>订单优惠表</comment>
</table>
<table x="419.1428581159942" y="569.714290579971" name="order_price_r">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="order" row="id" />
</row>
<row name="order_id" null="0" autoincrement="0">
<datatype>VARCHAR(32)</datatype>
<comment>订单ID</comment>
</row>
<row name="order_price_id" null="0" autoincrement="0">
<datatype>INTEGER</datatype>
<relation table="order_price" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
<comment>订单优惠关系表</comment>
</table>
</sql>
