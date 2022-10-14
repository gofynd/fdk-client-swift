

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Orders
     */

    class Prices: Codable {
        public var couponValue: Double

        public var valueOfGood: Double

        public var priceMarked: Double

        public var codCharges: Double

        public var deliveryCharge: Double

        public var refundAmount: Double

        public var amountPaidRoundoff: Double

        public var amountPaid: Double

        public var fyndCredits: Double

        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var refundCredit: Double

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case discount
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
