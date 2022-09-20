

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var priceEffective: Double

        public var refundCredit: Double

        public var discount: Double

        public var refundAmount: Double

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double

        public var transferPrice: Double

        public var couponValue: Double

        public var cashbackApplied: Double

        public var cashback: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var codCharges: Double

        public var deliveryCharge: Double

        public var tcsPercentage: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case discount

            case refundAmount = "refund_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case cashback

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case tcsPercentage = "tcs_percentage"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstTaxPercentage: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, tcsPercentage: Double, transferPrice: Double, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.discount = discount

            self.refundAmount = refundAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.tcsPercentage = tcsPercentage

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
