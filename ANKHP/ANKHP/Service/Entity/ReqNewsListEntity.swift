//
//  ReqNewsListEntity.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

// https://app.quicktype.io

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reqNewsListEntity = try? JSONDecoder().decode(ReqNewsListEntity.self, from: jsonData)

// MARK: - ReqNewsListEntity

struct ReqNewsListEntity: Codable {
    let errorCode, errorMsg: String
    let result: Result
    let success: Bool
    let traceID: JSONNull?
    let hostName, msg: String
    let status: Int

    enum CodingKeys: String, CodingKey {
        case errorCode, errorMsg, result, success
        case traceID = "traceId"
        case hostName, msg, status
    }
}

// MARK: - Result

struct Result: Codable {
    let adPageID: String
    let data: [Datum]
    let topNewsCount: Int

    enum CodingKeys: String, CodingKey {
        case adPageID = "ad_page_id"
        case data, topNewsCount
    }
}

// MARK: - Datum

struct Datum: Codable {
    let nid: String
    let tid: String?
    let type: TypeEnum
    let title: String
    let img: String
    let replies, lights: Int
    let link: String
    let linkType: LinkType?
    let badge: [[String: String?]]
    let publishTime: String
    let addTime: Int
    let oldNewsID: String
    let top: Bool
    let pv, gifList: JSONNull?
    let read: String
    let showComment: Int

    enum CodingKeys: String, CodingKey {
        case nid, tid, type, title, img, replies, lights, link, linkType, badge, publishTime, addTime
        case oldNewsID = "oldNewsId"
        case top, pv, gifList, read, showComment
    }
}

enum LinkType: String, Codable {
    case h5 = "H5"
    case post = "POST"
    case video = "VIDEO"
}

enum TypeEnum: String, Codable {
    case imgText = "IMG_TEXT"
    case link = "LINK"
    case video = "VIDEO"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}


