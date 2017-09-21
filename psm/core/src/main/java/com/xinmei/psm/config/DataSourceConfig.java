package com.xinmei.psm.config;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.PropertySource;

/**
 * @ClassName: com.xinmei.oc.config.DataSourceConfig
 * @Description: 数据库配置
 * @author gdw
 * @date 2017年9月7日 下午2:13:11
 */
@SpringBootConfiguration
@PropertySource("classpath:META-INF/psm/datesource-pool.properties")
public class DataSourceConfig {
	
}
