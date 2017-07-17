package com.cn.daniel.system.config.freemaker;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import com.cn.daniel.core.util.RequestUtil;
/**
 * 自定义FreeMarkerView
 *
 * @author Daniel
 * @time 2017-07-10
 */
public class MyFreemarkerView extends FreeMarkerView {  
  
    @Override  
    protected void exposeHelpers(Map<String, Object> model, HttpServletRequest request) throws Exception { 
    	String base = RequestUtil.getBasePath(request);  
        model.put("base", base);  
        super.exposeHelpers(model, request);  
    }  
}  
