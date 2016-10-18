package cnfd.dummyproject.Component;

/**
 * Created by swati on 17/10/16.
 */

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;
import org.springframework.stereotype.Component;

import java.sql.SQLException;

/**
 * Created by swati on 15/10/16.
 */

@Component
public class JdbcCreator {
    public JdbcTemplate createJdbcTemplate() throws SQLException {

        SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
        dataSource.setDriver(new com.mysql.jdbc.Driver());
        dataSource.setUrl("jdbc:mysql://localhost:3306/standupmanager");
        dataSource.setUsername("root");
        dataSource.setPassword("mysql@1992");
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        return jdbcTemplate;
    }


}

