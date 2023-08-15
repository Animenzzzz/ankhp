//
//  HPAPI.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import Foundation

/// 请求参数
let paramTagCode = "tagCode=nba"

/// URL
let urlNewsList = "https://games.mobileapi.hupu.com/3/8.0.48/basketballapi/news/v2/newsList"

func fullNewsList() -> String {
    let reqUrl = urlNewsList + "?preCount=0&\(paramTagCode)"
    return reqUrl
}
