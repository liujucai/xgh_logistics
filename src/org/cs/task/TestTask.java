package org.cs.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class TestTask {

	@Transactional(readOnly = false)
	@Scheduled(cron = "0 0 1 * * ?")
	public void setCode(){
		System.out.println("set code execute ..............................");
	}
	
}
