

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var deliveryCharge: Double

        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var refundCredit: Double

        public var refundAmount: Double

        public var amountPaidRoundoff: Double

        public var discount: Double

        public var cashbackApplied: Double

        public var fyndCredits: Double

        public var valueOfGood: Double

        public var priceMarked: Double

        public var codCharges: Double

        public var priceEffective: Double

        public var couponValue: Double

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case discount

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.couponValue = couponValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            discount = try container.decode(Double.self, forKey: .discount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        }
    }
}
