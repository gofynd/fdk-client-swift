

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: OfferItem
         Used By: PosCart
     */
    class OfferItem: Codable {
        public var best: Bool?

        public var price: OfferPrice?

        public var margin: Int?

        public var type: String?

        public var autoApplied: Bool?

        public var total: Double?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case best

            case price

            case margin

            case type

            case autoApplied = "auto_applied"

            case total

            case quantity
        }

        public init(autoApplied: Bool? = nil, best: Bool? = nil, margin: Int? = nil, price: OfferPrice? = nil, quantity: Int? = nil, total: Double? = nil, type: String? = nil) {
            self.best = best

            self.price = price

            self.margin = margin

            self.type = type

            self.autoApplied = autoApplied

            self.total = total

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                best = try container.decode(Bool.self, forKey: .best)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(OfferPrice.self, forKey: .price)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApplied = try container.decode(Bool.self, forKey: .autoApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

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

            try? container.encodeIfPresent(best, forKey: .best)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
