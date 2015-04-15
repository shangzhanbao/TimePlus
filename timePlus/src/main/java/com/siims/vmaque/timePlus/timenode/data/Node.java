package com.siims.vmaque.timePlus.timenode.data;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

import com.siims.framework.base.BaseData;
import com.siims.vmaque.timePlus.timecomment.data.Comment;

/**
 * 时光轴节点实体类信息
 * @author lgm
 * @since vmaque2.1
 */
@Entity
@Table(name="timenode")
public class Node implements BaseData {

	/**
	 * SerialVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = 323523523123344L;
	
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
	@Column(name="t_node_type")
	private String type;
	
	/**
	 * 描述：节点的名称<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_node_name<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_node_name")
	private String name;
	
	/**
	 * 描述：节点被创建的时间<br>
	 * 类型：date<br>
	 * 字段名称：t_node_time<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_node_time")
	private Date time;
	
	/**
	 * 描述：接点内所存储的内容<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_node_content<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_node_content")
	private String content;
	
	/**
	 * 描述：该时光轴节点所拥有的图片的集合<br>
	 * 类型：图片信息集合<br>
	 * 可否为空：否<br>
	 * 排序：默认按照其创建时间点排序
	 */
	@OneToMany(targetEntity=Picture.class, fetch=FetchType.EAGER)
	@JoinColumn(name="t_node_id", referencedColumnName="id")
	@Cascade(CascadeType.ALL)
	@OrderBy("t_upload_time")
	private Set<Picture> pictures = new HashSet<Picture>();
	
	/**
	 * 描述：该时光轴节点所拥有的评论的集合<br>
	 * 类型：评论信息集合<br>
	 * 可否为空：否<br>
	 * 排序：默认按照其创建时间点排序
	 */
	@OneToMany(targetEntity=Comment.class, fetch=FetchType.EAGER)
	@JoinColumn(name="t_node_id", referencedColumnName="id")
	@Cascade(CascadeType.ALL)
	@OrderBy("t_comment_time")
	private Set<Comment> comments = new HashSet<Comment>();
	
	public Node() {
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set<Picture> getPictures() {
		return pictures;
	}

	public void setPictures(Set<Picture> pictures) {
		this.pictures = pictures;
	}
	
}
