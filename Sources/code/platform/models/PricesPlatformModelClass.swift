

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var priceEffective: Double

        public var valueOfGood: Double

        public var discount: Double

        public var refundAmount: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public var couponValue: Double

        public var refundCredit: Double

        public var cashback: Double

        public var priceMarked: Double

        public var fyndCredits: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case discount

            case refundAmount = "refund_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case refundCredit = "refund_credit"

            case cashback

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.refundAmount = refundAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Double.self, forKey: .discount)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashback = try container.decode(Double.self, forKey: .cashback)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
