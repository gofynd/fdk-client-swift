

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var couponValue: Double

        public var priceEffective: Double

        public var refundAmount: Double

        public var cashbackApplied: Double

        public var cashback: Double

        public var fyndCredits: Double

        public var refundCredit: Double

        public var valueOfGood: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var discount: Double

        public var codCharges: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case refundAmount = "refund_amount"

            case cashbackApplied = "cashback_applied"

            case cashback

            case fyndCredits = "fynd_credits"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case discount

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.refundAmount = refundAmount

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.discount = discount

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
