package com.xseven.system.controller;


import com.xseven.response.Result;
import com.xseven.system.entity.TJudgement;
import com.xseven.system.service.TJudgementService;
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
 * @since 2021-01-28
 */
@Api(value = "判断题", tags = "判断题")
@RestController
@RequestMapping("/t-judgement")
public class TJudgementController {
    @Autowired
    private TJudgementService tJudgementService;

    @ApiOperation("通过id获取判断题的题目")
    @GetMapping("/{id}")
    public Result getJudgement (@PathVariable("id") Integer id){
        TJudgement tJudgement = tJudgementService.getById(id);
        return Result.ok().data("tJudgement",tJudgement);
    }

}

