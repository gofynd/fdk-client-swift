

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPrices
         Used By: Order
     */

    class OrderPrices: Codable {
        public var priceEffective: Double

        public var fyndCredits: Double

        public var taxCollectedAtSource: Double

        public var refundCredit: Double

        public var couponValue: Double

        public var discount: Double

        public var codCharges: Double

        public var refundAmount: Double

        public var cashbackApplied: Double

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var amountPaidRoundoff: Double

        public var cashback: Double

        public var priceMarked: Double

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case discount

            case codCharges = "cod_charges"

            case refundAmount = "refund_amount"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.discount = discount

            self.codCharges = codCharges

            self.refundAmount = refundAmount

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashback = try container.decode(Double.self, forKey: .cashback)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
