

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var gstTaxPercentage: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int

        public var deliveryCharge: Double

        public var codCharges: Double

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var refundCredit: Double

        public var transferPrice: Double

        public var fyndCredits: Double

        public var tcsPercentage: Double

        public var refundAmount: Double

        public var priceEffective: Double

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public var cashback: Double

        public var taxCollectedAtSource: Double

        public var discount: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case tcsPercentage = "tcs_percentage"

            case refundAmount = "refund_amount"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstTaxPercentage: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, tcsPercentage: Double, transferPrice: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.tcsPercentage = tcsPercentage

            self.refundAmount = refundAmount

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Double.self, forKey: .cashback)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
