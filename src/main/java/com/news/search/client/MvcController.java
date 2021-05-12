/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.news.search.client;

import com.news.search.client.svc.NewsService;
import com.news.search.client.model.PalavraChave;
import com.news.search.client.model.News;
import com.news.search.client.model.News.Article;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author marcelo
 */
@SpringBootApplication
@EnableFeignClients
@Controller
public class MvcController {

    @Autowired
    public NewsService newsService;

    @RequestMapping("/")
    public String home() {
        System.out.println("Going home...");
        return "index";
    }

    @RequestMapping("/search")
    public String showForm(Model model) {
        PalavraChave pv = new PalavraChave();
        //palavra será usada no html form para receber os atributos
        model.addAttribute("pv", pv);

        return "search";
    }

    @PostMapping("/result")
    public String submitForm(@ModelAttribute("pv") PalavraChave pv, ModelMap model) {

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        System.out.println(dtf.format(now));

        News n = newsService.newsSearch(pv.getPalavra(), dtf.format(now));

        model.addAttribute("news", n);

        return "result";
    }
}
