//
//  HPAPIProtocols.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import Foundation

protocol HPAPIProtocols {
    ///  赛事--NBA列表
    func reqNewsList(_ completionHandler: @escaping (_ error: NSError?, _ data: ReqNewsListEntity?) -> Void)
    ///  推荐列表
    func reqHotList(_ completionHandler: @escaping (_ error: NSError?, _ data: ReqHotListEntity?) -> Void)
}
