

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Int

        public var cashback: Int

        public var transferPrice: Int

        public var codCharges: Int

        public var hsnCode: String

        public var itemName: String

        public var gstFee: String

        public var identifiers: [String: Any]

        public var pmPriceSplit: [String: Any]

        public var gstTag: String

        public var refundCredit: Int

        public var brandCalculatedAmount: Int

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var valueOfGood: Int

        public var discount: Int

        public var priceMarked: Int

        public var couponEffectiveDiscount: Int

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var size: String

        public var priceEffective: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case identifiers

            case pmPriceSplit = "pm_price_split"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case discount

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.pmPriceSplit = pmPriceSplit

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
