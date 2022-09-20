

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var priceEffective: Double

        public var refundCredit: Double

        public var discount: Double

        public var refundAmount: Double

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var gstFee: String

        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Double

        public var gstTaxPercentage: Double

        public var transferPrice: Double

        public var couponValue: Double

        public var cashbackApplied: Double

        public var cashback: Double

        public var valueOfGood: Double

        public var fyndCredits: Double

        public var size: String

        public var codCharges: Double

        public var itemName: String

        public var deliveryCharge: Double

        public var tcsPercentage: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var amountPaidRoundoff: Int

        public var identifiers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case discount

            case refundAmount = "refund_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case cashback

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case size

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case tcsPercentage = "tcs_percentage"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.discount = discount

            self.refundAmount = refundAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.size = size

            self.codCharges = codCharges

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.tcsPercentage = tcsPercentage

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            discount = try container.decode(Double.self, forKey: .discount)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashback = try container.decode(Double.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
