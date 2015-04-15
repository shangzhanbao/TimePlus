package com.siims.vmaque.timePlus.self.business;

import com.siims.vmaque.timePlus.self.data.TestData;

public interface TestBusiness {

	public TestData getTestDataById(String id);
	public void addTestDataById(TestData data);
}
