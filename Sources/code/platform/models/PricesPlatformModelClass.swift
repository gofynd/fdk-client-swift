

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var priceEffective: Double

        public var discount: Double

        public var promotionEffectiveDiscount: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var valueOfGood: Double

        public var taxCollectedAtSource: Double

        public var cashback: Double

        public var cashbackApplied: Double

        public var refundCredit: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var codCharges: Double

        public var fyndCredits: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cashback = try container.decode(Double.self, forKey: .cashback)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
