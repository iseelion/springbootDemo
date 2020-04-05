package com.zhang.springboot_demo.service.impl;

import com.zhang.springboot_demo.service.HelloService;
import org.springframework.stereotype.Component;

/**
 * @author 张其洋
 * @date 2020/4/5
 */
@Component
public class HelloServiceImpl implements HelloService {

    @Override
    public String sayHello() {
        return "Hello World";
    }
}
