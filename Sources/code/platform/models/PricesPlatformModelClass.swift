

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var codCharges: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Double

        public var cashback: Double

        public var valueOfGood: Double

        public var amountPaid: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var refundAmount: Double

        public var fyndCredits: Double

        public var cashbackApplied: Double

        public var taxCollectedAtSource: Double

        public var refundCredit: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case cashback

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundAmount = "refund_amount"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.codCharges = codCharges

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundAmount = refundAmount

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
