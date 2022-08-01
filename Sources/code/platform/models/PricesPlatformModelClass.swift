

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var amountPaidRoundoff: Double

        public var amountPaid: Double

        public var valueOfGood: Double

        public var priceEffective: Double

        public var couponValue: Double

        public var refundAmount: Double

        public var refundCredit: Double

        public var cashbackApplied: Double

        public var taxCollectedAtSource: Double

        public var cashback: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var codCharges: Double

        public var fyndCredits: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            cashback = try container.decode(Double.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
