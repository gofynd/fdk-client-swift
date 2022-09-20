

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var identifiers: [String: Any]

        public var discount: Int

        public var pmPriceSplit: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var couponValue: Int

        public var itemName: String

        public var amountPaid: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var size: String

        public var priceMarked: Int

        public var valueOfGood: Int

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Int

        public var gstFee: String

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case discount

            case pmPriceSplit = "pm_price_split"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case amountPaid = "amount_paid"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case size

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstFee = "gst_fee"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.identifiers = identifiers

            self.discount = discount

            self.pmPriceSplit = pmPriceSplit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.itemName = itemName

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.size = size

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstFee = try container.decode(String.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
