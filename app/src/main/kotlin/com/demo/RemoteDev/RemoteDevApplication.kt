package com.demo.RemoteDev

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class RemoteDevApplication

fun main(args: Array<String>) {
	runApplication<RemoteDevApplication>(*args)
}
