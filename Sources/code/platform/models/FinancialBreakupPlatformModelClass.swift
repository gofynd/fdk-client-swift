

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var brandCalculatedAmount: Int

        public var refundCredit: Int

        public var size: String

        public var cashbackApplied: Int

        public var gstFee: String

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var promotionEffectiveDiscount: Int

        public var deliveryCharge: Int

        public var itemName: String

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var valueOfGood: Int

        public var discount: Int

        public var totalUnits: Int

        public var amountPaid: Int

        public var cashback: Int

        public var priceMarked: Int

        public var pmPriceSplit: [String: Any]

        public var identifiers: [String: Any]

        public var transferPrice: Int

        public var couponValue: Int

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case size

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case discount

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case cashback

            case priceMarked = "price_marked"

            case pmPriceSplit = "pm_price_split"

            case identifiers

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.pmPriceSplit = pmPriceSplit

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
