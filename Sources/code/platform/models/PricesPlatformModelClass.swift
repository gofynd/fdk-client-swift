

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var codCharges: Double

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var refundCredit: Double

        public var fyndCredits: Double

        public var couponValue: Double

        public var refundAmount: Double

        public var cashbackApplied: Double

        public var cashback: Double

        public var amountPaidRoundoff: Double

        public var amountPaid: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var priceMarked: Double

        public var discount: Double

        public var promotionEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case cashbackApplied = "cashback_applied"

            case cashback

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
