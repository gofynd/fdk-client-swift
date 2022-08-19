

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int

        public var deliveryCharge: Double

        public var codCharges: Double

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var gstTag: String

        public var couponValue: Double

        public var size: String

        public var hsnCode: String

        public var brandCalculatedAmount: Double

        public var refundCredit: Double

        public var transferPrice: Double

        public var itemName: String

        public var fyndCredits: Double

        public var tcsPercentage: Double

        public var refundAmount: Double

        public var totalUnits: Int

        public var priceEffective: Double

        public var identifiers: [String: Any]

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var valueOfGood: Double

        public var gstFee: String

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

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case size

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case tcsPercentage = "tcs_percentage"

            case refundAmount = "refund_amount"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.size = size

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.tcsPercentage = tcsPercentage

            self.refundAmount = refundAmount

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

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

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(String.self, forKey: .gstFee)

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

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
