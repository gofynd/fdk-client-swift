

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var uid: String?

        public var appId: String?

        public var isActive: Bool?

        public var words: [String]?

        public var customJson: [String: Any]?

        public var results: [AutocompleteResult]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case appId = "app_id"

            case isActive = "is_active"

            case words

            case customJson = "_custom_json"

            case results
        }

        public init(appId: String? = nil, isActive: Bool? = nil, results: [AutocompleteResult]? = nil, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.appId = appId

            self.isActive = isActive

            self.words = words

            self.customJson = customJson

            self.results = results
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
                results = try container.decode([AutocompleteResult].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetAutocompleteWordsData
         Used By: Catalog
     */

    class GetAutocompleteWordsData: Codable {
        public var uid: String?

        public var appId: String?

        public var isActive: Bool?

        public var words: [String]?

        public var customJson: [String: Any]?

        public var results: [AutocompleteResult]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case appId = "app_id"

            case isActive = "is_active"

            case words

            case customJson = "_custom_json"

            case results
        }

        public init(appId: String? = nil, isActive: Bool? = nil, results: [AutocompleteResult]? = nil, uid: String? = nil, words: [String]? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.appId = appId

            self.isActive = isActive

            self.words = words

            self.customJson = customJson

            self.results = results
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
                results = try container.decode([AutocompleteResult].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}
