package com.xinrong.controller.before.finacing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinrong.bean.Series;
import com.xinrong.service.SeriesService;
/**
 * 融资页
 * @author lenovo
 *
 */
@Controller
public class FinacingController {
	@Autowired
	private SeriesService seriesService;
	
	/**
	 * 进入融资页
	 */
	@RequestMapping("xin/finacing.html")
	public String goIntoFinacingIndex(){
		return "xin/finacing";
	}
	
	/**
	 * 获取下拉菜单Ajax
	 */
	@RequestMapping("getSeriesListAjax")
	@ResponseBody
	public Object getSeriesListAjax(){
		Series series=new Series();
		List<Series> seriesList=seriesService.selectAll(series);
		return seriesList;
	}
}
