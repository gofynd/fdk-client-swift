

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var cashbackApplied: Double

        public var cashback: Double

        public var codCharges: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var refundCredit: Double

        public var couponValue: Double

        public var taxCollectedAtSource: Double

        public var refundAmount: Double

        public var amountPaid: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var discount: Double

        public var amountPaidRoundoff: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case cashback

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundAmount = "refund_amount"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundAmount = refundAmount

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
