package com.defonds.scheduler;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by xinmei on 2017/9/21.
 */
public class AppMain {
    public static void main(String args[]){
        AbstractApplicationContext context = new ClassPathXmlApplicationContext("quartz-context.xml");
    }
}
