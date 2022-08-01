

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Int

        public var identifiers: [String: Any]

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var refundCredit: Int

        public var gstTaxPercentage: Int

        public var valueOfGood: Int

        public var cashback: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var gstFee: String

        public var discount: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var totalUnits: Int

        public var itemName: String

        public var brandCalculatedAmount: Int

        public var transferPrice: Int

        public var gstTag: String

        public var hsnCode: String

        public var couponValue: Int

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case identifiers

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case cashback

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaid = amountPaid

            self.identifiers = identifiers

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
