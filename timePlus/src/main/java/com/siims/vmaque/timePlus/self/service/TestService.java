package com.siims.vmaque.timePlus.self.service;

import com.siims.vmaque.timePlus.self.data.TestData;

public interface TestService {

	public TestData getTestDataById(String id);
	public void addTestDataById(TestData data);
	
}
