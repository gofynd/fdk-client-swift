

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var refundCredit: Double

        public var cashbackApplied: Double

        public var codCharges: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var priceMarked: Double

        public var amountPaid: Double

        public var discount: Double

        public var amountPaidRoundoff: Double

        public var couponValue: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
