

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var taxCollectedAtSource: Double

        public var amountPaid: Double

        public var refundCredit: Double

        public var discount: Double

        public var fyndCredits: Double

        public var promotionEffectiveDiscount: Double

        public var valueOfGood: Double

        public var cashback: Double

        public var couponValue: Double

        public var deliveryCharge: Double

        public var amountPaidRoundoff: Double

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var refundAmount: Double

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case discount

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case cashback

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case refundAmount = "refund_amount"

            case codCharges = "cod_charges"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.refundAmount = refundAmount

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Double.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
