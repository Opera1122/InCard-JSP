package inCard;

import java.sql.*;


public class MemberMgr {

    private DBConnectionMgr pool = null;

    public MemberMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean checkId(String id) {    //�븘�씠�뵒 以묐났泥댄겕
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select cust_id from customer where cust_id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();
            System.out.println("l");
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }

    public boolean memberInsert(RegisterBean regBean) {    //�쉶�썝媛��엯 
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = true;
        try {
            con = pool.getConnection();
            String strQuery = "insert into customer values(?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, regBean.getCust_id());
            pstmt.setString(2, regBean.getCust_pw());
            pstmt.setString(3, regBean.getCust_name());
            pstmt.setString(4, regBean.getCust_email());
            pstmt.setString(5, regBean.getCust_tel());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }


    public boolean loginCheck(String cust_id, String cust_pw) {  //濡쒓렇�씤 李�
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select * from customer where cust_id=? and cust_pw=?";
            pstmt = con.prepareStatement(strQuery);
			
			  pstmt.setString(1, cust_id); 
			  pstmt.setString(2, cust_pw);
			  rs = pstmt.executeQuery();
			  System.out.println("s");
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }

  
}