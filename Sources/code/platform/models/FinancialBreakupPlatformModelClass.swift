

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstFee: String

        public var size: String

        public var transferPrice: Int

        public var gstTag: String

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var brandCalculatedAmount: Int

        public var refundCredit: Int

        public var discount: Int

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var valueOfGood: Int

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var cashback: Int

        public var pmPriceSplit: [String: Any]

        public var cashbackApplied: Int

        public var itemName: String

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Int

        public var amountPaid: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var identifiers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case size

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case discount

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case cashback

            case pmPriceSplit = "pm_price_split"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstFee = gstFee

            self.size = size

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.cashback = cashback

            self.pmPriceSplit = pmPriceSplit

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            cashback = try container.decode(Int.self, forKey: .cashback)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
