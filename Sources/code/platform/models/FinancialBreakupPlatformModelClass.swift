

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var amountPaid: Int

        public var pmPriceSplit: [String: Any]

        public var gstTaxPercentage: Int

        public var gstFee: String

        public var cashback: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var gstTag: String

        public var priceEffective: Int

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var size: String

        public var hsnCode: String

        public var couponEffectiveDiscount: Int

        public var transferPrice: Int

        public var couponValue: Int

        public var itemName: String

        public var identifiers: [String: Any]

        public var refundCredit: Int

        public var valueOfGood: Int

        public var discount: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case pmPriceSplit = "pm_price_split"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case identifiers

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case discount

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.pmPriceSplit = pmPriceSplit

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.itemName = itemName

            self.identifiers = identifiers

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
