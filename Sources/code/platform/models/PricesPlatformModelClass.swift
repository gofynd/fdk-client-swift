

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var refundCredit: Double

        public var valueOfGood: Double

        public var deliveryCharge: Double

        public var couponValue: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var discount: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public var amountPaid: Double

        public var fyndCredits: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case discount

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.discount = discount

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
