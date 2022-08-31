

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var codCharges: Double

        public var amountPaid: Double

        public var amountPaidRoundoff: Double

        public var refundAmount: Double

        public var refundCredit: Double

        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var deliveryCharge: Double

        public var couponValue: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Double

        public var fyndCredits: Double

        public var priceMarked: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundAmount = "refund_amount"

            case refundCredit = "refund_credit"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case discount
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundAmount = refundAmount

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
