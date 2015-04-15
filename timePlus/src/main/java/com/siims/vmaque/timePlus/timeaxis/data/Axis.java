package com.siims.vmaque.timePlus.timeaxis.data;

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
import com.siims.vmaque.timePlus.timenode.data.Node;

/**
 * 时光轴实体类信息
 * @author lgm
 * @since vmaque2.1
 */

@Entity
@Table(name="timeaxis")
public class Axis implements BaseData{

	/**
	 * SerialVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = 121231234155L;
	
	
	/**
	 * 描述：主键id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_id<br>
	 * 可否为空：否<br>
	 */
	@Id
	@GeneratedValue(generator = "hibernate-uuid")
	@GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
	@Column(name = "t_id", length = 32, nullable = false)
	private String id;
	
	/**
	 * 描述：该时光轴的点赞数<br>
	 * 类型：number(12)<br>
	 * 字段名称：t_praise_num<br>
	 * 可否为空：否<br>
	 * 默认：0<br>
	 */
	@Column(name="t_praise_num")
	private Integer praiseNum;
	
	/**
	 * 描述：时光轴名字<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_name<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_name")
	private String name;
	
	/**
	 * 描述：时光轴的广告语<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_advertisement<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_advertisement")
	private String advertisement;
	
	/**
	 * 描述：时光轴所描述的商品的id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_goods_id<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_goods_id")
	private String goodsId;
	
	/**
	 * 描述：时光轴对应的pc端的url<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_url_computer<br>
	 * 可否为空：否<br>
	 * 默认：空<br>
	 */
	@Column(name="t_url_computer")
	private String urlComputer;
	
	/**
	 * 描述：时光轴的mobile端的url<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_url_phone<br>
	 * 可否为空：否<br>
	 * 默认：空<br>
	 */
	@Column(name="t_url_phone")
	private String urlPhone;
	
	/**
	 * 描述：该时光轴是否已经被发布<br>
	 * 类型：varchar2(1)<br>
	 * 字段名称：t_is_published<br>
	 * 可否为空：否<br>
	 * 默认：0<br>
	 */
	@Column(name="t_is_published")
	private String isPublished;
	
	/**
	 * 描述：该时光轴被浏览过的次数<br>
	 * 类型：number(12)<br>
	 * 字段名称：t_visit_num<br>
	 * 可否为空：否<br>
	 * 默认：0<br>
	 */
	@Column(name="t_visit_num")
	private Integer visitNum;
	
	/**
	 * 描述：创建该时光轴的用户的id<br>
	 * 类型：varchar2(32)<br>
	 * 字段名称：t_user_id<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_user_id")
	private String userId;
	
	/**
	 * 描述：该时光轴所拥有的节点的集合<br>
	 * 类型：时光轴点集合<br>
	 * 可否为空：否<br>
	 * 排序：默认按照其创建时间点排序
	 */
	@OneToMany(targetEntity=Comment.class, fetch=FetchType.EAGER)
	@JoinColumn(name="t_axis_id", referencedColumnName="id")
	@Cascade(CascadeType.ALL)
	@OrderBy("t_create_time")
	private Set<Node> nodes = new HashSet<Node>();
	
	public Axis() {
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

	public Integer getPraiseNum() {
		return praiseNum;
	}

	public void setPraiseNum(Integer praiseNum) {
		this.praiseNum = praiseNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdvertisement() {
		return advertisement;
	}

	public void setAdvertisement(String advertisement) {
		this.advertisement = advertisement;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getUrlComputer() {
		return urlComputer;
	}

	public void setUrlComputer(String urlComputer) {
		this.urlComputer = urlComputer;
	}

	public String getUrlPhone() {
		return urlPhone;
	}

	public void setUrlPhone(String urlPhone) {
		this.urlPhone = urlPhone;
	}

	public String getIsPublished() {
		return isPublished;
	}

	public void setIsPublished(String isPublished) {
		this.isPublished = isPublished;
	}

	public Integer getVisitNum() {
		return visitNum;
	}

	public void setVisitNum(Integer visitNum) {
		this.visitNum = visitNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Set<Node> getNodes() {
		return nodes;
	}

	public void setNodes(Set<Node> nodes) {
		this.nodes = nodes;
	}
}
