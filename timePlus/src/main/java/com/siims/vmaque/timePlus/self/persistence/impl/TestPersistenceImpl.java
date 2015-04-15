package com.siims.vmaque.timePlus.self.persistence.impl;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.google.inject.name.Named;
import com.siims.framework.base.BaseDao;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.vmaque.timePlus.self.data.TestData;
import com.siims.vmaque.timePlus.self.persistence.TestPersistence;

@Singleton
@AutoBind(bindClass = TestPersistence.class)
public class TestPersistenceImpl implements TestPersistence{

	private final BaseDao hibernatedao;
	
	@Inject
	protected TestPersistenceImpl(@Named("hibernateDao") BaseDao hibernate) {
		this.hibernatedao = hibernate;
	}
	
	@Override
	public TestData getTestDataById(String id) {
		// TODO Auto-generated method stub
		return (TestData) hibernatedao.queryData(id, TestData.class);
	}

	@Override
	public void addTestDataById(TestData data) {
		// TODO Auto-generated method stub
		hibernatedao.insert(null, data);
		System.out.println(data.getId());
	}

	public BaseDao getHibernatedao() {
		return hibernatedao;
	}

}
