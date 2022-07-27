

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var discount: Double

        public var cashbackApplied: Double

        public var couponValue: Double

        public var deliveryCharge: Double

        public var codCharges: Double

        public var cashback: Double

        public var refundAmount: Double

        public var amountPaidRoundoff: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var taxCollectedAtSource: Double

        public var refundCredit: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case discount

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case cashback

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.cashback = cashback

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashback = try container.decode(Double.self, forKey: .cashback)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
