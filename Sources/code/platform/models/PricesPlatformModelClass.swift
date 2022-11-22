

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var discount: Double

        public var codCharges: Double

        public var amountPaid: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var refundCredit: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Double

        public var fyndCredits: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
