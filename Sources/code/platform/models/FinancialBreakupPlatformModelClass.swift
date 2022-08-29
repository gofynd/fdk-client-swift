

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var pmPriceSplit: [String: Any]

        public var hsnCode: String

        public var couponValue: Int

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public var valueOfGood: Int

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Int

        public var cashback: Int

        public var itemName: String

        public var fyndCredits: Int

        public var transferPrice: Int

        public var refundCredit: Int

        public var brandCalculatedAmount: Int

        public var priceMarked: Int

        public var couponEffectiveDiscount: Int

        public var amountPaid: Int

        public var gstFee: String

        public var cashbackApplied: Int

        public var gstTag: String

        public var identifiers: [String: Any]

        public var deliveryCharge: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case discount

            case pmPriceSplit = "pm_price_split"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case identifiers

            case deliveryCharge = "delivery_charge"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.discount = discount

            self.pmPriceSplit = pmPriceSplit

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.identifiers = identifiers

            self.deliveryCharge = deliveryCharge

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
