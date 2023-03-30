

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ProductAvailability
         Used By: Cart
     */

    class ProductAvailability: Codable {
        public var otherStoreQuantity: Int?

        public var sizes: [String]?

        public var isValid: Bool?

        public var outOfStock: Bool?

        public var deliverable: Bool?

        public enum CodingKeys: String, CodingKey {
            case otherStoreQuantity = "other_store_quantity"

            case sizes

            case isValid = "is_valid"

            case outOfStock = "out_of_stock"

            case deliverable
        }

        public init(deliverable: Bool? = nil, isValid: Bool? = nil, otherStoreQuantity: Int? = nil, outOfStock: Bool? = nil, sizes: [String]? = nil) {
            self.otherStoreQuantity = otherStoreQuantity

            self.sizes = sizes

            self.isValid = isValid

            self.outOfStock = outOfStock

            self.deliverable = deliverable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverable = try container.decode(Bool.self, forKey: .deliverable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
        }
    }
}
