package com.xseven.system.controller;


import com.xseven.response.Result;
import com.xseven.system.entity.TSingle;
import com.xseven.system.service.TSingleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author xseven
 * @since 2021-01-07
 */
@Api(value = "单项选择题", tags = "单项选择题")
@RestController
@RequestMapping("/t-single")
public class TSingleController {
    private final TSingleService tSingleService;

    public TSingleController(TSingleService tSingleService) {
        this.tSingleService = tSingleService;
    }

    @ApiOperation("按id获取题目")
    @GetMapping("/{id}")
    public Result getSingle(@PathVariable("id") Integer id){
        TSingle tSingle = tSingleService.getById(id);
        return Result.ok().data("tSingle",tSingle);
    }
}

