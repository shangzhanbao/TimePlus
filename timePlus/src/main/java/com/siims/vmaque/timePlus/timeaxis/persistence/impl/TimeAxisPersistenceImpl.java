package com.siims.vmaque.timePlus.timeaxis.persistence.impl;

import com.google.inject.Singleton;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.vmaque.timePlus.timeaxis.business.impl.TimeAxisBusinessImpl;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;

@Singleton
@AutoBind(bindClass = TimeAxisPersistence.class)
public class TimeAxisPersistenceImpl implements TimeAxisPersistence {

}
