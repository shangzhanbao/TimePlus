package com.siims.vmaque.timePlus.self.business.impl;

import com.google.inject.Singleton;
import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.vmaque.timePlus.self.business.TestBusiness;
import com.siims.vmaque.timePlus.self.data.TestData;
import com.siims.vmaque.timePlus.self.persistence.TestPersistence;

@Singleton
@AutoBind(bindClass=TestBusiness.class)
public class TestBusinessImpl implements TestBusiness{

	@Override
	public TestData getTestDataById(String id) {
		// TODO Auto-generated method stub
		TestData data = ServiceContext.get(TestPersistence.class).getTestDataById(id);
		return data;
	}

	@Override
	public void addTestDataById(TestData data) {
		// TODO Auto-generated method stub
		ServiceContext.get(TestPersistence.class).addTestDataById(data);
	}

}
