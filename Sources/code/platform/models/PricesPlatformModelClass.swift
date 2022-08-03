

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var amountPaidRoundoff: Double

        public var refundCredit: Double

        public var codCharges: Double

        public var amountPaid: Double

        public var cashback: Double

        public var couponValue: Double

        public var refundAmount: Double

        public var discount: Double

        public var taxCollectedAtSource: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var fyndCredits: Double

        public var valueOfGood: Double

        public var cashbackApplied: Double

        public var promotionEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case cashback

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Double.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
