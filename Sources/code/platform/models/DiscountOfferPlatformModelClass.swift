

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountOffer
         Used By: Cart
     */

    class DiscountOffer: Codable {
        public var discountPrice: Double?

        public var code: String?

        public var maxDiscountAmount: Double?

        public var minOfferQuantity: Int?

        public var discountAmount: Double?

        public var maxOfferQuantity: Int?

        public var discountPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case discountPrice = "discount_price"

            case code

            case maxDiscountAmount = "max_discount_amount"

            case minOfferQuantity = "min_offer_quantity"

            case discountAmount = "discount_amount"

            case maxOfferQuantity = "max_offer_quantity"

            case discountPercentage = "discount_percentage"
        }

        public init(code: String? = nil, discountAmount: Double? = nil, discountPercentage: Double? = nil, discountPrice: Double? = nil, maxDiscountAmount: Double? = nil, maxOfferQuantity: Int? = nil, minOfferQuantity: Int? = nil) {
            self.discountPrice = discountPrice

            self.code = code

            self.maxDiscountAmount = maxDiscountAmount

            self.minOfferQuantity = minOfferQuantity

            self.discountAmount = discountAmount

            self.maxOfferQuantity = maxOfferQuantity

            self.discountPercentage = discountPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountPrice = try container.decode(Double.self, forKey: .discountPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)

            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)

            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)

            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
        }
    }
}
