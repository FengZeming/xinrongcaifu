package com.xinrong.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Investrecord;
import com.xinrong.bean.Project;
import com.xinrong.bean.Series;
import com.xinrong.dao.AcountsMapper;
import com.xinrong.dao.InvestrecordsMapper;
import com.xinrong.dao.ProjectMapper;
import com.xinrong.dao.SeriesMapper;
import com.xinrong.service.ProjectService;
import com.xinrong.util.BusinessNoUtil;
import com.xinrong.util.ProjectUtil;
@Service
public class ProjectServiceImpl implements ProjectService{
	@Autowired
   private ProjectMapper projectMapper;
	@Autowired
	private SeriesMapper seriesMapper;
	@Autowired
	private AcountsMapper acountsMapper;
	@Autowired
	private InvestrecordsMapper investrecordsMapper;
	
	
	public SeriesMapper getSeriesMapper() {
		return seriesMapper;
	}

	public void setSeriesMapper(SeriesMapper seriesMapper) {
		this.seriesMapper = seriesMapper;
	}
	public ProjectMapper getProjectMapper() {
		return projectMapper;
	}

	public void setProjectMapper(ProjectMapper projectMapper) {
		this.projectMapper = projectMapper;
	}
	
	
	public AcountsMapper getAcountsMapper() {
		return acountsMapper;
	}

	public void setAcountsMapper(AcountsMapper acountsMapper) {
		this.acountsMapper = acountsMapper;
	}

	public InvestrecordsMapper getInvestrecordsMapper() {
		return investrecordsMapper;
	}

	public void setInvestrecordsMapper(InvestrecordsMapper investrecordsMapper) {
		this.investrecordsMapper = investrecordsMapper;
	}

	/**
	 * 删除
	 */
	public boolean deleteByPrimaryKey(Integer id) {
		int i=projectMapper.deleteByPrimaryKey(id);
		if(i>0){
			return true;
		}
		return false;
	}

	/**
	 * 添加
	 */
	public boolean insert(Project project) {
		int i=projectMapper.insert(project);
		if (i>0) {
			return true;
		}
		return false;
	}

	/**
	 * 选择性添加
	 */
	public boolean insertSelective(Project project) {
		Integer seriesid=project.getSeriesid();
		//获取该系列的系列名称
		Series series=seriesMapper.selectByPrimaryKey(seriesid);
		String seriesname=series.getSeriesname();
		//获取该系列的回款方式
		Integer receivableway=series.getReceivableway();
		//获取该系列的当日最大id的项目名称
		Integer id=projectMapper.selectBiggistBySeiresId(seriesid, new Date());
		String end="";
		if(id==0||id==null){
			end="0000";
		}else{
			Project project2=projectMapper.selectByPrimaryKey(id);
			String projectname=project2.getProjectname();
			end=projectname.substring(projectname.length()-4);
		}
		
		String  newProjectName=ProjectUtil.createProjectName(seriesname, end);//创建新的项目名称
		project.setProjectname(newProjectName);//设置项目名称
		project.setProjectcreationtime(new Date());//设置项目创建日期
		project.setProjectprogress(1);//设置项目进程为未审核
		project.setReceivableway(receivableway);//设置项目回款方式
		int i=projectMapper.insertSelective(project);//项目表中添加记录
		if (i<=0) {
			return false;
		}
		
		//获取刚才创建的项目对象的id
		Integer projectid=projectMapper.selectMaxId();
		//创建项目资金账户对象
		Acounts acounts=new Acounts();
		acounts.setProjectid(projectid);
		acounts.setType(4);
		acounts.setMoney((double) 0);
		int j=acountsMapper.insertSelective(acounts);//向账户表中添加数据
		if(j<=0){
			return false;
		}
		return true;
	}

	/**
	 * 根据主键查询
	 */
	public Project selectByPrimaryKey(Integer id) {
		return projectMapper.selectByPrimaryKey(id);
	}

	/**
	 * 选择性更新
	 */
	public boolean updateByPrimaryKeySelective(Project record) {
		int i=projectMapper.updateByPrimaryKeySelective(record);
		if (i>0) {
			return true;
			
		}
		return false;
	}

	/**
	 * 更新
	 */
	public boolean updateByPrimaryKey(Project record) {
		int i=projectMapper.updateByPrimaryKey(record);
		if (i>0) {
			return true;
			
		}
		return false;
	}

	/**
	 * 查询全部
	 */
	public List<Project> selectAll(Project project) {
		return projectMapper.selectAll(project);
	}
	
	/**
	 * 根据系列id查询
	 */
	public List<Project> selectBySeriesId(int seriesId){
		List<Project> list=new ArrayList<Project>();
		Project project=new Project();
		project.setSeriesid(seriesId);
		list=projectMapper.selectAll(project);
		return list;
	}

	
	/**
	 * 投资
	 */
	public String invest(Integer userid,Integer projectid,Double investmoney,String password){
		Double commission=ProjectUtil.getCommission(investmoney);//佣金
		//创建用户资金账户表对象
		Acounts acounts=new Acounts();
		acounts.setUserid(userid);
		acounts.setPassword(password);
		acounts.setType(2);
		acounts=acountsMapper.selectOneByObject(acounts);
		if(acounts==null){
			return "none";//用户与交易密码不匹配
		}
		if(acounts.getMoney()<investmoney+commission){
			return "noEnoughMoney";//金额不足
		}
		acounts.setMoney(acounts.getMoney()-investmoney-commission);//账户减去投资金额和佣金
		int num1=acountsMapper.updateByPrimaryKeySelective(acounts);
		if(num1<=0){
			return "error";//未知错误
		}
		
		//创建项目资金账户表对象
		Acounts projectAcounts=new Acounts();
		projectAcounts.setProjectid(projectid);
		projectAcounts=acountsMapper.selectOneByObject(projectAcounts);
		projectAcounts.setMoney(projectAcounts.getMoney()+investmoney);//项目资金账户表获得融资金额
		int num2=acountsMapper.updateByPrimaryKeySelective(projectAcounts);
		if(num2<=0){
			return "error";//未知错误
		}
		
		//创建平台账户表对象
		Acounts platAcounts=new Acounts();
		platAcounts.setType(1);
		platAcounts=acountsMapper.selectOneByObject(platAcounts);
		platAcounts.setMoney(platAcounts.getMoney()+commission);//平台账户收取佣金
		int num3=acountsMapper.updateByPrimaryKeySelective(platAcounts);
		if(num3<=0){
			return "error";
		}
		
		//创建投资记录表对象
		Investrecord investrecord=new Investrecord();
		investrecord.setBusinessno(BusinessNoUtil.createInvestRecordNo(userid, projectid));
		investrecord.setItemid(projectid);
		investrecord.setUserid(userid);
		investrecord.setMoney(investmoney);
		investrecord.setExtramoney(commission);
		investrecord.setBusinessdate(new Date());
		investrecord.setBusinesstype(1);
		int num4=investrecordsMapper.insertSelective(investrecord);
		if(num4<=0){
			return "error";//未知错误
		}
		
		return "true";
	}

	/**
	 * 条件查询-获取一个对象
	 */
	public Project selectOneByObject(Project project) {
		return projectMapper.selectOneByObject(project);
	}
}
