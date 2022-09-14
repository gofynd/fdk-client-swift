

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var couponEffectiveDiscount: Int

        public var valueOfGood: Int

        public var codCharges: Int

        public var promotionEffectiveDiscount: Int

        public var gstFee: String

        public var brandCalculatedAmount: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var identifiers: [String: Any]

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var itemName: String

        public var size: String

        public var amountPaid: Int

        public var couponValue: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var cashbackApplied: Int

        public var cashback: Int

        public var fyndCredits: Int

        public var refundCredit: Int

        public var discount: Int

        public var gstTag: String

        public var pmPriceSplit: [String: Any]

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case size

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case cashbackApplied = "cashback_applied"

            case cashback

            case fyndCredits = "fynd_credits"

            case refundCredit = "refund_credit"

            case discount

            case gstTag = "gst_tag"

            case pmPriceSplit = "pm_price_split"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.size = size

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.refundCredit = refundCredit

            self.discount = discount

            self.gstTag = gstTag

            self.pmPriceSplit = pmPriceSplit

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
