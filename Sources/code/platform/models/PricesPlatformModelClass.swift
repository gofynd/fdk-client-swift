

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var refundAmount: Double

        public var priceMarked: Double

        public var fyndCredits: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public var amountPaidRoundoff: Double

        public var couponValue: Double

        public var discount: Double

        public var refundCredit: Double

        public var priceEffective: Double

        public var cashbackApplied: Double

        public var amountPaid: Double

        public var codCharges: Double

        public var cashback: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case refundAmount = "refund_amount"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case discount

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case cashback
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.refundAmount = refundAmount

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.discount = discount

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            discount = try container.decode(Double.self, forKey: .discount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashback = try container.decode(Double.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
