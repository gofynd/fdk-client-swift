

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var identifiers: [String: Any]

        public var couponValue: Int

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var amountPaid: Int

        public var itemName: String

        public var hsnCode: String

        public var codCharges: Int

        public var size: String

        public var cashback: Int

        public var brandCalculatedAmount: Int

        public var refundCredit: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var discount: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var gstTag: String

        public var priceMarked: Int

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Int

        public var valueOfGood: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case size

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case discount

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.identifiers = identifiers

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.size = size

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
