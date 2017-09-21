package com.defonds.scheduler.jobs;

import org.quartz.JobExecutionContext;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Random;

/**
 * Created by xinmei on 2017/9/21.
 */
@Component
public class MyBean {
    int i;


    public void printMessage() throws InterruptedException {
        System.out.println(i++);
        System.out.println(new Date());
        System.out.println("I am MyBean. I am called by MethodInvokingJobDetailFactoryBean using SimpleTriggerFactoryBean");
        Thread.sleep(5000);
    }

}
