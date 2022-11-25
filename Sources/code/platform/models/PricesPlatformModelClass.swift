

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var fyndCredits: Double

        public var codCharges: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var amountPaidRoundoff: Double

        public var couponValue: Double

        public var cashback: Double

        public var amountPaid: Double

        public var cashbackApplied: Double

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Double

        public var discount: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case cashback

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
