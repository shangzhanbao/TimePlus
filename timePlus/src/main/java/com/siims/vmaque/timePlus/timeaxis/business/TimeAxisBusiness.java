package com.siims.vmaque.timePlus.timeaxis.business;

import java.util.List;

import com.siims.framework.base.BaseBusiness;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;




/**
 * 
 * 时光轴管理持久化接口<br>
 * 
 * @author lf
 * @see TimePlusPersistence
 * @since vmaque2.1
 */
public interface TimeAxisBusiness extends BaseBusiness{

	/**
	 * 
	 * 分页查询所有时光轴信息<br>
	 * 
	 * @author lf<br>
	 *         
	 * @update
	 * @param pageRoll
	 *            分页参数
	 * @return List<RedPackageContentData> 查询到的时光轴信息集合
	 * @exception/throws
	 * @see TimePlusPersistence#searchAllTimePlus(PageRoll)
	 * @since vmaque2.1
	 */
	public List<TimeAxis> searchAllTimeAxis(PageRoll pageRoll, TimeAxis axis);

	/**
	 * 
	 * 添加时光轴信息
	 * 
	 * @author lf
	 *		   
	 * @update 
	 * @param timePlusData     时光轴对象信息
	 * @return  无返回值
	 * @exception/throws 
	 * @see   TimePlusPersistence#addTimePlusData(TimePlusData)
	 * @since vmaque2.1
	 */
	public void addTimeAxis(TimeAxis axis);

	/**
	 * 
	 * 修改时光轴信息
	 * 
	 * @author lf<br> 
	 *		   
	 * @update 
	 * @param timePlusData     时光轴对象信息
	 * @return  无返回值
	 * @exception/throws 
	 * @see   TimePlusPersistence#editTimePlusData(TimePlusData)
	 * @since vmaque2.1
	 */
	public void editTimeAxis(TimeAxis axis);

	/**
	 * 
	 * 根据时光轴id查询时光轴<br>
	 * 
	 * @author lf<br>
	 *         
	 * @update
	 * @param id 时光轴id
	 * @return TimePlusData 
	 * @exception/throws
	 * @see TimePlusPersistence#searchTimePlusById(String)
	 * @since vmaque2.1
	 */
	public TimeAxis searchTimeAxisById(String id);

	/**
	 * 
	 * 根据id删除时光轴相关信息<br>
	 * 
	 * @author  lf<br> 
	 *		 
	 * @update 
	 * @param id 时光轴id
	 * @return void
	 * @exception/throws 
	 * @see   TimePlusPersistence#delTimePlus(String)
	 * @since vmaque2.1
	 */
	public void delTimeAxis(String id);
	
	/**
	 * 
	 * 根据的id更新时光轴剩余个数<br>
	 * 
	 * @author lf<br> 
	 *		  
	 * @update 
	 * @param id 时光轴id
	 * @param residualTimePlusNum 时光轴剩余个数
	 * @return  void
	 * @exception/throws 
	 * @see  TimePlusPersistence#updateResidualTimePlusNumById(String,String)
	 * @since vmaque2.1
	 */
	public void updateResidualTimeAxisNumById(String id, Integer residualTimeAxisNum);
	
}
