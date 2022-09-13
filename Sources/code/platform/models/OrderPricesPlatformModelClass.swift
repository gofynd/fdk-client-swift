

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPrices
         Used By: Order
     */

    class OrderPrices: Codable {
        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var cashback: Double

        public var refundAmount: Double

        public var codCharges: Double

        public var discount: Double

        public var refundCredit: Double

        public var fyndCredits: Double

        public var cashbackApplied: Double

        public var amountPaid: Double

        public var couponValue: Double

        public var valueOfGood: Double

        public var amountPaidRoundoff: Double

        public var priceMarked: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case cashback

            case refundAmount = "refund_amount"

            case codCharges = "cod_charges"

            case discount

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.refundAmount = refundAmount

            self.codCharges = codCharges

            self.discount = discount

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashback = try container.decode(Double.self, forKey: .cashback)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
