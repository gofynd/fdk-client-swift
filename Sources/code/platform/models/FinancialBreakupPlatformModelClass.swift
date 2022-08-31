

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var amountPaid: Int

        public var refundCredit: Int

        public var size: String

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var brandCalculatedAmount: Int

        public var priceMarked: Int

        public var itemName: String

        public var cashback: Int

        public var gstTag: String

        public var couponEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var valueOfGood: Int

        public var promotionEffectiveDiscount: Int

        public var identifiers: [String: Any]

        public var discount: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var gstFee: String

        public var hsnCode: String

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case size

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case cashback

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers

            case discount

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.size = size

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.cashback = cashback

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers

            self.discount = discount

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
