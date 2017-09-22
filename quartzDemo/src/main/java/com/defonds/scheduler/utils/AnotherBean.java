package com.defonds.scheduler.utils;

import org.springframework.stereotype.Component;

/**
 * Created by xinmei on 2017/9/21.
 */
@Component
public class AnotherBean {
    private int an ;
    public void printAnotherMessage(){
        System.out.println("我是dataMap里面的类^o^");
    }

    public int getAn() {
        return 10;
    }

    public void setAn(int an) {
        this.an = an;
    }
}
