

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var hsnCode: String

        public var gstTag: String

        public var amountPaid: Int

        public var promotionEffectiveDiscount: Int

        public var identifiers: [String: Any]

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var itemName: String

        public var valueOfGood: Int

        public var brandCalculatedAmount: Int

        public var priceMarked: Int

        public var size: String

        public var addedToFyndCash: Bool

        public var gstFee: String

        public var refundCredit: Int

        public var cashback: Int

        public var couponValue: Int

        public var couponEffectiveDiscount: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case size

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case cashback

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.discount = discount

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.size = size

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
