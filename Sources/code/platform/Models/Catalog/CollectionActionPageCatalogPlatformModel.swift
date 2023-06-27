

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionActionPage
         Used By: Catalog
     */

    class CollectionActionPage: Codable {
        public var type: String?

        public var query: CollectionActionPageQuery?

        public enum CodingKeys: String, CodingKey {
            case type

            case query
        }

        public init(query: CollectionActionPageQuery? = nil, type: String? = nil) {
            self.type = type

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode(CollectionActionPageQuery.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionActionPage
         Used By: Catalog
     */

    class CollectionActionPage: Codable {
        public var type: String?

        public var query: CollectionActionPageQuery?

        public enum CodingKeys: String, CodingKey {
            case type

            case query
        }

        public init(query: CollectionActionPageQuery? = nil, type: String? = nil) {
            self.type = type

            self.query = query
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode(CollectionActionPageQuery.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }
}
