/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.news.search.client.svc;

import com.news.search.client.model.News;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author marcelo
 */
@FeignClient(url = "https://newsapi.org/v2/", name = "NewsService")
public interface NewsService {

    @GetMapping("everything?q={kw}&language=pt&from={data}&sortBy=publishedAt&apiKey=")
    News newsSearch(@PathVariable("kw") String kw, @PathVariable("data") String data);

}
