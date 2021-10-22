package com.demo.RemoteDev

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class DemoController {

    @GetMapping("/")
    fun getStatus(): String {
        return "redoing local syncting"
    }
}
