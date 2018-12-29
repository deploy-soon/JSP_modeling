package guestbook.bean;


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

public class GuestBookDAO {
	// pkg name is mydb.beans but write mydb/beans
	public static final String MYBATIS_RESOURCE = "guestbook/bean/mybatis-config.xml";
	
	private static GuestBookDAO refGuestBookDAO;
	private static SqlSessionFactoryBuilder refSqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
	private static SqlSessionFactory refSqlSessionFactory;
	private GuestBookDAO() {}
	public static GuestBookDAO getInstance() {
		if(refGuestBookDAO == null) {
			refGuestBookDAO = new GuestBookDAO();
		}
		return refGuestBookDAO;
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
	public int insert(GuestBookBean refBean) {
		int result = 0;
		SqlSession refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.insert("dev.insertGuestBook", refBean);
		if(result == 1) {
			refSqlSession.commit();
		}
		// Mybatis does not have exception
		refSqlSession.close();
		return result;
	}
	
	public ArrayList<GuestBookBean> selectAll() {
		ArrayList<GuestBookBean> result = null;
		SqlSession refSqlSession = null;
		refSqlSession = refSqlSessionFactory.openSession();
		result = (ArrayList)refSqlSession.selectList("dev.selectAll");
		refSqlSession.close();
		return result;
	}
	
	public GuestBookBean selectOne(int num) {
		GuestBookBean result = null;
		SqlSession refSqlSession = null;
		refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.selectOne("dev.selectOne", num);
		refSqlSession.close();
		return result;
	}
	
	public int update(java.util.HashMap<String,Object> refHashMap) {
		int result = 0;
		SqlSession refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.update("dev.updateGuestBook", refHashMap);
		if(result == 1) {
			refSqlSession.commit();
		}
		refSqlSession.close();
		return result;
	}
	
	public int delete(int num) {
		int result = 0;
		SqlSession refSqlSession = refSqlSessionFactory.openSession();
		result = refSqlSession.update("dev.deleteGuest", num);
		if(result == 1) {
			refSqlSession.commit();
		}
		refSqlSession.close();
		return result;
	}
}

