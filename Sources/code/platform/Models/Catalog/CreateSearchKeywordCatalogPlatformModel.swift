

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var isActive: Bool?

        public var result: SearchKeywordResult

        public var customJson: [String: Any]?

        public var appId: String

        public var words: [String]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case result

            case customJson = "_custom_json"

            case appId = "app_id"

            case words
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.result = result

            self.customJson = customJson

            self.appId = appId

            self.words = words
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var isActive: Bool?

        public var result: SearchKeywordResult

        public var customJson: [String: Any]?

        public var appId: String

        public var words: [String]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case result

            case customJson = "_custom_json"

            case appId = "app_id"

            case words
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.result = result

            self.customJson = customJson

            self.appId = appId

            self.words = words
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)
        }
    }
}
