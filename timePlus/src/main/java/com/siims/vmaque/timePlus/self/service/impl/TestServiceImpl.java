package com.siims.vmaque.timePlus.self.service.impl;

import com.google.inject.Singleton;
import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.framework.transaction.TransactionalContext;
import com.siims.vmaque.timePlus.self.business.TestBusiness;
import com.siims.vmaque.timePlus.self.data.TestData;
import com.siims.vmaque.timePlus.self.persistence.TestPersistence;
import com.siims.vmaque.timePlus.self.service.TestService;

@Singleton
@AutoBind(bindClass=TestService.class)
@TransactionalContext
public class TestServiceImpl implements TestService{

	@Override
	public TestData getTestDataById(String id) {
		// TODO Auto-generated method stub
		TestData data = ServiceContext.get(TestBusiness.class).getTestDataById(id);
		return data;
	}

	@Override
	public void addTestDataById(TestData data) {
		// TODO Auto-generated method stub
		ServiceContext.get(TestBusiness.class).addTestDataById(data);
	}
}
