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
import model.Room;

/**
 *
 * @author Admin
 */
public class RoomDAO extends DBContext {
    public List<Room> getAll(){
        List<Room> list = new ArrayList<>();
        String sql = "select roomID, dom, floor, bed, usedbed, price, Electricity, water from Room";
        
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Room p = new Room();
                p.setRoomId(rs.getString("roomId"));
                p.setDom(rs.getString("dom"));
                p.setFloor(rs.getInt("floor"));
                p.setBed(rs.getInt("bed"));
                p.setUsedBed(rs.getInt("usedbed"));
                p.setPrice(rs.getInt("price"));
                p.setElectricity(rs.getInt("Electricity"));
                p.setWater(rs.getInt("water"));
                list.add(p);

            }
        } catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Room> getListByPage(List<Room> list, int start, int end){
        ArrayList<Room> arr = new ArrayList<>();
        for(int i=start;i<end;i++){
            arr.add(list.get(i));
        }
        return arr;
    }
}
