

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var taxCollectedAtSource: Double

        public var amountPaid: Double

        public var discount: Double

        public var priceMarked: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public var refundCredit: Double

        public var priceEffective: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var fyndCredits: Double

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case discount

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
