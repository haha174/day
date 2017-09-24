package com.yuan.boot;


import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.yuan.boot.util.OSSManageUtil;

/**
 * Hello world!
 *指定这是一个boot程序启动类  
-javaagent:D:\maven\repository\org\springframework\springloaded\1.2.6.RELEASE\springloaded-1.2.6.RELEASE.jar -noverify  
 */
@MapperScan("com.yuan.boot.dao")
@SpringBootApplication
public class App extends WebMvcConfigurerAdapter{
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		/**1  预先定义一个Converters 转换消息的对象
		 * 2 添加fastjson的配置信息
		 * 3 早converter中添加配置信息
		 * 4.将converter添加到converters中
		 */
		super.configureMessageConverters(converters);//
		FastJsonHttpMessageConverter fastConstructor=new FastJsonHttpMessageConverter();//1
		FastJsonConfig fastJsonConfig=new FastJsonConfig();
		fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);//2
		fastConstructor.setFastJsonConfig(fastJsonConfig);//3
		converters.add(fastConstructor);//4
	}
    public static void main( String[] args ) {
    	 System.getProperties().put( "server.port", 8099 );
    	SpringApplication.run(App.class, args);
        System.out.println( "Hello World!" );
        System.out.println(OSSManageUtil.getUrl("other/dbz_1505399510989.jpg"));


    }

}
