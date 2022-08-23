

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Int

        public var hsnCode: String

        public var cashback: Int

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var identifiers: [String: Any]

        public var discount: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var itemName: String

        public var fyndCredits: Int

        public var codCharges: Int

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var refundCredit: Int

        public var couponValue: Int

        public var valueOfGood: Int

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var size: String

        public var gstTag: String

        public var totalUnits: Int

        public var priceMarked: Int

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCode = "hsn_code"

            case cashback

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case size

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.size = size

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
