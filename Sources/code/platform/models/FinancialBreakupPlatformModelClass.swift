

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Int

        public var amountPaid: Int

        public var promotionEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var transferPrice: Int

        public var priceEffective: Int

        public var itemName: String

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var refundCredit: Int

        public var cashback: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var couponValue: Int

        public var identifiers: [String: Any]

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var size: String

        public var couponEffectiveDiscount: Int

        public var priceMarked: Int

        public var gstTag: String

        public var discount: Int

        public var gstFee: String

        public var hsnCode: String

        public var deliveryCharge: Int

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case itemName = "item_name"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case cashback

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case discount

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.itemName = itemName

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.discount = discount

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
