

import Foundation
public extension ApplicationClient {
    /*
         Model: LadderOfferItem
         Used By: Cart
     */
    class LadderOfferItem: Codable {
        public var minQuantity: Int?

        public var margin: Int?

        public var price: LadderPrice?

        public var type: String?

        public var maxQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case minQuantity = "min_quantity"

            case margin

            case price

            case type

            case maxQuantity = "max_quantity"
        }

        public init(margin: Int? = nil, maxQuantity: Int? = nil, minQuantity: Int? = nil, price: LadderPrice? = nil, type: String? = nil) {
            self.minQuantity = minQuantity

            self.margin = margin

            self.price = price

            self.type = type

            self.maxQuantity = maxQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                margin = try container.decode(Int.self, forKey: .margin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(LadderPrice.self, forKey: .price)

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
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
        }
    }
}
