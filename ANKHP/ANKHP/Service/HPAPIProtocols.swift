//
//  HPAPIProtocols.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import Foundation

protocol HPAPIProtocols {
    /// 主页列表
    func reqNewsList(_ completionHandler: @escaping (_ error: NSError?, _ data: ReqNewsListEntity?) -> Void)
}
