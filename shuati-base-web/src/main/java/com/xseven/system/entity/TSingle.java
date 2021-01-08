package com.xseven.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author xseven
 * @since 2021-01-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="TSingle对象", description="")
public class TSingle implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "题号")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "题型")
    @TableField("questionType")
    private String questiontype;

    @ApiModelProperty(value = "题目")
    private String topic;

    @TableField("answerA")
    private String answera;

    @TableField("answerB")
    private String answerb;

    @TableField("answerC")
    private String answerc;

    @TableField("answerD")
    private String answerd;

    @TableField("correctAnswer")
    private String correctanswer;


}
