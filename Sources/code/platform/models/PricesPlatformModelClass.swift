

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var fyndCredits: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var cashbackApplied: Double

        public var couponValue: Double

        public var priceMarked: Double

        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var codCharges: Double

        public var refundAmount: Double

        public var valueOfGood: Double

        public var refundCredit: Double

        public var discount: Double

        public var cashback: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case refundAmount = "refund_amount"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case discount

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.refundAmount = refundAmount

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.discount = discount

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
