

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstFee: String

        public var itemName: String

        public var refundCredit: Int

        public var amountPaid: Int

        public var codCharges: Int

        public var cashback: Int

        public var discount: Int

        public var totalUnits: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public var gstTaxPercentage: Int

        public var size: String

        public var pmPriceSplit: [String: Any]

        public var couponValue: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var gstTag: String

        public var couponEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var identifiers: [String: Any]

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var valueOfGood: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case itemName = "item_name"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case cashback

            case discount

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case pmPriceSplit = "pm_price_split"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case identifiers

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstFee = gstFee

            self.itemName = itemName

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.cashback = cashback

            self.discount = discount

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.pmPriceSplit = pmPriceSplit

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            itemName = try container.decode(String.self, forKey: .itemName)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
