package com.fc.v2.controller.admin.goview;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.GoviewProject;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.GoviewProjectService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 项目表Controller
 * @ClassName: GoviewProjectController
 * @author fuce
 * @date 2022-05-18 21:43:25
 */
@Api(value = "前端项目表")
@Controller
@RequestMapping("/api/GoviewProject")
public class GoviewProjectAPi extends BaseController{
	
	
	@Autowired
	private GoviewProjectService goviewProjectService;
	
	
	
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
		return pageTable(page.getList(),page.getTotal());
	}
	
	
    /**
     * 新增保存
     * @param 
     * @return
     */
	//@Log(title = "项目表新增", action = "111")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
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
	@DeleteMapping("/remove")
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
	 * 修改状态
	 * @param record
	 * @return
	 */
    @PutMapping("/updateVisible")
	@ResponseBody
    public AjaxResult updateVisible(@RequestBody GoviewProject goviewProject){
		int i=goviewProjectService.updateVisible(goviewProject);
		return toAjax(i);
	}

    
    

	
}
