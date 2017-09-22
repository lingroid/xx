package com.defonds.scheduler.jobs;

import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by xinmei on 2017/9/22.
 */
@Component
public class MyBean {
    int i;

    public void test() throws InterruptedException {
        System.out.println("----------------我是测试并发调度用的"+i++ +"-------------------");
        System.out.println(new Date());
        Thread.sleep(4000);
    }
}
