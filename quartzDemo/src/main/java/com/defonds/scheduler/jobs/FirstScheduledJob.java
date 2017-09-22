package com.defonds.scheduler.jobs;

import com.defonds.scheduler.utils.AnotherBean;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import java.util.Date;

/**
 * Created by xinmei on 2017/9/21.
 */
public class FirstScheduledJob extends QuartzJobBean{
    private AnotherBean anotherBean;
    private String stringDemo;
    @Override
    protected void executeInternal(JobExecutionContext arg0)
            throws JobExecutionException {
        System.out.println("----------我是由cron表达式唤醒的任务*_*----------------");
        System.out.println("通过属性获取"+this.stringDemo);
        Object stringDemo = arg0.getJobDetail().getJobDataMap().get("stringDemo");
        System.out.println("通过Context参数获取"+stringDemo);
        System.out.println(new Date());
        this.anotherBean.printAnotherMessage();
    }

    public void setAnotherBean(AnotherBean anotherBean) {
        this.anotherBean = anotherBean;
    }

    public void setStringDemo(String stringDemo) {
        this.stringDemo = stringDemo;
    }
}
