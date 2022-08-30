

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashback: Double

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var gstTag: String

        public var deliveryCharge: Double

        public var identifiers: [String: Any]

        public var codCharges: Double

        public var amountPaid: Double

        public var refundCredit: Double

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var fyndCredits: Double

        public var valueOfGood: Double

        public var gstTaxPercentage: Double

        public var couponValue: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var discount: Double

        public var size: String

        public var taxCollectedAtSource: Double

        public var addedToFyndCash: Bool

        public var tcsPercentage: Double

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var gstFee: String

        public var amountPaidRoundoff: Int

        public var refundAmount: Double

        public var transferPrice: Double

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case discount

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case tcsPercentage = "tcs_percentage"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundAmount = "refund_amount"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.discount = discount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.tcsPercentage = tcsPercentage

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundAmount = refundAmount

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Double.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
