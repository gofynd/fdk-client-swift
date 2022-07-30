

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var fyndCredits: Double

        public var cashback: Double

        public var amountPaidRoundoff: Double

        public var priceMarked: Double

        public var refundCredit: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var refundAmount: Double

        public var discount: Double

        public var deliveryCharge: Double

        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var codCharges: Double

        public var valueOfGood: Double

        public var couponValue: Double

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case discount

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
