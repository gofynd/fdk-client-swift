

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPrices1
         Used By: Order
     */

    class ShipmentPrices1: Codable {
        public var refundCredit: Double

        public var discount: Double

        public var amountPaidRoundoff: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Double

        public var priceMarked: Double

        public var taxCollectedAtSource: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public var codCharges: Double

        public var fyndCredits: Double

        public var refundAmount: Double

        public var couponValue: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case refundAmount = "refund_amount"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.refundAmount = refundAmount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
