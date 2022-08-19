

import Foundation
public extension PlatformClient {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Double

        public var tcsPercentage: Double

        public var promotionEffectiveDiscount: Double

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int

        public var priceMarked: Double

        public var priceEffective: Double

        public var discount: Double

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var cashbackApplied: Double

        public var taxCollectedAtSource: Double

        public var transferPrice: Double

        public var fyndCredits: Double

        public var codCharges: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var cashback: Double

        public var refundCredit: Double

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case tcsPercentage = "tcs_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case discount

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case cashback

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstTaxPercentage: Double, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, taxCollectedAtSource: Double, tcsPercentage: Double, transferPrice: Double, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.tcsPercentage = tcsPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.discount = discount

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashback = try container.decode(Double.self, forKey: .cashback)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