/// json
//{
//    "errorCode": "",
//    "errorMsg": "",
//    "result": {
//        "ad_page_id": "nba.news",
//        "data": [{
//            "nid": "8338283",
//            "tid": "61675135",
//            "type": "IMG_TEXT",
//            "title": "欧文转推力挺哈登：他是在让莫雷为不诚实和不透明负责",
//            "img": "https://i5.hoopchina.com.cn/news-editor/2023-8-15/07-51-21/8e361672-53cf-42f5-8999-a12cbb0fde03.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 1258,
//            "lights": 50,
//            "link": "kanqiu://bbs/topic/61675135",
//            "linkType": null,
//            "badge": [{
//                "name": "置顶",
//                "color": "ff3f4c",
//                "v2DayColor": "EA0E20",
//                "v2NightColor": "F05663",
//                "relationUrl": null,
//                "colorBg": "FDECED",
//                "v2DayColorBg": "FDECED",
//                "v2NightColorBg": "3E2C32",
//                "iconDay": "",
//                "iconNight": ""
//            }],
//            "publishTime": "2023-08-15 07:55:49",
//            "addTime": 1692057349,
//            "oldNewsId": "1504211",
//            "top": true,
//            "pv": null,
//            "gifList": null,
//            "read": "8338283",
//            "showComment": 1
//        }, {
//            "nid": "8338365",
//            "tid": "61678849",
//            "type": "IMG_TEXT",
//            "title": "有动作了？美媒晒出恩比德将推特介绍中的76人球员简介删除",
//            "img": "https://i10.hoopchina.com.cn/news-editor/2023-8-15/12-33-15/8658e679-f61c-41d3-ba77-cd3da577c63f.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 1120,
//            "lights": 50,
//            "link": "kanqiu://bbs/topic/61678849",
//            "linkType": null,
//            "badge": [{
//                "name": "置顶",
//                "color": "ff3f4c",
//                "v2DayColor": "EA0E20",
//                "v2NightColor": "F05663",
//                "relationUrl": null,
//                "colorBg": "FDECED",
//                "v2DayColorBg": "FDECED",
//                "v2NightColorBg": "3E2C32",
//                "iconDay": "",
//                "iconNight": ""
//            }],
//            "publishTime": "2023-08-15 12:40:32",
//            "addTime": 1692074432,
//            "oldNewsId": "1504406",
//            "top": true,
//            "pv": null,
//            "gifList": null,
//            "read": "8338365",
//            "showComment": 1
//        }, {
//            "nid": "8339404",
//            "tid": "61679768",
//            "type": "IMG_TEXT",
//            "title": "塔克晒与哈登合照：我不会耍杂技，也不会对我的兄弟耍花招",
//            "img": "https://i10.hoopchina.com.cn/news-editor/2023-8-15/13-55-32/686ee7d2-f05b-4d66-ab93-acd8a2333712.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 287,
//            "lights": 48,
//            "link": "kanqiu://bbs/topic/61679768",
//            "linkType": null,
//            "badge": [{
//                "name": "置顶",
//                "color": "ff3f4c",
//                "v2DayColor": "EA0E20",
//                "v2NightColor": "F05663",
//                "relationUrl": null,
//                "colorBg": "FDECED",
//                "v2DayColorBg": "FDECED",
//                "v2NightColorBg": "3E2C32",
//                "iconDay": "",
//                "iconNight": ""
//            }],
//            "publishTime": "2023-08-15 13:56:03",
//            "addTime": 1692078963,
//            "oldNewsId": "1504429",
//            "top": true,
//            "pv": null,
//            "gifList": null,
//            "read": "8339404",
//            "showComment": 1
//        }, {
//            "nid": "8339360",
//            "tid": "61677646",
//            "type": "LINK",
//            "title": "中国男篮球员巡礼：崔永熙，有着劲爆打法的年轻国家队首发",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-rhc6lfrc-upload-1692063382590-5.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 428,
//            "lights": 48,
//            "link": "kanqiu://bbs/topic/61677646",
//            "linkType": "POST",
//            "badge": [{
//                "name": "置顶",
//                "color": "ff3f4c",
//                "v2DayColor": "EA0E20",
//                "v2NightColor": "F05663",
//                "relationUrl": null,
//                "colorBg": "FDECED",
//                "v2DayColorBg": "FDECED",
//                "v2NightColorBg": "3E2C32",
//                "iconDay": "",
//                "iconNight": ""
//            }],
//            "publishTime": "2023-08-15 11:14:40",
//            "addTime": 1692069280,
//            "oldNewsId": "1504343",
//            "top": true,
//            "pv": null,
//            "gifList": null,
//            "read": "8339360",
//            "showComment": 1
//        }, {
//            "nid": "8326954",
//            "tid": null,
//            "type": "LINK",
//            "title": "04-13年最佳新秀，你给他们新秀赛季的表现打几分？",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23813-ywofojrc-upload-1691887416194-14.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 0,
//            "lights": 0,
//            "link": "huputiyu://webview/openencodeurl?fullscreen=1&url=https%3A%2F%2Foffline-download.hupu.com%2Fonline%2Fprod%2F310016%2Fdetail.html%3FoutBizType%3Dcommon_basketball_first%26outBizNo%3D211&offlineSupport=0",
//            "linkType": "POST",
//            "badge": [{
//                "name": "置顶",
//                "color": "ff3f4c",
//                "v2DayColor": "EA0E20",
//                "v2NightColor": "F05663",
//                "relationUrl": null,
//                "colorBg": "FDECED",
//                "v2DayColorBg": "FDECED",
//                "v2NightColorBg": "3E2C32",
//                "iconDay": "",
//                "iconNight": ""
//            }],
//            "publishTime": "2023-08-14 19:57:39",
//            "addTime": 1692014259,
//            "oldNewsId": "1502899",
//            "top": true,
//            "pv": null,
//            "gifList": null,
//            "read": "8326954",
//            "showComment": 0
//        }, {
//            "nid": "8338434",
//            "tid": "61681487",
//            "type": "IMG_TEXT",
//            "title": "巴里：虽说纪录是用来打破的，但张伯伦的100分不会被打破",
//            "img": "https://i11.hoopchina.com.cn/news-editor/2023-8-15/16-08-43/10817b7e-2345-4c91-9de9-64e86b5f2bd5.jpeg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 12,
//            "lights": 4,
//            "link": "kanqiu://bbs/topic/61681487",
//            "linkType": null,
//            "badge": [],
//            "publishTime": "2023-08-15 16:09:06",
//            "addTime": 1692086946,
//            "oldNewsId": "1504542",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338434",
//            "showComment": 1
//        }, {
//            "nid": "8339460",
//            "tid": null,
//            "type": "LINK",
//            "title": "盘点海外知名乐队，你觉得哪一只最具传奇性？",
//            "img": "https://i5.hoopchina.com.cn/newsPost/23815-p73r5krc-upload-1692007779061-32.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 0,
//            "lights": 0,
//            "link": "huputiyu://webview/openencodeurl?fullscreen=1&url=https%3A%2F%2Foffline-download.hupu.com%2Fonline%2Fprod%2F310016%2Fdetail.html%3FoutBizType%3Dcommon_first%26outBizNo%3D1886&offlineSupport=0",
//            "linkType": "H5",
//            "badge": [],
//            "publishTime": "2023-08-15 16:08:44",
//            "addTime": 1692086924,
//            "oldNewsId": "1504541",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339460",
//            "showComment": 0
//        }, {
//            "nid": "8339459",
//            "tid": "61681432",
//            "type": "IMG_TEXT",
//            "title": "美媒：历史唯一盖帽1000次的后卫，韦德是被低估的防守者吗",
//            "img": "https://i11.hoopchina.com.cn/news-editor/2023-8-15/15-55-39/18921ae0-1c6b-4b00-abea-469b52f49f75.jpeg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 40,
//            "lights": 15,
//            "link": "kanqiu://bbs/topic/61681432",
//            "linkType": null,
//            "badge": [],
//            "publishTime": "2023-08-15 16:05:21",
//            "addTime": 1692086721,
//            "oldNewsId": "1504538",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339459",
//            "showComment": 1
//        }, {
//            "nid": "8339403",
//            "tid": "61679628",
//            "type": "LINK",
//            "title": "比肩约帝！KG：浓眉未来两年拿MVP，球迷：他像内马尔",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-fmjjborc-upload-1692078931013-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 19,
//            "lights": 3,
//            "link": "kanqiu://bbs/topic/61679628",
//            "linkType": "POST",
//            "badge": [],
//            "publishTime": "2023-08-15 16:00:15",
//            "addTime": 1692086415,
//            "oldNewsId": "1504428",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339403",
//            "showComment": 1
//        }, {
//            "nid": "8339445",
//            "tid": "61680275",
//            "type": "LINK",
//            "title": "韦德：2012年的热火能与任何历史强队相媲美",
//            "img": "https://i4.hoopchina.com.cn/newsPost/23815-derrkxrc-upload-1692085245618-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 25,
//            "lights": 13,
//            "link": "kanqiu://bbs/topic/61680275",
//            "linkType": "VIDEO",
//            "badge": [],
//            "publishTime": "2023-08-15 16:00:00",
//            "addTime": 1692086400,
//            "oldNewsId": "1504513",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339445",
//            "showComment": 1
//        }, {
//            "nid": "8338377",
//            "tid": "61679577",
//            "type": "LINK",
//            "title": "一方炮轰，一方强留！詹姆斯-哈登的肥皂剧将会走向何方",
//            "img": "https://i4.hoopchina.com.cn/newsPost/23815-lqgn0erc-upload-1692079003307-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 10,
//            "lights": 2,
//            "link": "kanqiu://bbs/topic/61679577",
//            "linkType": "POST",
//            "badge": [],
//            "publishTime": "2023-08-15 16:00:00",
//            "addTime": 1692086400,
//            "oldNewsId": "1504430",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338377",
//            "showComment": 1
//        }, {
//            "nid": "8338429",
//            "tid": "61681320",
//            "type": "IMG_TEXT",
//            "title": "巴里：普尔能签下顶薪很幸运，要我是GM我不会给他顶薪",
//            "img": "https://i3.hoopchina.com.cn/news-editor/2023-8-15/15-56-34/f9d5cf5c-3464-4073-918f-cb312dc7a187.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 23,
//            "lights": 10,
//            "link": "kanqiu://bbs/topic/61681320",
//            "linkType": null,
//            "badge": [],
//            "publishTime": "2023-08-15 15:57:28",
//            "addTime": 1692086248,
//            "oldNewsId": "1504534",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338429",
//            "showComment": 1
//        }, {
//            "nid": "8339451",
//            "tid": "61680417",
//            "type": "LINK",
//            "title": "美媒：下赛季是保罗夺冠的最后机会，勇士第二阵容火力强大",
//            "img": "https://i1.hoopchina.com.cn/newsPost/23815-abs6mrrc-upload-1692085656773-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 46,
//            "lights": 22,
//            "link": "kanqiu://bbs/topic/61680417",
//            "linkType": "VIDEO",
//            "badge": [],
//            "publishTime": "2023-08-15 15:50:00",
//            "addTime": 1692085800,
//            "oldNewsId": "1504524",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339451",
//            "showComment": 1
//        }, {
//            "nid": "8339452",
//            "tid": "61680473",
//            "type": "LINK",
//            "title": "76人GM曾说哈登改变了他人生，11年间从兄弟到闹掰",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-ni5jckrc-upload-1692085741907-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 26,
//            "lights": 7,
//            "link": "kanqiu://bbs/topic/61680473",
//            "linkType": "VIDEO",
//            "badge": [],
//            "publishTime": "2023-08-15 15:49:49",
//            "addTime": 1692085789,
//            "oldNewsId": "1504525",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339452",
//            "showComment": 1
//        }, {
//            "nid": "8339448",
//            "tid": "61681148",
//            "type": "IMG_TEXT",
//            "title": "美媒晒威少新赛季380万、库班被罚390万：威少是否工资过低",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-i9manurc-upload-1692068749975-13.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 60,
//            "lights": 25,
//            "link": "kanqiu://bbs/topic/61681148",
//            "linkType": null,
//            "badge": [],
//            "publishTime": "2023-08-15 15:45:22",
//            "addTime": 1692085522,
//            "oldNewsId": "1504518",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339448",
//            "showComment": 1
//        }, {
//            "nid": "8338397",
//            "tid": "61671522",
//            "type": "LINK",
//            "title": "终于硬了！公开喷莫X！哈登为何如此生气？",
//            "img": "https://i4.hoopchina.com.cn/newsPost/23815-rrqet5rc-upload-1692081383863-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 21,
//            "lights": 10,
//            "link": "kanqiu://bbs/topic/61671522",
//            "linkType": "POST",
//            "badge": [],
//            "publishTime": "2023-08-15 15:45:00",
//            "addTime": 1692085500,
//            "oldNewsId": "1504469",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338397",
//            "showComment": 1
//        }, {
//            "nid": "8338410",
//            "tid": null,
//            "type": "LINK",
//            "title": "盘点清朝年间重大历史事件，你觉得哪一桩影响最大？",
//            "img": "https://i5.hoopchina.com.cn/newsPost/23815-79lftwrc-upload-1692007779061-24.webp?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 0,
//            "lights": 0,
//            "link": "huputiyu://webview/openencodeurl?fullscreen=1&url=https%3A%2F%2Foffline-download.hupu.com%2Fonline%2Fprod%2F310016%2Fdetail.html%3FoutBizType%3Dcommon_first%26outBizNo%3D1604&offlineSupport=0",
//            "linkType": "H5",
//            "badge": [],
//            "publishTime": "2023-08-15 15:44:39",
//            "addTime": 1692085479,
//            "oldNewsId": "1504490",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338410",
//            "showComment": 0
//        }, {
//            "nid": "8339446",
//            "tid": "61680316",
//            "type": "LINK",
//            "title": "美媒：湖人锋线球员很多，雷迪什需展现能力争抢上场时间",
//            "img": "https://i5.hoopchina.com.cn/newsPost/23815-0nt497rc-upload-1692085298973-3.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 22,
//            "lights": 11,
//            "link": "kanqiu://bbs/topic/61680316",
//            "linkType": "VIDEO",
//            "badge": [],
//            "publishTime": "2023-08-15 15:41:55",
//            "addTime": 1692085315,
//            "oldNewsId": "1504514",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8339446",
//            "showComment": 1
//        }, {
//            "nid": "8338339",
//            "tid": null,
//            "type": "LINK",
//            "title": "波特和佩顿，你觉得谁的流失对于上个赛季的勇士影响更大？",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-nf3df3rc-upload-1692068941046-11.jpg?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 0,
//            "lights": 0,
//            "link": "huputiyu://webview/openencodeurl?fullscreen=1&url=https%3A%2F%2Fm.hupu.com%2Factivity%2Fwhoisthemajority%2Fvote%3FquestionId%3D56697",
//            "linkType": "POST",
//            "badge": [{
//                "name": "谁是大多数二选一",
//                "color": "ff7d27",
//                "v2DayColor": "24262B",
//                "v2NightColor": "EDEEF1",
//                "relationUrl": "huputiyu://news/topic/7977572?enName=nba",
//                "colorBg": "",
//                "v2DayColorBg": "F3F5FC",
//                "v2NightColorBg": "3A3F49",
//                "iconDay": "https://i2.hoopchina.com.cn/newsPost/22415-jjs6dgrc-upload-1650011248462-5.png",
//                "iconNight": "https://i1.hoopchina.com.cn/newsPost/22415-dtp56irc-upload-1650011248462-9.png"
//            }],
//            "publishTime": "2023-08-15 15:35:03",
//            "addTime": 1692084903,
//            "oldNewsId": "1504353",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338339",
//            "showComment": 0
//        }, {
//            "nid": "8338336",
//            "tid": null,
//            "type": "LINK",
//            "title": "后知后觉，说说什么道理是你最后悔没早点领悟的",
//            "img": "https://i2.hoopchina.com.cn/newsPost/23815-n2utcgrc-upload-1691371383405-1167.png?x-oss-process=image/resize,w_250/sharpen,100/format,webp,x-oss-process=image/rounded-corners,r_8",
//            "replies": 0,
//            "lights": 0,
//            "link": "huputiyu://bbs/topicTag?tagId=64278",
//            "linkType": "POST",
//            "badge": [],
//            "publishTime": "2023-08-15 15:32:56",
//            "addTime": 1692084776,
//            "oldNewsId": "1504345",
//            "top": false,
//            "pv": null,
//            "gifList": null,
//            "read": "8338336",
//            "showComment": 0
//        }],
//        "topNewsCount": 5
//    },
//    "success": true,
//    "traceId": null,
//    "hostName": "basketball-news-msv-20230814110946-0d1bc5b-6bd88dcddc-kddhn",
//    "msg": "",
//    "status": 200
//}
