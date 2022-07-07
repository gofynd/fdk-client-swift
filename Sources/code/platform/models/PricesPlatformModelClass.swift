

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var amountPaidRoundoff: Double

        public var cashbackApplied: Double

        public var refundCredit: Double

        public var promotionEffectiveDiscount: Double

        public var couponValue: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var codCharges: Double

        public var priceEffective: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var taxCollectedAtSource: Double

        public var fyndCredits: Double

        public var cashback: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case discount

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case cashback

            case valueOfGood = "value_of_good"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashback = try container.decode(Double.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
