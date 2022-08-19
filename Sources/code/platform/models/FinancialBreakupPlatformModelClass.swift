

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var gstTaxPercentage: Int

        public var identifiers: [String: Any]

        public var gstFee: String

        public var valueOfGood: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var codCharges: Int

        public var cashback: Int

        public var pmPriceSplit: [String: Any]

        public var hsnCode: String

        public var couponEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public var deliveryCharge: Int

        public var discount: Int

        public var transferPrice: Int

        public var amountPaid: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var refundCredit: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var itemName: String

        public var couponValue: Int

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case cashback

            case pmPriceSplit = "pm_price_split"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.cashback = cashback

            self.pmPriceSplit = pmPriceSplit

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.couponValue = couponValue

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
