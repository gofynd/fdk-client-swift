

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionItemRequest
         Used By: Catalog
     */

    class CollectionItemRequest: Codable {
        public var query: [CollectionQuery]?

        public var item: [ItemQueryForUserCollection]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case item

            case type
        }

        public init(item: [ItemQueryForUserCollection]? = nil, query: [CollectionQuery]? = nil, type: String? = nil) {
            self.query = query

            self.item = item

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode([ItemQueryForUserCollection].self, forKey: .item)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
