

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var cashback: Int

        public var refundCredit: Int

        public var addedToFyndCash: Bool

        public var size: String

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var valueOfGood: Int

        public var amountPaid: Int

        public var promotionEffectiveDiscount: Int

        public var totalUnits: Int

        public var identifiers: [String: Any]

        public var cashbackApplied: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var couponValue: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Int

        public var gstTag: String

        public var gstFee: String

        public var itemName: String

        public var hsnCode: String

        public var transferPrice: Int

        public var pmPriceSplit: [String: Any]

        public var priceMarked: Int

        public var discount: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case cashback

            case refundCredit = "refund_credit"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case pmPriceSplit = "pm_price_split"

            case priceMarked = "price_marked"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.cashback = cashback

            self.refundCredit = refundCredit

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.pmPriceSplit = pmPriceSplit

            self.priceMarked = priceMarked

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
