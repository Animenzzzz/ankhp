//
//  HupuService.swift
//  ANKHP
//
//  Created by mac on 2023/7/31.
//

import Foundation
import Alamofire


class HupuService: NSObject {
    
    
    /// params
    static let paramTagCode = "tagCode=nba"

    /// url
    static let urlNewsList = "https://games.mobileapi.hupu.com/3/8.0.48/basketballapi/news/v2/newsList"

    
    @objc class func reqNewList(){
        let reqUrl = urlNewsList + "?preCount=0&\(paramTagCode)"
        AF.request(reqUrl).response { response in
            debugPrint(response)
        }
    }
    

}
