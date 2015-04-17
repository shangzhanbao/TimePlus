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
import com.siims.vmaque.timePlus.timenode.data.TimeNode;


/**
 * 
 * 时光轴管理持久化接口实现类<br>
 * 
 * @author lf
 * @see T
 * @since vmaque2.1
 */


@Singleton
@AutoBind(bindClass = TimeAxisPersistence.class)
public class TimeAxisPersistenceImpl implements
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
		public TimeAxisPersistenceImpl(@Named("mybatisDao") BaseDao mybatis, @Named("hibernateDao") BaseDao hibernate) {
			this.mybatisDao = mybatis;
			this.hibernateDao = hibernate;
		}
		
		/**
		 * 
		 * 分页查询所有时光轴信息<br>
		 * 
		 * @author lf<br>
		 *         
		 * 
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
	 * 
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
	 
	 */
	@Override
	public void delTimeAxis(String id) {
		TimeAxis timeAxis = (TimeAxis)hibernateDao.queryData(id, TimeAxis.class);
		hibernateDao.delete(id, timeAxis);
	}

	@Override
	public void updateResidualTimeAxisNumById(String id,
			Integer residualTimeAxisNum) {
		// TODO Auto-generated method stub
		
	}}