

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var type: String?

        public var url: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case meta
        }

        public init(meta: [String: Any]? = nil, type: String? = nil, url: String) {
            self.type = type

            self.url = url

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var type: String?

        public var url: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case meta
        }

        public init(meta: [String: Any]? = nil, type: String? = nil, url: String) {
            self.type = type

            self.url = url

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
