package com.fc.v2.controller.admin.goview;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.GoviewProject;
import com.fc.v2.model.auto.GoviewProjectData;
import com.fc.v2.model.auto.GoviewProjectDataExample;
import com.fc.v2.model.custom.GoviewProjectVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.GoviewProjectDataService;
import com.fc.v2.service.GoviewProjectService;
import com.fc.v2.util.BeanUtils;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 项目表Controller
 * @ClassName: GoviewProjectController
 * @author fuce
 * @date 2022-05-18 21:43:25
 */
@Api(value = "前端项目表")
@Controller
@RequestMapping("/api/goview/project")
public class GoviewProjectAPi extends BaseController{
	
	
	@Autowired
	private GoviewProjectService goviewProjectService;
	@Autowired
	private GoviewProjectDataService goviewProjectDataService;
	
	
	
	/**
	 * list集合
	 * @param tablepar
	 * @param searchText
	 * @return
	 */
	//@Log(title = "项目表", action = "111")
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/list")
	@SaCheckPermission("gen:goviewProject:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar,GoviewProject goviewProject){
		PageInfo<GoviewProject> page=goviewProjectService.list(tablepar,goviewProject) ; 
		ResultTable resultTable=  pageTable(page.getList(),page.getTotal());
		resultTable.setCode(200);
		return resultTable;
	}
	
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "项目表新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/create")
	@SaCheckPermission("gen:goviewProject:add")
	@ResponseBody
	public AjaxResult add(@RequestBody GoviewProject goviewProject){
		int b=goviewProjectService.insertSelective(goviewProject);
		if(b>0){
			return AjaxResult.successData(200, goviewProjectService.selectByPrimaryKey(goviewProject.getId())).put("msg", "创建成功");
		}else{
			return error();
		}
	}
	
	/**
	 * 项目表删除
	 * @param ids
	 * @return
	 */
	//@Log(title = "项目表删除", action = "111")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/delete")
	@SaCheckPermission("gen:goviewProject:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
		int b=goviewProjectService.deleteByPrimaryKey(ids);
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	
	
	/**
     * 修改保存
     */
    //@Log(title = "项目表修改", action = "111")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @SaCheckPermission("gen:goviewProject:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody GoviewProject goviewProject)
    {
        return toAjax(goviewProjectService.updateByPrimaryKeySelective(goviewProject));
    }
    
	
	/**
	 * 项目重命名
	 * @author fuce
	 * @date 2022年5月20日
	 * @param @param goviewProject
	 * @param @return 参数
	 * @return AjaxResult 返回类型
	 * @throws
	 */
    //@Log(title = "项目表修改", action = "111")
	@ApiOperation(value = "项目重命名", notes = "项目重命名")
    @SaCheckPermission("gen:goviewProject:edit")
    @PostMapping("/rename")
    @ResponseBody
    public AjaxResult rename(@RequestBody GoviewProject goviewProject)
    {
		GoviewProject goviewProject2=new GoviewProject();
    	goviewProject2.setId(goviewProject.getId());
    	goviewProject2.setProjectName(goviewProject.getProjectName());
        return toAjax(goviewProjectService.updateByPrimaryKeySelective(goviewProject2));
    }

	
    //发布/取消项目状态
    @PutMapping("/publish")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody GoviewProject goviewProject){
    	if(goviewProject.getState()==-1||goviewProject.getState()==1) {
    		GoviewProject goviewProject2=new GoviewProject();
        	goviewProject2.setId(goviewProject.getId());
        	goviewProject2.setState(goviewProject.getState());
    		int i=goviewProjectService.updateVisible(goviewProject2);
    		return toAjax(i);
    	}
    	return error("警告非法字段");
	}
    
    
    /**
	 * 获取项目存储数据
	 * @param id 项目id
	 * @param mmap
	 * @return
	 */
	@ApiOperation(value = "获取项目存储数据", notes = "获取项目存储数据")
	@GetMapping("/getData")
	@ResponseBody
    public AjaxResult getData(String projectId, ModelMap map)
    {
		GoviewProject goviewProject= goviewProjectService.selectByPrimaryKey(projectId);
		
		GoviewProjectData blogText=goviewProjectDataService.getProjectid(projectId);
		if(blogText!=null) {
			GoviewProjectVo goviewProjectVo=new GoviewProjectVo();
			BeanUtils.copyBeanProp(goviewProjectVo, goviewProject);
			goviewProjectVo.setContent(blogText.getDataToStr());
			return AjaxResult.successData(200,goviewProjectVo).put("msg","获取成功");
		}
		return AjaxResult.successData(200, null).put("msg","无数据");
        
    }
	@ApiOperation(value = "保存项目数据", notes = "保存项目数据")
	@PostMapping("/save/data")
	@ResponseBody
	public AjaxResult saveData(GoviewProjectData data) {
		
		GoviewProject goviewProject= goviewProjectService.selectByPrimaryKey(data.getProjectId());
		if(goviewProject==null) {
			return AjaxResult.error("没有该项目ID");
		}
		GoviewProjectDataExample dataExample=new GoviewProjectDataExample();
		dataExample.createCriteria().andProjectIdEqualTo(goviewProject.getId());
		List<GoviewProjectData> list= goviewProjectDataService.selectByExample(dataExample);
		int i=0;
		if(list!=null&&list.size()>0) {
			GoviewProjectDataExample dataExample2=new GoviewProjectDataExample();
			dataExample2.createCriteria().andProjectIdEqualTo(goviewProject.getId());
			i=goviewProjectDataService.updateByExampleSelective(data, dataExample2);
		}else {
			i=goviewProjectDataService.insertSelective(data);
		}
		if(i>0) {
			return AjaxResult.success("数据保存成功");
		}
		return AjaxResult.error("获取保存失败");
	}

    
    

	
}
