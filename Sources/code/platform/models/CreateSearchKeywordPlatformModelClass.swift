

import Foundation
public extension PlatformClient {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var result: SearchKeywordResult

        public var words: [String]?

        public var appId: String?

        public var isActive: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case result

            case words

            case appId = "app_id"

            case isActive = "is_active"

            case customJson = "_custom_json"
        }

        public init(appId: String? = nil, isActive: Bool? = nil, result: SearchKeywordResult, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.result = result

            self.words = words

            self.appId = appId

            self.isActive = isActive

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            result = try container.decode(SearchKeywordResult.self, forKey: .result)

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
