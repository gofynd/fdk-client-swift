import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetSearchWordsData
         Used By: Catalog
     */

    class GetSearchWordsData: Codable {
        public var uid: String?

        public var customJson: [String: Any]?

        public var words: [String]?

        public var appId: String?

        public var result: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case customJson = "_custom_json"

            case words

            case appId = "app_id"

            case result
        }

        public init(appId: String?, result: [String: Any]?, uid: String?, words: [String]?, customJson: [String: Any]?) {
            self.uid = uid

            self.customJson = customJson

            self.words = words

            self.appId = appId

            self.result = result
        }

        public func duplicate() -> GetSearchWordsData {
            let dict = self.dictionary!
            let copy = GetSearchWordsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                result = try container.decode([String: Any].self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}
