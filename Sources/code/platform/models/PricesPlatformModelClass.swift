

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var amountPaidRoundoff: Double

        public var couponValue: Double

        public var valueOfGood: Double

        public var deliveryCharge: Double

        public var cashback: Double

        public var priceEffective: Double

        public var fyndCredits: Double

        public var amountPaid: Double

        public var cashbackApplied: Double

        public var codCharges: Double

        public var refundCredit: Double

        public var refundAmount: Double

        public var discount: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case cashback

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case refundAmount = "refund_amount"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceMarked = "price_marked"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.refundAmount = refundAmount

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashback = try container.decode(Double.self, forKey: .cashback)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
