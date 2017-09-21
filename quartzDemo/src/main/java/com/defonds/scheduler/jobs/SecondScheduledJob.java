package com.defonds.scheduler.jobs;

import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QDecoderStream;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

/**
 * Created by xinmei on 2017/9/21.
 */
public class SecondScheduledJob extends QuartzJobBean{
    @Override
    protected void executeInternal(JobExecutionContext arg0)
            throws JobExecutionException {
        System.out.println("I am SecondScheduledJob");

    }
}
