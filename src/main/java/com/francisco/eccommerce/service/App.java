package com.francisco.eccommerce.service;

import com.francisco.eccommerce.service.config.FileStorageProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({FileStorageProperties.class})
public class App {
    public static void main (String[] args) {SpringApplication.run(App.class, args);}
}
