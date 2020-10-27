package com.example.hbase;

import com.google.common.collect.Lists;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.*;
import org.apache.hadoop.hbase.client.*;
import org.apache.hadoop.hbase.util.Bytes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName: HbaseTest
 * @Description
 * @Author: YBCarry
 * @Date2019-03-30 21:10
 * @Version: V1.0
 **/


public class HbaseTest {

    public static Configuration conf;
    static Logger logger = LoggerFactory.getLogger(HbaseTest.class);

    //配置信息
    static {
        logger.debug("begin");
        conf = HBaseConfiguration.create();
        logger.debug(conf.toString());
    }

    /**
     * 1. 判断HBase中表是否存在
     */
    public static boolean isExist(String tableNane) throws IOException {

        //旧版本操作表
        //HBaseAdmin admin = new HBaseAdmin(conf);

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //管理器
        HBaseAdmin admin = (HBaseAdmin) connection.getAdmin();

        return admin.tableExists(TableName.valueOf(tableNane));
    }

    /**
     * 2. 在HBase中创建表
     */
    public static void createTable(String tableName, String... columnFamilly) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 如果对表的操作需要使用管理器
        HBaseAdmin admin = (HBaseAdmin) connection.getAdmin();

        //b. 创建描述器
        HTableDescriptor htd = new HTableDescriptor(TableName.valueOf(tableName));

        //c. 指定多个列族
        for (String cf : columnFamilly) {
            htd.addFamily(new HColumnDescriptor(cf));
        }

        //d. 创建表
        admin.createTable(htd);
        System.out.println("createTable----successful");
    }

    /**
     * 3. 向表中添加数据
     */
    public static void addData(String tableName, String rowkey, String cf, String column, String value) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        //b. 添加数据 put方式
        Put put = new Put(Bytes.toBytes(rowkey));

        //c. 指定添加的列族 列 值
        put.addColumn(Bytes.toBytes(cf), Bytes.toBytes(column), Bytes.toBytes(value));

        //d. 写入表中
        table.put(put);
        System.out.println("addData----successful");
    }

    public static void addBatchData(String tableName, String rowkey, String cf, String column, String value, long count) throws IOException {
        logger.info("addBatchData start");
        long start = new Date().getTime();

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        List<Put> puts = Lists.newArrayList();
        for (long i = 0; i < count; i++) {
            //b. 添加数据 put方式
            Put put = new Put(Bytes.toBytes(rowkey + i));

            //c. 指定添加的列族 列 值
            put.addColumn(Bytes.toBytes(cf), Bytes.toBytes(column), Bytes.toBytes(value));

            puts.add(put);
        }

        //d. 写入表中
        table.put(puts);
        System.out.println("addBatchData----successful");
        logger.info("addBatchData costs: " + (new Date().getTime() - start));
    }

    public static void getData(String tableName, String rowkey, long count) throws IOException {
        logger.info("getData start");
        long start = new Date().getTime();

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        for (long i = 0; i < count; i++) {
            //b. 添加数据 put方式
            Get get = new Get(Bytes.toBytes(rowkey + i));

            //d. 写入表中
            table.get(get);
        }
        System.out.println("getData----successful");
        logger.info("getData costs: " + (new Date().getTime() - start));
    }

    public static void getBatchData(String tableName, String rowkey, long count) throws IOException {
        logger.info("getBatchData start");
        long start = new Date().getTime();

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        List<Get> gets = Lists.newArrayList();
        for (long i = 0; i < count; i++) {
            //b. 添加数据 put方式
            Get get = new Get(Bytes.toBytes(rowkey + i));

            gets.add(get);
        }

        //d. 写入表中
        table.get(gets);
        System.out.println("getBatchData----successful");
        logger.info("getBatchData costs: " + (new Date().getTime() - start));
    }

    /**
     * 4. 删除一个rowkey
     */
    public static void deleteRow(String tableName, String rowkey) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        //b. 删除rowkey delete方式
        Delete delete = new Delete(Bytes.toBytes(rowkey));

        //d. 执行操作
        table.delete(delete);
        System.out.println("deleteRow----successful");
    }

    /**
     * 5. 删除多个rowkey
     */
    public static void deleteRows(String tableName, String... rowkey) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        //b. 封装delete操作
        List<Delete> ds = new ArrayList<Delete>();

        //c. 遍历rowkey
        for (String rk : rowkey) {
            Delete deletes = new Delete(Bytes.toBytes(rk));
            ds.add(deletes);
        }

        //d. 执行操作
        table.delete(ds);
        System.out.println("deleteRows----successful");
    }

    /**
     * 6. 全表扫描
     */
    public static void scanAll(String tableName) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 指定表
        Table table = connection.getTable(TableName.valueOf(tableName));

        //b. 扫描操作
        Scan scan = new Scan();

        //c. 获取返回值
        ResultScanner rs = table.getScanner(scan);

        //d. 打印扫描信息
        for (Result r : rs) {

            //单元格
            Cell[] cells = r.rawCells();

            for (Cell cs : cells) {
                System.out.println("RowKey:" + Bytes.toString(CellUtil.cloneRow(cs)));
                System.out.println("ColumnFamilly:" + Bytes.toString(CellUtil.cloneFamily(cs)));
                System.out.println("Column:" + Bytes.toString((CellUtil.cloneQualifier(cs))));
                System.out.println("Value:" + Bytes.toString((CellUtil.cloneValue(cs))));
            }
        }

        //成功标志
        System.out.println("scanAll----successful");
    }

    /**
     * 7. 删除表
     */
    public static void deleteTable(String tableName) throws IOException {

        //加载配置
        Connection connection = ConnectionFactory.createConnection(conf);

        //a. 如果对表的操作需要使用管理器
        HBaseAdmin admin = (HBaseAdmin) connection.getAdmin();

        //b. 弃用表
        admin.disableTable(TableName.valueOf(tableName));

        //c. 删除表
        admin.deleteTable(TableName.valueOf(tableName));

        //成功标志
        System.out.println("deleteTable----successful");
    }


    /**
     * 主函数
     */
    public static void main(String[] args) throws IOException {

        /**1. 判断HBase中表是否存在*/
        if (isExist("create1")) {
            deleteTable("create1");
        }

        /**2. 在HBase中创建表*/
        createTable("create1", "info1", "info2", "info3");

        /**3. 向表中添加数据：列族 列 值*/
//        addData("create1", "xiaoming", "info1", "age", "18");
//        addData("create1", "xiaoming", "info1", "sex", "man");
//        addData("create1", "xiaoming", "info2", "professional", "student");
//        addData("create1", "xiaohong", "info2", "professional", "teacher");

        long count = 1000;

        addBatchData("create1", "xiaoming", "info1", "pro", "stu", count);

        getData("create1", "xiaoming", count);

        getBatchData("create1", "xiaoming", count);

        /**4. 删除一个rowkey*/
        //        deleteRow("create", "xiaoming") ;

        /**5. 删除多个rowkey*/
        //        deleteRows("create", "xiaoming", "xiaohong") ;

        /**6. 全表扫描*/
        //scanAll("create1");

        /**7. 删除表*/

    }
}
