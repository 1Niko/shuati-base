package com.xseven.system.controller;


import com.xseven.response.Result;
import com.xseven.system.entity.TJudgment;
import com.xseven.system.service.TJudgmentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author kjj
 * @since 2021-01-29
 */
@Api(value = "判断题", tags = "判断题")
@RestController
@RequestMapping("/t-judgment")
public class TJudgmentController {
    @Autowired
    private TJudgmentService tJudgmentService;
    @ApiOperation("通过id获取判断题的题目")
    @GetMapping("/{id}")
    public Result getJudgment (@PathVariable("id") Integer id){
        TJudgment tJudgment = tJudgmentService.getById(id);
        return Result.ok().data("tJudgment",tJudgment);
    }

}

