

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSize
         Used By: Catalog
     */
    class ProductSize: Codable {
        public var isAvailable: Bool?

        public var value: String?

        public var sellerIdentifiers: [String]?

        public var display: String?

        public var dimension: Dimension?

        public var quantity: Int?

        public var weight: Weight?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case value

            case sellerIdentifiers = "seller_identifiers"

            case display

            case dimension

            case quantity

            case weight
        }

        public init(dimension: Dimension? = nil, display: String? = nil, isAvailable: Bool? = nil, quantity: Int? = nil, sellerIdentifiers: [String]? = nil, value: String? = nil, weight: Weight? = nil) {
            self.isAvailable = isAvailable

            self.value = value

            self.sellerIdentifiers = sellerIdentifiers

            self.display = display

            self.dimension = dimension

            self.quantity = quantity

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifiers = try container.decode([String].self, forKey: .sellerIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimension.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(sellerIdentifiers, forKey: .sellerIdentifiers)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
