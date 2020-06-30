package com.changdao.website.service;

import com.changdao.website.mapper.master.generator.ArticleMapper;
import com.changdao.website.mapper.slave.ArticleMapper1;
import com.changdao.website.model.domain.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdService {
    @Autowired
    private ArticleMapper articleMapper;
    public List<Article> findAd(){return articleMapper.findAd();}

    @Autowired
    private ArticleMapper1 articleMapper127;
    public List<Article> findAd127(){return articleMapper127.findAd();}
}
