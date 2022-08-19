

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPrices1
         Used By: Order
     */

    class ShipmentPrices1: Codable {
        public var couponValue: Double

        public var amountPaid: Double

        public var refundAmount: Double

        public var taxCollectedAtSource: Double

        public var priceEffective: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Double

        public var refundCredit: Double

        public var amountPaidRoundoff: Double

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var valueOfGood: Double

        public var deliveryCharge: Double

        public var fyndCredits: Double

        public var codCharges: Double

        public var cashback: Double

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case cashback
        }

        public init(amountPaid: Double, amountPaidRoundoff: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashback = try container.decode(Double.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
