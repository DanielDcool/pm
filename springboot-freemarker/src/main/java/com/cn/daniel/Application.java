package com.cn.daniel;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import com.cn.daniel.system.config.freemaker.MyFreemarkerView;

/**
 * Spring Boot 应用启动类
 *
 * @author Daniel
 * @time 2017-07-10
 */
// Spring Boot 应用的标识
@SpringBootApplication
// mapper 接口类扫描包配置
@MapperScan("com.cn.daniel.*.dao")
public class Application {

	public static void main(String[] args) {
		// 程序启动入口
		// 启动嵌入式的 Tomcat 并初始化 Spring 环境及其各 Spring 组件
		SpringApplication.run(Application.class, args);
	}

	
	//freemaker自定义
	@Bean
	public CommandLineRunner customFreemarker(final FreeMarkerViewResolver resolver) {
		return new CommandLineRunner() {
			@Override
			public void run(String... strings) throws Exception {
				// 增加视图
				resolver.setViewClass(MyFreemarkerView.class);
				// 添加自定义解析器
				// Map<String, Object> map = resolver.getAttributesMap();
			}
		};
	}
}
