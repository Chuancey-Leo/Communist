package org.wingstudio.util;

/**
 * Created by liao on 17-1-4.
 */
public class Test implements Runnable{
    private int t=5;

    public void run() {
        for (int i=0;i<10;i++){
            if(t>0){
                System.out.println("t:"+t--);
            }
        }
    }

    public static void main(String[] args) {
        Test test=new Test();
        new Thread(test).start();
        new Thread(test).start();
        new Thread(test).start();
    }
}
