package com.defonds.scheduler.jobs;

import com.defonds.scheduler.utils.AnotherBean;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

/**
 * Created by xinmei on 2017/9/21.
 */
public class FirstScheduledJob extends QuartzJobBean{
    private AnotherBean anotherBean;
    private String lingfly;

    @Override
    protected void executeInternal(JobExecutionContext arg0)
            throws JobExecutionException {
        System.out.println(this.lingfly+"------------------");

        Object lingfly = arg0.getJobDetail().getJobDataMap().get("lingfly");
        System.out.println(lingfly);
        Object annotion = arg0.getJobDetail().getJobDataMap().get("anotherBean");
        AnotherBean an = (AnotherBean) annotion;
        int an1 = an.getAn();
        System.out.println(an1);

        System.out.println("I am FirstScheduledJob------");
        this.anotherBean.printAnotherMessage();
        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

    public void setAnotherBean(AnotherBean anotherBean) {
        this.anotherBean = anotherBean;
    }

    public void setLingfly(String lingfly) {
        this.lingfly = lingfly;
    }
}
