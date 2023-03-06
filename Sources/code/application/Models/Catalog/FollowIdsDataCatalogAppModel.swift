

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: FollowIdsData
         Used By: Catalog
     */
    class FollowIdsData: Codable {
        public var products: [Int]?

        public var brands: [Int]?

        public var collections: [Int]?

        public enum CodingKeys: String, CodingKey {
            case products

            case brands

            case collections
        }

        public init(brands: [Int]? = nil, collections: [Int]? = nil, products: [Int]? = nil) {
            self.products = products

            self.brands = brands

            self.collections = collections
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                products = try container.decode([Int].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collections = try container.decode([Int].self, forKey: .collections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(collections, forKey: .collections)
        }
    }
}
