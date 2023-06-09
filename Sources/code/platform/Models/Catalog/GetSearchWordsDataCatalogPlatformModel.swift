

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var customJson: [String: Any]?

        public var uid: String?

        public var isActive: Bool?

        public var result: SearchKeywordResult

        public var words: [String]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case isActive = "is_active"

            case result

            case words

            case appId = "app_id"
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.uid = uid

            self.isActive = isActive

            self.result = result

            self.words = words

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var customJson: [String: Any]?

        public var uid: String?

        public var isActive: Bool?

        public var result: SearchKeywordResult

        public var words: [String]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case uid

            case isActive = "is_active"

            case result

            case words

            case appId = "app_id"
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.uid = uid

            self.isActive = isActive

            self.result = result

            self.words = words

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
