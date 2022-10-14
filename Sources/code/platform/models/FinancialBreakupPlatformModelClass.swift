

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var identifiers: [String: Any]

        public var cashback: Int

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var couponEffectiveDiscount: Int

        public var cashbackApplied: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var amountPaid: Int

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Int

        public var itemName: String

        public var totalUnits: Int

        public var valueOfGood: Int

        public var gstTag: String

        public var size: String

        public var gstTaxPercentage: Int

        public var gstFee: String

        public var refundCredit: Int

        public var pmPriceSplit: [String: Any]

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case cashback

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case pmPriceSplit = "pm_price_split"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.identifiers = identifiers

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.pmPriceSplit = pmPriceSplit

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
