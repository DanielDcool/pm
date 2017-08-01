package com.cn.daniel.system.config.webmvc;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * mvc配置
 *
 * @author Daniel
 * @time 2017-07-10
 */
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
	@Override
    public void addViewControllers(ViewControllerRegistry registry)  {
        registry.addViewController("/pm/employeesPage").setViewName("pm/employeesPage");
       // registry.addViewController("/error").setViewName("system/error");
    }
}
