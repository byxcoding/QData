
package main;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Updater implements ServletContextListener {
    private volatile ScheduledExecutorService executor;
    int i = 0;
    final Runnable myRunnable = new Runnable() {
        public void run() {
            i++;
            System.out.println("Count: "+i);
        }
    };

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //executor = Executors.newScheduledThreadPool(2);
        //executor.scheduleAtFixedRate(myRunnable, 0, 3, TimeUnit.SECONDS);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        final ScheduledExecutorService executor = this.executor;

        if (executor != null) {
            executor.shutdown();
            this.executor = null;
        }
    }

}
