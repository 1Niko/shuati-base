package com.xseven;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

/**
 * @Author: xseven
 * @DateTime: 2021/1/7  10:53
 * @Description: TODO
 */
@SpringBootApplication
@MapperScan("com.xseven.system.mapper")
//开启swagger2
@EnableSwagger2WebMvc
public class ShuatiApplication {
    public static void main(String[] args) {
        SpringApplication.run(ShuatiApplication.class,args);
    }
}
