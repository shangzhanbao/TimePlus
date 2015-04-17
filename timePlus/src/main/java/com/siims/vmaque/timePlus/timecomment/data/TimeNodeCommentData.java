package com.siims.vmaque.timePlus.timecomment.data;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.siims.framework.base.BaseData;

/**
 * 时光轴节点实体类信息
 * @author lf
 * @since vmaque2.1
 */
@Entity
@Table(name="time_comment")
public class TimeNodeCommentData implements BaseData {

	/**
	 * SerialVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = 5533310787814744452L;

	/**
	 * 描述：主键id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_comment_id<br>
	 * 可否为空：否<br>
	 */
	@Id
	@GeneratedValue(generator = "hibernate-uuid")
	@GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
	@Column(name = "t_comment_id", length = 32, nullable = false)
	private String id;
	
	/**
	 * 描述：评论的时间<br>
	 * 类型：date<br>
	 * 字段名称：t_comment_id<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_comment_time")
	private Date time;
	
	/**
	 * 描述：评论者的标志符<br>
	 * 类型：varchar2(512)<br>
	 * 字段名称：t_comment_user<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_comment_user")
	private String user;
	
	/**
	 * 描述：评论的内容<br>
	 * 类型：varchar2(512)<br>
	 * 字段名称：t_comment_content<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_comment_content")
	private String content;
	
	@Column(name="t_comment_nodeid")
	private String nodeid;
	
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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	public String getNodeId(){
		return nodeid;
	}
	public void setNodeId(String nodeid){
		this.nodeid=nodeid;
	}
}
