

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var fyndCredits: Double

        public var valueOfGood: Double

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var couponValue: Double

        public var refundAmount: Double

        public var codCharges: Double

        public var discount: Double

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case codCharges = "cod_charges"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.codCharges = codCharges

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
