

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var result: SearchKeywordResult1

        public var isActive: Bool?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case result

            case isActive = "is_active"

            case customJson = "_custom_json"

            case words

            case appId = "app_id"
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult1, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.result = result

            self.isActive = isActive

            self.customJson = customJson

            self.words = words

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            result = try container.decode(SearchKeywordResult1.self, forKey: .result)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var result: SearchKeywordResult1

        public var isActive: Bool?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case result

            case isActive = "is_active"

            case customJson = "_custom_json"

            case words

            case appId = "app_id"
        }

        public init(appId: String, isActive: Bool? = nil, result: SearchKeywordResult1, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.result = result

            self.isActive = isActive

            self.customJson = customJson

            self.words = words

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            result = try container.decode(SearchKeywordResult1.self, forKey: .result)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
