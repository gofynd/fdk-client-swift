import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateAutocompleteWordsResponse
         Used By: Catalog
     */

    class CreateAutocompleteWordsResponse: Codable {
        public var appId: String?

        public var words: [String]?

        public var customJson: [String: Any]?

        public var results: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case words

            case customJson = "_custom_json"

            case results
        }

        public init(appId: String? = nil, results: [[String: Any]]? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.appId = appId

            self.words = words

            self.customJson = customJson

            self.results = results
        }

        public func duplicate() -> CreateAutocompleteWordsResponse {
            let dict = self.dictionary!
            let copy = CreateAutocompleteWordsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                results = try container.decode([[String: Any]].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}
