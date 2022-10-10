

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var refundCredit: Double

        public var priceEffective: Double

        public var refundAmount: Double

        public var priceMarked: Double

        public var cashback: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var codCharges: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public var discount: Double

        public var amountPaid: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case refundAmount = "refund_amount"

            case priceMarked = "price_marked"

            case cashback

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case discount

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.refundAmount = refundAmount

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            cashback = try container.decode(Double.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
