

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var fyndCredits: Double

        public var codCharges: Double

        public var refundCredit: Double

        public var cashback: Double

        public var priceMarked: Double

        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var amountPaid: Double

        public var refundAmount: Double

        public var discount: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case cashback

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case discount

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashback = try container.decode(Double.self, forKey: .cashback)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
