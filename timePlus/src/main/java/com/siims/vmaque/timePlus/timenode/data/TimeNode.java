package com.siims.vmaque.timePlus.timenode.data;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.siims.framework.base.BaseData;


@Entity
@Table(name="timenode")
public class TimeNode implements BaseData{

	
	
	/**
	 * SerialVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = 193652270612763247L;

	/**
	 * 描述：主键id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_node_id<br>
	 * 可否为空：否<br>
	 */
	@Id
	@GeneratedValue(generator = "hibernate-uuid")
	@GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
	@Column(name = "t_node_id", length = 32, nullable = false)
	private String id;
	
	/**
	 * 描述：节点的类型<br>
	 * 类型：varchar2(1)<br>
	 * 字段名称：t_node_type<br>
	 * 可否为空：否<br>
	 * 备注：0表示状态节点，1表示活动节点<br>
	 */
	@Column(name="t_node_type", length = 2, nullable = false)
	private String type;
	
	/**
	 * 描述：节点的名称<br>
	 * 类型：varchar2(64)<br>
	 * 字段名称：t_node_name<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_node_name", length = 64, nullable = false)
	private String name;
	
	/**
	 * 描述：节点被创建的时间<br>
	 * 类型：date<br>
	 * 字段名称：t_node_time<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_node_time", nullable = false)
	private Date time;
	
	/**
	 * 描述：节点对应的图片相对路径，用字符串表示，用';'分开，活动节点没有图片<br>
	 * 类型：varchar2(1024)<br>
	 * 字段名称：t_node_pics<br>
	 * 可否为空：是
	 */
	@Column(name="t_node_pics", length = 1024, nullable = true)
	private String pics;
	
	/**
	 * 描述：每张图片对应的描述，用'%;'分开，如果对应的没有描述，默认为" "，并加上分隔符<br>
	 * 类似：NVARCHAR2(3072)<br>
	 * 字段名称：t_node_pics_desc<br>
	 * 可否为空：否
	 */
	@Column(name="t_node_pics_desc", length = 3072, nullable = true)
	private String pics_desc;
	
	/**
	 * 描述：每个节点对应的图集标题，对应在图片左侧<br>
	 * 类似：varchar2(256)<br>
	 * 字段名称：t_node_pics_title<br>
	 * 可否为空：是
	 */
	@Column(name="t_node_pics_title", length = 256, nullable = true)
	private String pics_title;
	
	/**
	 * 描述：节点对应的内容描述<br>
	 * 类似：varchar2(512)<br>
	 * 字段名称：t_node_content<br>
	 * 可否为空：是
	 */
	@Column(name="t_node_content", length = 512, nullable = true)
	private String content;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPics() {
		return pics;
	}

	public void setPics(String pics) {
		this.pics = pics;
	}

	public String getPics_desc() {
		return pics_desc;
	}

	public void setPics_desc(String pics_desc) {
		this.pics_desc = pics_desc;
	}

	public String getPics_title() {
		return pics_title;
	}

	public void setPics_title(String pics_title) {
		this.pics_title = pics_title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	

}
