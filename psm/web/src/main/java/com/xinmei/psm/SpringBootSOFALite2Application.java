package com.xinmei.psm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

/**
 * @ClassName: com.xinmei.psm.SpringBootSOFALite2Application
 * @Description: spring boot 启动器
 * @author gdw
 * @date 2017年5月18日 下午5:20:52
 */
@ImportResource({"classpath*:META-INF/psm/*.xml"})
@SpringBootApplication
public class SpringBootSOFALite2Application {
	private static final Logger logger = LoggerFactory.getLogger(SpringBootSOFALite2Application.class);
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringBootSOFALite2Application.class, args);
		logger.info("[oc exector] Startup Finish");
    }
}
