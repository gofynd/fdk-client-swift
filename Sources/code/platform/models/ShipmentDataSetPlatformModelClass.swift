

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDataSet
         Used By: Orders
     */

    class ShipmentDataSet: Codable {
        public var shipmentStatus: [String: Any]

        public var deliveryCharge: Int?

        public var priceEffective: Int?

        public var refundCredit: Int?

        public var totalItems: Int

        public var fyndCredits: Int?

        public var brandCalculatedAmount: Int?

        public var cashbackApplied: Int?

        public var cashback: Int?

        public var totalBags: Int

        public var couponEffectiveDiscount: Int?

        public var shipmentId: String

        public var taxCollectedAtSource: Int?

        public var valueOfGood: Int?

        public var prices: ShipmentPricesDataInfo?

        public var shipmentImages: [String]?

        public enum CodingKeys: String, CodingKey {
            case shipmentStatus = "shipment_status"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case totalItems = "total_items"

            case fyndCredits = "fynd_credits"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashbackApplied = "cashback_applied"

            case cashback

            case totalBags = "total_bags"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case shipmentId = "shipment_id"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case prices

            case shipmentImages = "shipment_images"
        }

        public init(brandCalculatedAmount: Int? = nil, cashback: Int? = nil, cashbackApplied: Int? = nil, couponEffectiveDiscount: Int? = nil, deliveryCharge: Int? = nil, fyndCredits: Int? = nil, prices: ShipmentPricesDataInfo? = nil, priceEffective: Int? = nil, refundCredit: Int? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentStatus: [String: Any], taxCollectedAtSource: Int? = nil, totalBags: Int, totalItems: Int, valueOfGood: Int? = nil) {
            self.shipmentStatus = shipmentStatus

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.totalItems = totalItems

            self.fyndCredits = fyndCredits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.totalBags = totalBags

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.shipmentId = shipmentId

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.prices = prices

            self.shipmentImages = shipmentImages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentStatus = try container.decode([String: Any].self, forKey: .shipmentStatus)

            do {
                deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalItems = try container.decode(Int.self, forKey: .totalItems)

            do {
                fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Int.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(ShipmentPricesDataInfo.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
        }
    }
}
