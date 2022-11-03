

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var deliveryCharge: Double

        public var fyndCredits: Double

        public var amountPaid: Double

        public var refundCredit: Double

        public var cashback: Double

        public var codCharges: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var priceMarked: Double

        public var discount: Double

        public var amountPaidRoundoff: Double

        public var couponValue: Double

        public var priceEffective: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public var refundAmount: Double

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case cashback

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceMarked = "price_marked"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case refundAmount = "refund_amount"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceMarked = priceMarked

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.refundAmount = refundAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashback = try container.decode(Double.self, forKey: .cashback)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
        }
    }
}
