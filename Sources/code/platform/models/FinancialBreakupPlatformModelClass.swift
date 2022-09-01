

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Double

        public var gstTag: String

        public var discount: Double

        public var itemName: String

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

        public var totalUnits: Int

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var gstFee: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var fyndCredits: Double

        public var priceMarked: Double

        public var taxCollectedAtSource: Double

        public var hsnCode: String

        public var refundAmount: Double

        public var couponEffectiveDiscount: Double

        public var cashback: Double

        public var identifiers: [String: Any]

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case discount

            case itemName = "item_name"

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

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case refundAmount = "refund_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case identifiers

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.discount = discount

            self.itemName = itemName

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

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.refundAmount = refundAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.identifiers = identifiers

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Double.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

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

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Double.self, forKey: .cashback)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

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

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
