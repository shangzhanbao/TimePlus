package com.siims.vmaque.timePlus.timenode.service.impl;

import java.util.List;

import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timenode.business.TimeNodeBusiness;
import com.siims.vmaque.timePlus.timenode.data.TimeNode;
import com.siims.vmaque.timePlus.timenode.persistence.TimeNodePersistence;

public class TimeNodeServiceImpl implements TimeNodeBusiness
{

	/**
	 * 
	 * 分页查询所有时光轴节点信息<br>
	 * 
	 * @author lf<br>
	 *         
	 * @update
	 * @param pageRoll
	 *            分页参数
	 
	 * 
	 */
	public List<TimeNode> searchAllTimeNode(PageRoll pageRoll, TimeNode timeNode)
	{
		return ServiceContext.get(TimeNodeBusiness.class).searchAllTimeNode(pageRoll,timeNode);
	}


	/**
	 * 
	 * 添加时光轴节点信息
	 * 
	 * @author lf<br> 
	 *		   
	 * 
	 */
	public void addTimeNode(TimeNode timeNode)
	{
		ServiceContext.get(TimeNodeBusiness.class).addTimeNode(timeNode);
	}

	/**
	 * 
	 * 修改时光轴节点信息
	 * 
	 * @author lf<br> 
	 *		   
	 
	 */
	public void editTimeNode(TimeNode timeNode)
	{
		ServiceContext.get(TimeNodeBusiness.class).editTimeNode(timeNode);
	}

	/**
	 * 
	 * 根据时光轴id查询时光轴<br>
	 * 
	 * @author lf<br>
	 *         
	
	 */
	public TimeNode searchTimeNodeById(String id)
	{
		return ServiceContext.get(TimeNodeBusiness.class).searchTimeNodeById(id);
	}

	/**
	 * 
	 * 根据id删除时光轴相关信息<br>
	 * 
	 * @author  lf
	 *		 
	
	 */
	public void delTimeNode(String id)
	{
		ServiceContext.get(TimeNodeBusiness.class).delTimeNode(id);
	}
	
	/**
	 * 
	 * 根据的id更新时光轴剩余个数<br>
	 * 
	 * @author lf<br> 
	 *		  
	 * @update 
	 * @param id 时光轴id
	
	 */
	public void updateResidualTimeNodeNumById(String id, Integer residualTimeNodeNum)
	{
		
	}
	

}