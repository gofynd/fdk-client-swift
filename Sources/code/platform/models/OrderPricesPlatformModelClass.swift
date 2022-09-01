

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPrices
         Used By: Order
     */

    class OrderPrices: Codable {
        public var priceMarked: Double

        public var couponValue: Double

        public var cashbackApplied: Double

        public var priceEffective: Double

        public var taxCollectedAtSource: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public var refundCredit: Double

        public var refundAmount: Double

        public var discount: Double

        public var cashback: Double

        public var amountPaid: Double

        public var fyndCredits: Double

        public var valueOfGood: Double

        public var codCharges: Double

        public var amountPaidRoundoff: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case refundAmount = "refund_amount"

            case discount

            case cashback

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.refundAmount = refundAmount

            self.discount = discount

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            discount = try container.decode(Double.self, forKey: .discount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
