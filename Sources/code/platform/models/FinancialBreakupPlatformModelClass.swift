

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Int

        public var totalUnits: Int

        public var identifiers: [String: Any]

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var pmPriceSplit: [String: Any]

        public var amountPaid: Int

        public var size: String

        public var gstFee: String

        public var transferPrice: Int

        public var itemName: String

        public var couponEffectiveDiscount: Int

        public var priceEffective: Int

        public var hsnCode: String

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var gstTag: String

        public var codCharges: Int

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case identifiers

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case pmPriceSplit = "pm_price_split"

            case amountPaid = "amount_paid"

            case size

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.pmPriceSplit = pmPriceSplit

            self.amountPaid = amountPaid

            self.size = size

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
