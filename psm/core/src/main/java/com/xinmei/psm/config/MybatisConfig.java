package com.xinmei.psm.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.PropertySource;

/**
 * @ClassName: com.xinmei.oc.config.MybatisConfig
 * @Description: mybatis配置
 * @author gdw
 * @date 2017年9月7日 下午2:45:31
 */
@SpringBootConfiguration
@PropertySource("classpath:META-INF/psm/mybatis.properties")
@MapperScan("com.xinmei.psm.dao")
public class MybatisConfig {	
}