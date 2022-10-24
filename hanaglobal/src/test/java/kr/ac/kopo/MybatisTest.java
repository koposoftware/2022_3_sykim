package kr.ac.kopo;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.web.WebAppConfiguration;


@SpringBootTest
@WebAppConfiguration
public class MybatisTest {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Test
	public void myBatisT() {
		assertNotNull(sqlSessionTemplate);
	}
	

}
