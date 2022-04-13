import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var appId: String?

        public var uid: String?

        public var words: [String]?

        public var results: [[String: Any]]?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case uid

            case words

            case results

            case customJson = "_custom_json"
        }

        public init(appId: String?, results: [[String: Any]]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.appId = appId

            self.uid = uid

            self.words = words

            self.results = results

            self.customJson = customJson
        }

        public func duplicate() -> GetAutocompleteWordsData {
            let dict = self.dictionary!
            let copy = GetAutocompleteWordsData(dictionary: dict)!
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
                uid = try container.decode(String.self, forKey: .uid)

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
                results = try container.decode([[String: Any]].self, forKey: .results)

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

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
