

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DiscountOffer
         Used By: Cart
     */

    class DiscountOffer: Codable {
        public var discountAmount: Double?

        public var maxDiscountAmount: Double?

        public var maxUsagePerTransaction: Int?

        public var apportionDiscount: Bool?

        public var discountPrice: Double?

        public var code: String?

        public var discountPercentage: Double?

        public var partialCanRet: Bool?

        public var maxOfferQuantity: Int?

        public var minOfferQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case discountAmount = "discount_amount"

            case maxDiscountAmount = "max_discount_amount"

            case maxUsagePerTransaction = "max_usage_per_transaction"

            case apportionDiscount = "apportion_discount"

            case discountPrice = "discount_price"

            case code

            case discountPercentage = "discount_percentage"

            case partialCanRet = "partial_can_ret"

            case maxOfferQuantity = "max_offer_quantity"

            case minOfferQuantity = "min_offer_quantity"
        }

        public init(apportionDiscount: Bool? = nil, code: String? = nil, discountAmount: Double? = nil, discountPercentage: Double? = nil, discountPrice: Double? = nil, maxDiscountAmount: Double? = nil, maxOfferQuantity: Int? = nil, maxUsagePerTransaction: Int? = nil, minOfferQuantity: Int? = nil, partialCanRet: Bool? = nil) {
            self.discountAmount = discountAmount

            self.maxDiscountAmount = maxDiscountAmount

            self.maxUsagePerTransaction = maxUsagePerTransaction

            self.apportionDiscount = apportionDiscount

            self.discountPrice = discountPrice

            self.code = code

            self.discountPercentage = discountPercentage

            self.partialCanRet = partialCanRet

            self.maxOfferQuantity = maxOfferQuantity

            self.minOfferQuantity = minOfferQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

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
                maxUsagePerTransaction = try container.decode(Int.self, forKey: .maxUsagePerTransaction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apportionDiscount = try container.decode(Bool.self, forKey: .apportionDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)

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
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)

            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)

            try? container.encodeIfPresent(maxUsagePerTransaction, forKey: .maxUsagePerTransaction)

            try? container.encodeIfPresent(apportionDiscount, forKey: .apportionDiscount)

            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)

            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)

            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)

            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
        }
    }
}