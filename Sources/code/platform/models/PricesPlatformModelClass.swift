

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var cashback: Double

        public var cashbackApplied: Double

        public var fyndCredits: Double

        public var codCharges: Double

        public var refundCredit: Double

        public var valueOfGood: Double

        public var discount: Double

        public var amountPaidRoundoff: Double

        public var taxCollectedAtSource: Double

        public var amountPaid: Double

        public var refundAmount: Double

        public var priceMarked: Double

        public var couponValue: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Double.self, forKey: .cashback)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
