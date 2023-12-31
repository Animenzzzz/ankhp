//
//  HPAPI.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import Foundation

// MARK: - 请求参数

private let paramTagCode = "tagCode=nba"
private let paramClient = "client=E91C96E9-E4DE-40BE-857A-E0BE80007DDA"
private let paramClientId = "clientId=138856427"
private let paramCrt = "crt=1692151856"

// MARK: - URL

// domain
private let hupuGamesDomain = "https://games.mobileapi.hupu.com/3/8.0.48"
private let hupuBBSDomain = "https://bbs.mobileapi.hupu.com/3/8.0.48"
// 赛事 -NBA列表
private let urlNewsList = "\(hupuGamesDomain)/basketballapi/news/v2/newsList"
// 推荐 列表
private let urlRecommendList = "\(hupuGamesDomain)/buffer/hotList"
// 热榜 列表
private let urlHotList = "\(hupuGamesDomain)/hotRank/"

var fullUrlNewsList: String {
    let reqUrl = urlNewsList + "?preCount=0&\(paramTagCode)"
    return reqUrl
}

var fullUrlRecommendList: String {
    let reqUrl = urlRecommendList + "?ab_items=0&bddid=AEJWAF5AWEZNJGKBQZU7W5373POL2JVOG7FIYHICPOOTQ6CMDLGA01&\(paramClient)&\(paramClientId)&codeVersion=8.0.48&\(paramCrt)&deviceId=BP1gyWykYRtiEB%2Bq0Ux1P82QN3qOIrFz7qSO25/KMrEl%2BaluNNZ9mm0XuwXxSwqd/vxy%2BK5C5pSwRyehrILCGPg%3D%3D&is_refresh=1&newapp=1&night=0&personalized=1&sign=a0d1a11a314bef55306d02e77bf740d0&teenagers=0&time_zone=Asia/Shanghai"
    return reqUrl
}

var fullUrlHotList: String {
    let reqUrl = urlHotList + "?category=0&cid=138856427&\(paramClient)&\(paramClientId)&\(paramCrt)"
    return reqUrl
}
