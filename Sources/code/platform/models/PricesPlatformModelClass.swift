

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var refundAmount: Double

        public var taxCollectedAtSource: Double

        public var discount: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var promotionEffectiveDiscount: Double

        public var valueOfGood: Double

        public var codCharges: Double

        public var fyndCredits: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Double

        public var cashback: Double

        public var refundCredit: Double

        public var priceEffective: Double

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case refundAmount = "refund_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.refundAmount = refundAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashback = try container.decode(Double.self, forKey: .cashback)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
