package com.defonds.scheduler.utils;

import org.springframework.stereotype.Component;

/**
 * Created by xinmei on 2017/9/21.
 */
@Component
public class AnotherBean {
    private int an ;
    public void printAnotherMessage(){
        System.out.println("I am AnotherBean. I am called by Quartz jobBean using CronTriggerFactoryBean");
    }

    public int getAn() {
        return 10;
    }

    public void setAn(int an) {
        this.an = an;
    }
}
