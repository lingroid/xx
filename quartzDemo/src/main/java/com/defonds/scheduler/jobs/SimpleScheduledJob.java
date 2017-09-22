package com.defonds.scheduler.jobs;
import org.springframework.stereotype.Component;
import java.util.Date;
/**
 * Created by xinmei on 2017/9/21.
 */
@Component
public class SimpleScheduledJob {
    int i;
    public void printMessage() throws InterruptedException {
        System.out.println("--------------我是一个简单调度的任务"+i+"------------------");
        System.out.println(new Date());
        i++;
    }
}
