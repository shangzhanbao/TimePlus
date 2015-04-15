package com.siims.vmaque.timePlus.self.action;

import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.mvc.struts.StrutsAction;
import com.siims.vmaque.timePlus.self.data.TestData;
import com.siims.vmaque.timePlus.self.service.TestService;
import com.siims.vmaque.timePlus.self.service.impl.TestServiceImpl;

public class TestAction extends StrutsAction{

	public String test() {
		if (ServiceContext.isBootstrapped()) {
			System.out.println("have");
		}else {
			System.out.println("not have");
		}
		return "test";
	}
	
	public String add() {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		TestData data = new TestData(title, content);
		ServiceContext.get(TestService.class).addTestDataById(data);
		return "add";
	}
	
	public String get() {
		String id = request.getParameter("id");
		TestData data = ServiceContext.get(TestService.class).getTestDataById(id);
		if (data == null) {
			System.out.println("the data is null");
		}else {
			System.out.println("the id is "+data.getId());
			System.out.println("the title is "+data.getTitle());
			System.out.println("the content is "+ data.getContent());
		}
		return "get";
	}
}
