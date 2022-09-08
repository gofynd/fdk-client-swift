

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var priceMarked: Double

        public var refundAmount: Double

        public var totalUnits: Int

        public var hsnCode: String

        public var priceEffective: Double

        public var fyndCredits: Double

        public var refundCredit: Double

        public var deliveryCharge: Double

        public var gstTaxPercentage: Double

        public var amountPaid: Double

        public var codCharges: Double

        public var transferPrice: Double

        public var discount: Double

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int

        public var tcsPercentage: Double

        public var gstFee: String

        public var cashback: Double

        public var identifiers: [String: Any]

        public var taxCollectedAtSource: Double

        public var couponValue: Double

        public var size: String

        public var cashbackApplied: Double

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case refundAmount = "refund_amount"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case discount

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case tcsPercentage = "tcs_percentage"

            case gstFee = "gst_fee"

            case cashback

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case size

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.refundAmount = refundAmount

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.discount = discount

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.tcsPercentage = tcsPercentage

            self.gstFee = gstFee

            self.cashback = cashback

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            cashback = try container.decode(Double.self, forKey: .cashback)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
