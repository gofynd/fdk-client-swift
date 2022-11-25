

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var fyndCredits: Double

        public var discount: Double

        public var priceEffective: Double

        public var refundCredit: Double

        public var couponValue: Double

        public var codCharges: Double

        public var refundAmount: Double

        public var taxCollectedAtSource: Double

        public var priceMarked: Double

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var cashback: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var valueOfGood: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case discount

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case refundAmount = "refund_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case cashback

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.fyndCredits = fyndCredits

            self.discount = discount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.refundAmount = refundAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
