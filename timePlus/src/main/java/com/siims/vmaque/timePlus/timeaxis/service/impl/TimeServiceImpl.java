package com.siims.vmaque.timePlus.timeaxis.service.impl;

import java.util.List;

import com.google.inject.Singleton;
import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timeaxis.business.TimeAxisBusiness;
import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;
import com.siims.vmaque.timePlus.timeaxis.service.TimeService;

/**
 * 时光轴管理服务接口实现类
 * @author liu
 *
 */
@Singleton
@AutoBind(bindClass = TimeService.class)
public class TimeServiceImpl implements TimeService{

	
	public List<TimeAxis> searchAllTimeAxis(PageRoll pageRoll, TimeAxis timeAxis) {
		return ServiceContext.get(TimeAxisBusiness.class).searchAllTimeAxis(pageRoll,timeAxis); 
		
	}

	
	public void delTimeAxis(String id) {
		ServiceContext.get(TimeAxisBusiness.class).delTimeAxis(id);
		
	}

	@Override
	public void addTimeAxis(TimeAxis axis) {
		ServiceContext.get(TimeAxisBusiness.class).addTimeAxis(axis);
		
	}

	@Override
	public TimeAxis searchTimeAxisById(String id) {
		
		return ServiceContext.get(TimeAxisBusiness.class).searchTimeAxisById(id);
	}

	@Override
	public void editTimeAxis(TimeAxis axis) {
		ServiceContext.get(TimeAxisBusiness.class).editTimeAxis(axis);
		
	}

}
