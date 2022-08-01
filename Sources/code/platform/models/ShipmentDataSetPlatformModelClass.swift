

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDataSet
         Used By: Orders
     */

    class ShipmentDataSet: Codable {
        public var brandCalculatedAmount: Int?

        public var prices: ShipmentPricesDataInfo?

        public var valueOfGood: Int?

        public var priceEffective: Int?

        public var totalBags: Int

        public var deliveryCharge: Int?

        public var refundCredit: Int?

        public var cashbackApplied: Int?

        public var taxCollectedAtSource: Int?

        public var shipmentStatus: [String: Any]

        public var cashback: Int?

        public var shipmentId: String

        public var totalItems: Int

        public var fyndCredits: Int?

        public var couponEffectiveDiscount: Int?

        public var shipmentImages: [String]?

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case prices

            case valueOfGood = "value_of_good"

            case priceEffective = "price_effective"

            case totalBags = "total_bags"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case shipmentStatus = "shipment_status"

            case cashback

            case shipmentId = "shipment_id"

            case totalItems = "total_items"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case shipmentImages = "shipment_images"
        }

        public init(brandCalculatedAmount: Int? = nil, cashback: Int? = nil, cashbackApplied: Int? = nil, couponEffectiveDiscount: Int? = nil, deliveryCharge: Int? = nil, fyndCredits: Int? = nil, prices: ShipmentPricesDataInfo? = nil, priceEffective: Int? = nil, refundCredit: Int? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentStatus: [String: Any], taxCollectedAtSource: Int? = nil, totalBags: Int, totalItems: Int, valueOfGood: Int? = nil) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.prices = prices

            self.valueOfGood = valueOfGood

            self.priceEffective = priceEffective

            self.totalBags = totalBags

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.shipmentStatus = shipmentStatus

            self.cashback = cashback

            self.shipmentId = shipmentId

            self.totalItems = totalItems

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.shipmentImages = shipmentImages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

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
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

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

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

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

            do {
                cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatus = try container.decode([String: Any].self, forKey: .shipmentStatus)

            do {
                cashback = try container.decode(Int.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            totalItems = try container.decode(Int.self, forKey: .totalItems)

            do {
                fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

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

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
        }
    }
}
