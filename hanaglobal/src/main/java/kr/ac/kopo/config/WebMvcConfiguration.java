package kr.ac.kopo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebMvcConfiguration implements WebMvcConfigurer {
	@Bean
	   public MultipartResolver multipartResolver() {
	      StandardServletMultipartResolver resolver = new StandardServletMultipartResolver();
	      return resolver;
	   }
  
}
