

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var priceEffective: Double

        public var couponValue: Double

        public var taxCollectedAtSource: Double

        public var refundAmount: Double

        public var priceMarked: Double

        public var promotionEffectiveDiscount: Double

        public var valueOfGood: Double

        public var refundCredit: Double

        public var deliveryCharge: Double

        public var cashback: Double

        public var amountPaid: Double

        public var codCharges: Double

        public var amountPaidRoundoff: Double

        public var fyndCredits: Double

        public var cashbackApplied: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundAmount = "refund_amount"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case cashback

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case discount
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundAmount = refundAmount

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
