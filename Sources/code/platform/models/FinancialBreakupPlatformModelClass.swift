

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var itemName: String

        public var size: String

        public var gstTag: String

        public var cashback: Double

        public var tcsPercentage: Double

        public var taxCollectedAtSource: Double

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var valueOfGood: Double

        public var hsnCode: String

        public var transferPrice: Double

        public var gstTaxPercentage: Double

        public var refundAmount: Double

        public var brandCalculatedAmount: Double

        public var codCharges: Double

        public var priceMarked: Double

        public var refundCredit: Double

        public var identifiers: [String: Any]

        public var cashbackApplied: Double

        public var gstFee: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var fyndCredits: Double

        public var discount: Double

        public var amountPaidRoundoff: Int

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case itemName = "item_name"

            case size

            case gstTag = "gst_tag"

            case cashback

            case tcsPercentage = "tcs_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case refundAmount = "refund_amount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.itemName = itemName

            self.size = size

            self.gstTag = gstTag

            self.cashback = cashback

            self.tcsPercentage = tcsPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.refundAmount = refundAmount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Double.self, forKey: .cashback)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
