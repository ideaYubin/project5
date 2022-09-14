package sec01;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import com.sun.tools.javac.util.Context;

public class BoardDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	
	public BoardDAO() {
		Context ctx = new InintialContext();
		Context envContext = (Context) ctx.lookup("java:/comp/env");
		dataFactory = (DataSource) envContext.looiup("jdbc/mariadb");
	} catch(Exception e) {
		e.printStackTrace();
	}

}
