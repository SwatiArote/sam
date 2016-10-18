package cnfd.dummyproject.Service;

import cnfd.dummyproject.Component.JdbcCreator;
import cnfd.dummyproject.PreviousRecord;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by swati on 15/10/16.
 */

@Service
public class DataEditorService {

    @Autowired
    JdbcCreator jdbcCreator;

    public void insertAttendance(String today,String name,int mark){
        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sqlInsert = String.format("INSERT INTO asheet (today,%s) VALUES(?,?)",name).toString();
        jdbcTemplate.update(sqlInsert,new Object[]{today,mark});

    }

    public void insertTodaysDate(String today){

        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sqlInsert = "INSERT INTO asheet (today) VALUES(?)";
        jdbcTemplate.update(sqlInsert,new Object[]{today});
    }

    public void updateAttedanceOfName(String today,String name,int mark) throws org.springframework.dao.DuplicateKeyException,MySQLIntegrityConstraintViolationException {
        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sqlInsert = String.format("UPDATE asheet SET %s=? WHERE today=?",name).toString();

        jdbcTemplate.update(sqlInsert,new Object[]{mark,today});

    }

    public PreviousRecord givePriousRecord(){

        PreviousRecord pr = new PreviousRecord();

        Map<String,Integer> map= new HashMap<String,Integer>();
        String[] members={"poonam","vardhaman","rohit","raja","pradnya","vijay","deepak","swati","anurag","irshad","yatish","om","sumit","rajeev","santosh","prashant"};

        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for(int i =0 ; i< members.length;i++){
            String sqlInsert = String.format("SELECT COUNT(%s) FROM asheet WHERE %s=1",members[i],members[i]).toString();
            jdbcTemplate.execute(sqlInsert);
            int count = jdbcTemplate.queryForInt(sqlInsert);
            map.put(members[i],count);
        }
        pr.setRecord((HashMap<String, Integer>) map);
        return pr;
    }

    public void clearRecord(){
        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        String sql = "update asheet set poonam=0,vardhaman=0,rohit=0,raja=0,pradnya=0,vijay=0,deepak=0,swati=0,anurag=0,irshad=0,yatish=0,om=0,sumit=0,rajeev=0,santosh=0,prashant=0";

        jdbcTemplate.update(sql);
    }

    public Boolean isValidUser(String name,String password) throws org.springframework.dao.EmptyResultDataAccessException{
        JdbcTemplate jdbcTemplate = null;
        try {
            jdbcTemplate = jdbcCreator.createJdbcTemplate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql =String.format("select password from users where uname='%s'",name);

        String passwordActual = jdbcTemplate.queryForObject(sql,String.class);
        if(password.equalsIgnoreCase(passwordActual)){
            return true;
        }
        else {
            return false;
        }
    }

}
