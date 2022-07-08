

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var refundCredit: Double

        public var fyndCredits: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var amountPaidRoundoff: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Double

        public var valueOfGood: Double

        public var cashbackApplied: Double

        public var discount: Double

        public var couponValue: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var cashback: Double

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case discount

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case cashback

            case codCharges = "cod_charges"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            cashback = try container.decode(Double.self, forKey: .cashback)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
