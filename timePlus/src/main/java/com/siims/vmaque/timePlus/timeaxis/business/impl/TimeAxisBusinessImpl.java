package com.siims.vmaque.timePlus.timeaxis.business.impl;

import java.util.List;

import com.google.inject.Singleton;
import com.siims.framework.ioc.ServiceContext;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timeaxis.business.TimeAxisBusiness;
import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;



@Singleton
@AutoBind(bindClass = TimeAxisBusiness.class)
public class TimeAxisBusinessImpl implements TimeAxisBusiness{

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
	public List<TimeAxis> searchAllTimeAxis(PageRoll pageRoll, TimeAxis axis) {
		return ServiceContext.get(TimeAxisPersistence.class).searchAllTimeAxis(pageRoll,axis);
	}

	/**
	 * 
	 * 添加时光轴信息
	 * 
	 * @author lf<br> 
	 *		   
	 * @update 
	 * @param timePlusData     时光轴对象信息
	 * @return  无返回值
	 * @exception/throws 
	 * @see   TimePlusPersistence#addTimePlusData(TimePlusData)
	 * @since vmaque2.1
	 */
	public void addTimeAxis(TimeAxis axis) {
		ServiceContext.get(TimeAxisPersistence.class).addTimeAxis(axis);
	}
		
		
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
	public void editTimeAxis(TimeAxis axis){
		ServiceContext.get(TimeAxisPersistence.class).editTimeAxis(axis);
	}

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
	public TimeAxis searchTimeAxisById(String id){
		return ServiceContext.get(TimeAxisPersistence.class).searchTimeAxisById(id);
	}

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
	public void delTimeAxis(String id){
		
	}
	
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
	public void updateResidualTimeAxisNumById(String id, Integer residualTimeAxisNum){
		
	}
}
