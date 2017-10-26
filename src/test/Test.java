package test;

import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xinrong.bean.Acounts;
import com.xinrong.bean.Project;
import com.xinrong.bean.Provinces;
import com.xinrong.bean.Series;
import com.xinrong.service.AccountService;
import com.xinrong.service.ProjectService;
import com.xinrong.service.ProvincesService;
import com.xinrong.service.SeriesService;
import com.xinrong.util.DateTimeUtil;
import com.xinrong.util.ProjectUtil;

public class Test {

	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		ProjectService projectService=(ProjectService)context.getBean("projectServiceImpl");
//		Project project=new Project();
//		List<Project> list=projectService.selectAll(project);
		Project project=projectService.selectByPrimaryKey(1);
		System.out.println(project.getProjectname());
		System.out.println(project.getReceivablewayName());
	}
}
