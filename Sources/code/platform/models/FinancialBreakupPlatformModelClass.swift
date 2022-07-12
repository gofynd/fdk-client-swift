

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var gstFee: String

        public var valueOfGood: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var size: String

        public var couponEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var discount: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var brandCalculatedAmount: Int

        public var cashback: Int

        public var identifiers: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var amountPaid: Int

        public var refundCredit: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var addedToFyndCash: Bool

        public var couponValue: Int

        public var priceMarked: Int

        public var gstTag: String

        public var priceEffective: Int

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case discount

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.itemName = itemName

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
