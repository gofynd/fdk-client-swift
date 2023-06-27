

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var customJson: [String: Any]?

        public var words: [String]?

        public var results: [[String: Any]]?

        public var appId: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case words

            case results

            case appId = "app_id"

            case uid
        }

        public init(appId: String? = nil, results: [[String: Any]]? = nil, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.words = words

            self.results = results

            self.appId = appId

            self.uid = uid
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var customJson: [String: Any]?

        public var words: [String]?

        public var results: [[String: Any]]?

        public var appId: String?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case words

            case results

            case appId = "app_id"

            case uid
        }

        public init(appId: String? = nil, results: [[String: Any]]? = nil, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.words = words

            self.results = results

            self.appId = appId

            self.uid = uid
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
