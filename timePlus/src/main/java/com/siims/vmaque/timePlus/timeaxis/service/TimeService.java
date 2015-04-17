package com.siims.vmaque.timePlus.timeaxis.service;

import java.util.List;

import com.siims.framework.base.BaseService;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;



/**
 * 时光轴管理服务接口
 * @author liu
 *
 */
public interface TimeService extends BaseService {
	
	/**
	 * 分页查询所有时光轴
	 */
	List<TimeAxis> searchAllTimeAxis(PageRoll pageRoll , TimeAxis timeAxis);
	
	
	/**
	 * 根据id删除时光轴
	 */
	void delTimeAxis(String id);
	
	/**
	 * 添加时光轴
	 */
	void addTimeAxis(TimeAxis axis);
	
	/**
	 * 根据时光轴id查询时光轴
	 */
	public TimeAxis searchTimeAxisById(String id);
	
	/**
	 * 根据时光轴id修改时光轴
	 */
	public void editTimeAxis(TimeAxis axis);
}
