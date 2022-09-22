

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceMarked: Double

        public var gstFee: String

        public var gstTag: String

        public var totalUnits: Int

        public var amountPaidRoundoff: Int

        public var addedToFyndCash: Bool

        public var codCharges: Double

        public var taxCollectedAtSource: Double

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var discount: Double

        public var gstTaxPercentage: Double

        public var fyndCredits: Double

        public var refundCredit: Double

        public var size: String

        public var identifiers: [String: Any]

        public var brandCalculatedAmount: Double

        public var promotionEffectiveDiscount: Double

        public var refundAmount: Double

        public var deliveryCharge: Double

        public var cashback: Double

        public var tcsPercentage: Double

        public var couponValue: Double

        public var priceEffective: Double

        public var valueOfGood: Double

        public var hsnCode: String

        public var cashbackApplied: Double

        public var transferPrice: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case refundCredit = "refund_credit"

            case size

            case identifiers

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundAmount = "refund_amount"

            case deliveryCharge = "delivery_charge"

            case cashback

            case tcsPercentage = "tcs_percentage"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int, brandCalculatedAmount: Double, cashback: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Double, fyndCredits: Double, gstFee: String, gstTag: String, gstTaxPercentage: Double, hsnCode: String, identifiers: [String: Any], itemName: String, priceEffective: Double, priceMarked: Double, promotionEffectiveDiscount: Double, refundAmount: Double, refundCredit: Double, size: String, taxCollectedAtSource: Double, tcsPercentage: Double, totalUnits: Int, transferPrice: Double, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.refundCredit = refundCredit

            self.size = size

            self.identifiers = identifiers

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundAmount = refundAmount

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.tcsPercentage = tcsPercentage

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            cashback = try container.decode(Double.self, forKey: .cashback)

            tcsPercentage = try container.decode(Double.self, forKey: .tcsPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(tcsPercentage, forKey: .tcsPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
