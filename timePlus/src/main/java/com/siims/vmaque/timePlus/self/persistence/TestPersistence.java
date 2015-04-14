package com.siims.vmaque.timePlus.self.persistence;

import com.siims.framework.base.BasePersistence;
import com.siims.vmaque.timePlus.self.data.TestData;

public interface TestPersistence extends BasePersistence<TestData>{

	public TestData getTestDataById(String id);
	public void addTestDataById(TestData data);
	
}
