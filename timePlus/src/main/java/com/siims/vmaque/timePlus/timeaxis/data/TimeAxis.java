package com.siims.vmaque.timePlus.timeaxis.data;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.siims.framework.base.BaseData;
/**
 * 时光轴实体信息类
 * @author doshest
 * @since vmaque2.1
 */
@Entity
@Table(name="timeaxis")
public class TimeAxis implements BaseData{
	
	/**
	 * seriVersionUID
	 * @since vmaque2.1
	 */
	private static final long serialVersionUID = -4560263817995509109L;
	/**
	 * 描述：主键id <br>
	 * 类型：varchar2(32) <br>
	 * 字段名称：t_id <br>
	 * 可否为空：否<br>
	 */
	@Id
	@GeneratedValue(generator = "hibernate-uuid")
	@GenericGenerator(name = "hibernate-uuid", strategy = "uuid")
	@Column(name = "t_id", length = 32, nullable = false)
	private String id;
	/**
	 * 描述：用户商家id <br>
	 * 类型：varchar2(32) <br>
	 * 字段名称：t_user_id <br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_user_id")
	private String tUserId;
	/**
	 * 描述：时光轴被点赞个数 <br>
	 * 类型：number(7) <br>
	 * 字段名称： t_praise_num<br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_praise_num")
	private int tPraiseNum;
	/**
	 * 描述：时光轴对应的广告语 <br>
	 * 类型：varchar2(512) <br>
	 * 字段名称：t_advertisement <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_advertisement")
	private String tAdvertisement;
	/**
	 * 描述:时光轴对应商品id <br>
	 * 类型：varchar2(32) <br>
	 * 字段名称：t_goods_id <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_goods_id")
	private String tGoodsId;
	/**
	 * 描述：生成页面对应的电脑访问url <br>
	 * 类型：varchar2(512) <br>
	 * 字段名称：t_url_computer <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_url_computer")
	private String tUrlComputer;
	/**
	 * 描述：生成页面对应的手机访问url <br>
	 * 类型：varchar2(512) <br>
	 * 字段名称：t_url_phone <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_url_phone")
	private String tUrlPhone;
	/**
	 * 描述：是否已经发布 '0'未发布 '1'已发布  <br>
	 * 类型：char(1) <br>
	 * 字段名称：t_is_published <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_is_published")
	private String tIsPublished;
	/**
	 * 描述：最后添加的节点id <br>
	 * 类型：varchar2(32) <br>
	 * 字段名称：t_lastnodeid <br>
	 * 可否为空：是<br>
	 */
	@Column(name="t_lastnodeid")
	private String tLastNodeId;
	/**
	 * 描述：浏览时光轴人数 默认0 <br>
	 * 类型：varchar2(512) <br>
	 * 字段名称：number(9)<br>
	 * 可否为空：否<br>
	 */
	@Column(name="t_visit_num")
	private long tVisitNum;
	
	
	public String gettUserId() {
		return tUserId;
	}

	public void settUserId(String tUserId) {
		this.tUserId = tUserId;
	}

	public int gettPraiseNum() {
		return tPraiseNum;
	}

	public void settPraiseNum(int tPraiseNum) {
		this.tPraiseNum = tPraiseNum;
	}

	public String gettAdvertisement() {
		return tAdvertisement;
	}

	public void settAdvertisement(String tAdvertisement) {
		this.tAdvertisement = tAdvertisement;
	}

	public String gettGoodsId() {
		return tGoodsId;
	}

	public void settGoodsId(String tGoodsId) {
		this.tGoodsId = tGoodsId;
	}

	public String gettUrlComputer() {
		return tUrlComputer;
	}

	public void settUrlComputer(String tUrlComputer) {
		this.tUrlComputer = tUrlComputer;
	}

	public String gettUrlPhone() {
		return tUrlPhone;
	}

	public void settUrlPhone(String tUrlPhone) {
		this.tUrlPhone = tUrlPhone;
	}

	public String gettIsPublished() {
		return tIsPublished;
	}

	public void settIsPublished(String tIsPublished) {
		this.tIsPublished = tIsPublished;
	}

	public String gettLastNodeId() {
		return tLastNodeId;
	}

	public void settLastNodeId(String tLastNodeId) {
		this.tLastNodeId = tLastNodeId;
	}

	public long gettVisitNum() {
		return tVisitNum;
	}

	public void settVisitNum(long tVisitNum) {
		this.tVisitNum = tVisitNum;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String getId() {
		return this.id;
	}

	@Override
	public void setId(String id) {
		this.id = id;
	}

}
