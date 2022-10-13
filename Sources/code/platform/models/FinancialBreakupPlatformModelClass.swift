

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var itemName: String

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var hsnCode: String

        public var refundCredit: Int

        public var transferPrice: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public var discount: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var gstFee: String

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var cashback: Int

        public var valueOfGood: Int

        public var couponValue: Int

        public var identifiers: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case cashback

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.size = size

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
