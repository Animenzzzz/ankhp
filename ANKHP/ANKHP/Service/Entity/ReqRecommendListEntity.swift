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
    let xid: String
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
    let attr, nickname, content: String
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

// MARK: - Encode/decode helpers

class JSONNull2: Codable, Hashable {

    public static func == (lhs: JSONNull2, rhs: JSONNull2) -> Bool {
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

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

