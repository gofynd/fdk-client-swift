

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSize
         Used By: Catalog
     */
    class ProductSize: Codable {
        public var isAvailable: Bool?

        public var display: String?

        public var value: String?

        public var sellerIdentifiers: [String]?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case display

            case value

            case sellerIdentifiers = "seller_identifiers"

            case quantity
        }

        public init(display: String? = nil, isAvailable: Bool? = nil, quantity: Int? = nil, sellerIdentifiers: [String]? = nil, value: String? = nil) {
            self.isAvailable = isAvailable

            self.display = display

            self.value = value

            self.sellerIdentifiers = sellerIdentifiers

            self.quantity = quantity
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
                display = try container.decode(String.self, forKey: .display)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(sellerIdentifiers, forKey: .sellerIdentifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
