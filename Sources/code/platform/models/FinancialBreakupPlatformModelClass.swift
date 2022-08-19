

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var gstFee: String

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

        public var identifiers: [String: Any]

        public var cashbackApplied: Double

        public var size: String

        public var totalUnits: Int

        public var taxCollectedAtSource: Double

        public var transferPrice: Double

        public var fyndCredits: Double

        public var codCharges: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var gstTag: String

        public var hsnCode: String

        public var cashback: Double

        public var refundCredit: Double

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

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

            case identifiers

            case cashbackApplied = "cashback_applied"

            case size

            case totalUnits = "total_units"

            case taxCollectedAtSource = "tax_collected_at_source"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case cashback

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

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

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.totalUnits = totalUnits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(String.self, forKey: .gstFee)

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

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Double.self, forKey: .cashback)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

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

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
