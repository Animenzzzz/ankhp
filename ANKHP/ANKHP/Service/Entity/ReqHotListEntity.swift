// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reqHotListEntity = try? JSONDecoder().decode(ReqHotListEntity.self, from: jsonData)

import Foundation

// MARK: - ReqHotListEntity
struct ReqHotListEntity: Codable {
    let result: Result3
    let crt: Int
}

// MARK: - Result
struct Result3: Codable {
    let listV2: [ListV23]
    let adPageID: String
    let count: Int

    enum CodingKeys: String, CodingKey {
        case listV2
        case adPageID = "ad_page_id"
        case count
    }
}

// MARK: - ListV2
struct ListV23: Codable {
    let isTop: Bool
    let order: Int
    let schemaURL, createTime: String
    let thread: Thread3

    enum CodingKeys: String, CodingKey {
        case isTop, order
        case schemaURL = "schemaUrl"
        case createTime, thread
    }
}

// MARK: - Thread
struct Thread3: Codable {
    let fid, createTime, lastpostTime, type: String
    let title: String
    let tid, visits: Int
    let forumLogo: String
    let lightReplies: [LightReply3]
    let puid, replies: Int
    let forumName: String
    let totalPics, recommendNum: Int
    let topicName, nickname: String
    let topicLogo, header: String
    let topicID: Int
    let attr: String
    let pics: [Pic3]
    let lights, shareNum: Int
    let share: Share3
    let isHot, contentType: Int
    let nftInfo: NftInfo3
    let isLock, status: Int

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
        case share
        case isHot = "is_hot"
        case contentType, nftInfo
        case isLock = "is_lock"
        case status
    }
}

// MARK: - LightReply
struct LightReply3: Codable {
    let lightCount, allLightCount, puid, totalPics: Int
    let nickname: String
    let header: String
    let pid: Int
    let attr: String
    let pics: [JSONAny3]
    let content: String
    let quote: Quote3?
    let createTime: Int

    enum CodingKeys: String, CodingKey {
        case lightCount = "light_count"
        case allLightCount, puid
        case totalPics = "total_pics"
        case nickname, header, pid, attr, pics, content, createTime, quote
    }
}

// MARK: - Quote
struct Quote3: Codable {
    let nickname: String?
    let attr, content: String
    let pid: Int
}

// MARK: - NftInfo
struct NftInfo3: Codable {
}

// MARK: - Pic
struct Pic3: Codable {
    let url: String
    let isGIF: Int
    let width, height: String

    enum CodingKeys: String, CodingKey {
        case url
        case isGIF = "is_gif"
        case width, height
    }
}

// MARK: - Share
struct Share3: Codable {
    let url: String
    let wechatMoments, wechat, qzone, weibo: String
    let qq, summary: String

    enum CodingKeys: String, CodingKey {
        case url
        case wechatMoments = "wechat_moments"
        case wechat, qzone, weibo, qq, summary
    }
}

// MARK: - Encode/decode helpers

class JSONNull3: Codable, Hashable {

    public static func == (lhs: JSONNull3, rhs: JSONNull3) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull3.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull3"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey3: CodingKey {
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

class JSONAny3: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny3.self, context)
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
            return JSONNull3()
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
                return JSONNull3()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey3.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey3>, forKey key: JSONCodingKey3) throws -> Any {
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
                return JSONNull3()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey3.self, forKey: key) {
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

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey3>) throws -> [String: Any] {
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
            } else if value is JSONNull3 {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey3.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey3>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey3(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull3 {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey3.self, forKey: key)
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
        } else if value is JSONNull3 {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny3.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey3.self) {
            self.value = try JSONAny3.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny3.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny3.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey3.self)
            try JSONAny3.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny3.encode(to: &container, value: self.value)
        }
    }
}

