package mydb.beans;

/*
 * 1. read mybatis-config.xml
 * 2. use Resources class
 * 3. load SqlSessoinFactoryBuilder class
 * 4. use data_mapper.xml via mybatis-config.xml
 * 5. get SQL tag in data_mapper.xml
 */

import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class AddressBookDAO {
	// pkg name is mydb.beans but write mydb/beans
	public static final String MYBATIS_RESOURCE = "mydb/beans/mybatis-config.xml";
	
	private static AddressBookDAO refAddressBookDAO;
	private static SqlSessionFactoryBuilder refSqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
	private static SqlSessionFactory refSqlSessionFactory;
	private AddressBookDAO() {}
	public static AddressBookDAO getInstance() {
		if(refAddressBookDAO == null) {
			refAddressBookDAO = new AddressBookDAO();
		}
		return refAddressBookDAO;
	}
	/*
	 * INPUT LIST
	 * 1. read mybatis-config.xml -> set InputStream class
	 * 2. load new SqlSessionFactoryBuilder
	 * 3. close InputStream
	 */
	static {
		InputStream refInputStream = null;
		try {
			refInputStream = Resources.getResourceAsStream(MYBATIS_RESOURCE);
			refSqlSessionFactory = refSqlSessionFactoryBuilder.build(refInputStream);
		}catch(IOException refIOException) {
			System.out.print(refIOException.getMessage());
			refIOException.printStackTrace();
		} finally {
			try {
				if(refInputStream != null) {
					refInputStream.close();	
				}
			} catch(IOException refIOException){
				System.out.print(refIOException.getMessage());
				refIOException.printStackTrace();
			}		
		}
	}
	
	
	public static int getMaxNum() {
		int result = 0;
		SqlSession refSqlSession = null;
		refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.selectOne("dev.getMaxNum");
		// Mybatis does not have exception
		refSqlSession.close();
		return result;
	}
	public int insert(AddressBookBean refBean) {
		int result = 0;
		SqlSession refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.insert("dev.insertAddressBook", refBean);
		if(result == 1) {
			refSqlSession.commit();
		}
		// Mybatis does not have exception
		refSqlSession.close();
		return result;
	}
	
	public ArrayList<AddressBookBean> selectAll() {
		ArrayList<AddressBookBean> result = null;
		SqlSession refSqlSession = null;
		refSqlSession = refSqlSessionFactory.openSession();
		result = (ArrayList)refSqlSession.selectList("dev.selectAll");
		refSqlSession.close();
		return result;
	}
}
