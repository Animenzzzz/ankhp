//
//  ReqHotListEntity.swift
//  ANKHP
//
//  Created by mac on 2023/8/16.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reqHotListEntity = try? JSONDecoder().decode(ReqHotListEntity.self, from: jsonData)

import Foundation

// MARK: - ReqHotListEntity
struct ReqRecommendListEntity: Codable {
    let result: Result2
    let isLogin, crt: Int
    let requestID: String

    enum CodingKeys: String, CodingKey {
        case result
        case isLogin = "is_login"
        case crt
        case requestID = "requestId"
    }
}

// MARK: - Result
struct Result2: Codable {
    let data: [Datum2]
    let topData: [JSONAny]
    let notice: String
    let navi: [JSONAny]
    let empty: Bool
    let adPageID: String
    let bannerNav: [BannerNav]

    enum CodingKeys: String, CodingKey {
        case data, topData, notice, navi, empty
        case adPageID = "ad_page_id"
        case bannerNav = "banner_nav"
    }
}

// MARK: - BannerNav
struct BannerNav: Codable {
    let schema: String
    let icon: [String]
    let name: String
}

// MARK: - Datum
struct Datum2: Codable {
    let xid: String?
    let data: DataClass
    let type, schemaURL: String
    let filterWords: [FilterWord]
    let rec: String
    let label: String?

    enum CodingKeys: String, CodingKey {
        case xid, data, type
        case schemaURL = "schema_url"
        case filterWords = "filter_words"
        case rec, label
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let fid, createTime, lastpostTime, type: String
    let title: String
    let tid, visits: Int
    let forumLogo: String
    let lightReplies: [LightReply]
    let puid, replies: Int
    let forumName: String
    let totalPics, recommendNum: Int
    let topicName, nickname: String
    let topicLogo: String
    let header: String
    let topicID: Int
    let attr: String
    let pics: [Pic]
    let lights, shareNum: Int
    let bgColor: String?
    let share: Share
    let summary: String?
    let isHot: Int
    let tagInfoList: [TagInfoList]?
    let contentType, reason: Int
    let nftInfo: NftInfo
    let isLock, status: Int
    let video: Video?

    enum CodingKeys: String, CodingKey {
        case fid
        case createTime = "create_time"
        case lastpostTime = "lastpost_time"
        case type, title, tid, visits
        case forumLogo = "forum_logo"
        case lightReplies = "light_replies"
        case puid, replies
        case forumName = "forum_name"
        case totalPics = "total_pics"
        case recommendNum = "recommend_num"
        case topicName = "topic_name"
        case nickname
        case topicLogo = "topic_logo"
        case header
        case topicID = "topic_id"
        case attr, pics, lights
        case shareNum = "share_num"
        case bgColor = "bg_color"
        case share, summary
        case isHot = "is_hot"
        case tagInfoList, contentType, reason, nftInfo
        case isLock = "is_lock"
        case status, video
    }
}

// MARK: - LightReply
struct LightReply: Codable {
    let lightCount, allLightCount, puid, totalPics: Int
    let nickname: String
    let header: String
    let pid: Int
    let attr: String
    let pics: [Pic]
    let content: String
    let createTime: Int
    let quote: Quote?

    enum CodingKeys: String, CodingKey {
        case lightCount = "light_count"
        case allLightCount, puid
        case totalPics = "total_pics"
        case nickname, header, pid, attr, pics, content, createTime, quote
    }
}

// MARK: - Pic
struct Pic: Codable {
    let url: String
    let isGIF: Int
    let width, height: String

    enum CodingKeys: String, CodingKey {
        case url
        case isGIF = "is_gif"
        case width, height
    }
}

// MARK: - Quote
struct Quote: Codable {
    let nickname: String?
    let attr, content: String
    let pid: Int
}

// MARK: - NftInfo
struct NftInfo: Codable {
}

// MARK: - Share
struct Share: Codable {
    let url: String
    let wechatMoments, wechat, qzone, weibo: String
    let qq, summary: String

    enum CodingKeys: String, CodingKey {
        case url
        case wechatMoments = "wechat_moments"
        case wechat, qzone, weibo, qq, summary
    }
}

// MARK: - TagInfoList
struct TagInfoList: Codable {
    let tagID: Int
    let tagName, tagSchema, description: String
    let followNum, discussNum: Int
    let icon: String
    let aggregationType: String
    let createDt: Int
    let competitionType: String

    enum CodingKeys: String, CodingKey {
        case tagID = "tagId"
        case tagName, tagSchema, description, followNum, discussNum, icon, aggregationType, createDt, competitionType
    }
}

// MARK: - Video
struct Video: Codable {
    let duration: String
    let vid: Int
    let img: String
    let size: String
    let width: Int
    let playNum: String
    let url: String
    let bulletCommentNum: String
    let height: Int
    let bgImg: String

    enum CodingKeys: String, CodingKey {
        case duration, vid, img, size, width
        case playNum = "play_num"
        case url
        case bulletCommentNum = "bullet_comment_num"
        case height
        case bgImg = "bg_img"
    }
}

// MARK: - FilterWord
struct FilterWord: Codable {
    let id, name, type: String
    let selected: Bool

    enum CodingKeys: String, CodingKey {
        case id, name, type
        case selected = "_selected"
    }
}

