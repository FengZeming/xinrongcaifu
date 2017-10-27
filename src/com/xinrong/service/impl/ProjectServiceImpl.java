package com.xinrong.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xinrong.bean.Project;
import com.xinrong.bean.Series;
import com.xinrong.dao.ProjectMapper;
import com.xinrong.dao.SeriesMapper;
import com.xinrong.service.ProjectService;
import com.xinrong.util.ProjectUtil;
@Service
public class ProjectServiceImpl implements ProjectService{
	@Autowired
   private ProjectMapper projectMapper;
	@Autowired
	private SeriesMapper seriesMapper;
	
	
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
		int i=projectMapper.insertSelective(project);
		if (i>0) {
			return true;
		}
		return false;
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
}
