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
 * @author kjj
 * @since 2021-01-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="TJudgment对象", description="")
public class TJudgment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @TableField("questionType")
    private String questiontype;

    private String topic;

    @TableField("correctAnswer")
    private String correctanswer;


}
