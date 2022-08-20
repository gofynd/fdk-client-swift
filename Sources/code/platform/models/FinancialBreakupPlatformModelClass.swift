

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var identifiers: [String: Any]

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Double

        public var transferPrice: Double

        public var codCharges: Double

        public var tcsPercentage: Double

        public var priceEffective: Double

        public var refundCredit: Double

        public var brandCalculatedAmount: Double

        public var size: String

        public var valueOfGood: Double

        public var cashbackApplied: Double

        public var gstFee: String

        public var hsnCode: String

        public var deliveryCharge: Double

        public var discount: Double

        public var promotionEffectiveDiscount: Double

        public var cashback: Double

        public var gstTaxPercentage: Double

        public var amountPaidRoundoff: Int

        public var totalUnits: Int

        public var priceMarked: Double

        public var couponEffectiveDiscount: Double

        public var fyndCredits: Double

        public var refundAmount: Double

        public var couponValue: Double

        public var amountPaid: Double

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case tcsPercentage = "tcs_percentage"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case refundAmount = "refund_amount"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.itemName = itemName

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.tcsPercentage = tcsPercentage

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.refundAmount = refundAmount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
