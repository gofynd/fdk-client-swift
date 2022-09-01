

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var gstTaxPercentage: Double

        public var discount: Double

        public var tcsPercentage: Double

        public var codCharges: Double

        public var amountPaidRoundoff: Int

        public var transferPrice: Double

        public var priceEffective: Double

        public var cashbackApplied: Double

        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var refundCredit: Double

        public var valueOfGood: Double

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var fyndCredits: Double

        public var priceMarked: Double

        public var taxCollectedAtSource: Double

        public var refundAmount: Double

        public var couponEffectiveDiscount: Double

        public var cashback: Double

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case tcsPercentage = "tcs_percentage"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundAmount = "refund_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstTaxPercentage: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, tcsPercentage: Double, transferPrice: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.tcsPercentage = tcsPercentage

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundAmount = refundAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Double.self, forKey: .discount)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
