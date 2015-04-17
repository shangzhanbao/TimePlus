package com.siims.vmaque.timePlus.timeaxis.persistence.impl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.google.inject.name.Named;
import com.siims.framework.base.BaseDao;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.framework.orm.hibernate.HibernateDao;
import com.siims.framework.utils.PageRoll;

//import com.siims.vmaque.redPackage.persistence.RedPackagePersistence;

import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;


/**
 * 
 * 时光轴管理持久化接口实现类<br>
 * 
 * @author lf
 * @see TimePlusPersistenceImpl
 * @since vmaque2.1
 */


@Singleton
@AutoBind(bindClass = TimeAxisPersistence.class)
public class TimeAxisPersistenceImp implements
TimeAxisPersistence{

	    // 定义hibernate CRUD 操作对象
		private final BaseDao hibernateDao;
			
		// 定义mybatis CRUD 操作对象
		private final BaseDao mybatisDao;
	
		/**
		 * 构造函数初始化<br>
		 * 获得数据访问对象
		 * @param mybatis 数据访问对象
		 */
		@Inject
		public TimeAxisPersistenceImp(@Named("mybatisDao") BaseDao mybatis, @Named("hibernateDao") BaseDao hibernate) {
			this.mybatisDao = mybatis;
			this.hibernateDao = hibernate;
		}
		
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
	@Override
	public List<TimeAxis> searchAllTimeAxis(PageRoll pageRoll,
			TimeAxis axis) {
		// TODO Auto-generated method stub
		return null;
	}

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
	@Override
	public void addTimeAxis(TimeAxis axis) {
		// TODO Auto-generated method stub
		hibernateDao.insert(null, axis);
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
	@Override
	public void editTimeAxis(TimeAxis axis) {
		// TODO Auto-generated method stub
		hibernateDao.update(null, axis);
	}

	@Override
	public TimeAxis searchTimeAxisById(String id) {
		// TODO Auto-generated method stub
		// 获取对象
		TimeAxis axis = (TimeAxis)hibernateDao.queryData(id, TimeAxis.class);
		return axis;
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
	@Override
	public void delTimeAxis(String id) {
		// TODO Auto-generated method stub
		// 获取时光轴对象
		//TimeAxis axis = (TimeAxis) hibernateDao.queryData(id, TimeAxis.class);
		// 将时光轴设置为加删状态
		//TimeAxis.setIsDelete(0);
		// 更新时光轴数据
		//hibernateDao.update(id, TimeAxis);
	}

	@Override
	public void updateResidualTimeAxisNumById(String id,
			Integer residualTimeAxisNum) {
		// TODO Auto-generated method stub
		
	}}