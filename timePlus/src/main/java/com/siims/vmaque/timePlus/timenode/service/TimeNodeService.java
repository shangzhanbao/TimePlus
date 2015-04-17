package com.siims.vmaque.timePlus.timenode.service;

import java.util.List;



import com.siims.framework.utils.PageRoll;
import com.siims.framework.base.BaseService;
import com.siims.vmaque.timePlus.timenode.data.TimeNode;

/**
 * 
 * 时光轴管理service接口<br>
 * 
 * @author lf
 * @
 * @since vmaque2.1
 */

public interface TimeNodeService extends BaseService
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
	List<TimeNode> searchAllTimeNode(PageRoll pageRoll, TimeNode timeNode);


	/**
	 * 
	 * 添加时光轴节点信息
	 * 
	 * @author lf<br> 
	 *		   
	 * 
	 */
	public void addTimeNode(TimeNode timeNode);

	/**
	 * 
	 * 修改时光轴节点信息
	 * 
	 * @author lf<br> 
	 *		   
	 
	 */
	public void editTimeNode(TimeNode timeNode);

	/**
	 * 
	 * 根据时光轴id查询时光轴<br>
	 * 
	 * @author lf<br>
	 *         
	
	 */
	public TimeNode searchTimeNodeById(String id);

	/**
	 * 
	 * 根据id删除时光轴相关信息<br>
	 * 
	 * @author  lf
	 *		 
	
	 */
	public void delTimeNode(String id);
	
	/**
	 * 
	 * 根据的id更新时光轴剩余个数<br>
	 * 
	 * @author lf<br> 
	 *		  
	 * @update 
	 * @param id 时光轴id
	
	 */
	void updateResidualTimeNodeNumById(String id, Integer residualTimeNodeNum);
	
	
}