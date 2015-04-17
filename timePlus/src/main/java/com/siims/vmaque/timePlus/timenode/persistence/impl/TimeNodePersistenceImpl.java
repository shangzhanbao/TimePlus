package com.siims.vmaque.timePlus.timenode.persistence.impl;

import java.util.List;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.google.inject.name.Named;
import com.siims.framework.base.BaseDao;
import com.siims.framework.ioc.guice.annotation.AutoBind;
import com.siims.framework.utils.PageRoll;
import com.siims.vmaque.timePlus.timeaxis.data.TimeAxis;
import com.siims.vmaque.timePlus.timeaxis.persistence.TimeAxisPersistence;
import com.siims.vmaque.timePlus.timenode.data.TimeNode;
import com.siims.vmaque.timePlus.timenode.persistence.TimeNodePersistence;


/**
 * 时光轴节点持久化实现类
 * @author liu
 *
 */
@Singleton
@AutoBind(bindClass = TimeAxisPersistence.class)
public class TimeNodePersistenceImpl implements TimeNodePersistence{

	
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
	public TimeNodePersistenceImpl(@Named("mybatisDao") BaseDao mybatis, @Named("hibernateDao") BaseDao hibernate) {
		this.mybatisDao = mybatis;
		this.hibernateDao = hibernate;
	}
	
	
	/**
	 * 
	 * 分页查询所有时光轴节点信息<br>
	 * 
	 * @author lf<br>
	 *         
	 * 
	 */
	public List<TimeNode> searchAllTimeNode(PageRoll pageRoll, TimeNode timeNode) {
		
		return null;
	}

	/**
	 * 
	 * 添加时光轴节点信息
	 * 
	 * @author lf 
	 *		   
	 * 
	 */
	public void addTimeNode(TimeNode timeNode) {
		
		hibernateDao.insert(null, timeNode);
	}

	/**
	 * 
	 * 修改时光轴节点信息
	 * 
	 * @author lf<br> 
	 *		   
	 
	 */
	public void editTimeNode(TimeNode timeNode) {
		
		hibernateDao.update(null, timeNode);
	}

	@Override
	public TimeNode searchTimeNodeById(String id) {
		TimeNode timeNode = (TimeNode)hibernateDao.queryData(id, TimeNode.class);
		return timeNode;
	}

	/**
	 * 
	 * 根据id删除时光轴节点相关信息<br>
	 * 
	 * @author  lf<br> 
	 *		 
	 
	 */
	public void delTimeNode(String id) {
		TimeNode timeNode = (TimeNode) hibernateDao.queryData(id, TimeNode.class);
		hibernateDao.delete(id, timeNode);
	}

	@Override
	public void updateResidualTimeNodeNumById(String id,
			Integer residualTimeNodeNum) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}