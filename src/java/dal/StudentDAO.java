/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Student;

/**
 *
 * @author Admin
 */
public class StudentDAO extends DBContext {
    public List<Student> getStudentsByRoom(String roomId) {
        List<Student> list = new ArrayList<>();
        String sql = "select s.StudentID, s.Name, s.Checkin, s.Checkout, r.Electricity, r.Water from room r inner join Students s on r.RoomID = s.RoomID where r.RoomID = ?";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, roomId);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Student p = new Student();
       
                p.setStudentId(rs.getString("studentID"));
                p.setName(rs.getString("name"));
                p.setCheckin(rs.getDate("Checkin"));
                p.setCheckout(rs.getDate("Checkout"));
                p.setElectricity(rs.getInt("Electricity"));
                p.setWater(rs.getInt("Water"));
                list.add(p);
            }
            for(Student x: list) {
                x.setElectricity(x.getElectricity()/list.size());
                x.setWater(x.getWater()/list.size());
            }
        } catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Student> getStudentsByID(String id) {
        List<Student> list = new ArrayList<>();
        String sql = "select s.StudentID, s.Name, s.Checkin, s.Checkout, r.Electricity, r.Water, r.roomID, r.usedbed from room r inner join Students s on r.RoomID = s.RoomID where s.StudentID like '%"+id+"%' ";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Student p = new Student();
       
                p.setStudentId(rs.getString("studentID"));
                p.setName(rs.getString("name"));
                p.setCheckin(rs.getDate("Checkin"));
                p.setCheckout(rs.getDate("Checkout"));
                p.setElectricity(rs.getInt("Electricity")/rs.getInt("usedbed"));
                p.setWater(rs.getInt("Water")/rs.getInt("usedbed"));
                p.setRoomId(rs.getString("roomID"));
                list.add(p);
            }
          
        } catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
