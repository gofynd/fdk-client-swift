

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPrices
         Used By: Order
     */

    class OrderPrices: Codable {
        public var deliveryCharge: Double

        public var cashbackApplied: Double

        public var priceEffective: Double

        public var refundAmount: Double

        public var discount: Double

        public var cashback: Double

        public var couponValue: Double

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Double

        public var taxCollectedAtSource: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var amountPaidRoundoff: Double

        public var codCharges: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case refundAmount = "refund_amount"

            case discount

            case cashback

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.refundAmount = refundAmount

            self.discount = discount

            self.cashback = cashback

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
