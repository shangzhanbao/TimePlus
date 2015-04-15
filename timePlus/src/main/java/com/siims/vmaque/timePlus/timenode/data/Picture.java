package com.siims.vmaque.timePlus.timenode.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.siims.framework.base.BaseData;

/**
 * 时光轴节点图片实体类信息
 * @author lgm
 * @since vmaque2.1
 */
@Entity
@Table(name="timepicture")
public class Picture implements BaseData{

	/**
	 * SerialVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = 2334234231L;
	
	/**
	 * 描述：主键id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_pic_id<br>
	 * 可否为空：否<br>
	 */
	@Id
	@GeneratedValue(generator = "hibernate-uuid")
	@GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
	@Column(name = "t_pic_id", length = 32, nullable = false)
	private String id;
	
	/**
	 * 描述：图片的绝对网络地址<br>
	 * 类型：varchar2(512)<br>
	 * 字段名称：t_pic_url<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_pic_url")
	private String url;
	
	/**
	 * 描述：图片的描述信息<br>
	 * 类型：varchar2(512)<br>
	 * 字段名称：t_pic_des<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_pic_desc")
	private String desc;
	
	/**
	 * 描述：图片的上传时间<br>
	 * 类型：varchar2(512)<br>
	 * 字段名称：t_upload_time<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_upload_time")
	private String time;
		
	public Picture() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getId() {
		// TODO Auto-generated method stub
		return id;
	}

	@Override
	public void setId(String id) {
		// TODO Auto-generated method stub
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
}
