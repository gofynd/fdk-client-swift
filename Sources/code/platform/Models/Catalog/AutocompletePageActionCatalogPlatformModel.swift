

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var url: String?

        public var type: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case url

            case type

            case params

            case query
        }

        public init(params: [String: Any]? = nil, query: [String: Any]? = nil, type: String? = nil, url: String? = nil) {
            self.url = url

            self.type = type

            self.params = params

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AutocompletePageAction
         Used By: Catalog
     */

    class AutocompletePageAction: Codable {
        public var url: String?

        public var type: String?

        public var params: [String: Any]?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case url

            case type

            case params

            case query
        }

        public init(params: [String: Any]? = nil, query: [String: Any]? = nil, type: String? = nil, url: String? = nil) {
            self.url = url

            self.type = type

            self.params = params

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([String: Any].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
