

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var tcsPercentage: Double

        public var brandCalculatedAmount: Double

        public var cashbackApplied: Double

        public var transferPrice: Double

        public var amountPaidRoundoff: Int

        public var cashback: Double

        public var codCharges: Double

        public var fyndCredits: Double

        public var couponValue: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var gstTaxPercentage: Double

        public var discount: Double

        public var refundCredit: Double

        public var valueOfGood: Double

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Double

        public enum CodingKeys: String, CodingKey {
            case tcsPercentage = "tcs_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstTaxPercentage: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, tcsPercentage: Double, transferPrice: Double, valueOfGood: Double) {
            self.tcsPercentage = tcsPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            cashback = try container.decode(Double.self, forKey: .cashback)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Double.self, forKey: .discount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
