

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var gstFee: String

        public var fyndCredits: Int

        public var transferPrice: Int

        public var gstTag: String

        public var cashback: Int

        public var deliveryCharge: Int

        public var size: String

        public var amountPaid: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var priceEffective: Int

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var totalUnits: Int

        public var identifiers: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var itemName: String

        public var valueOfGood: Int

        public var hsnCode: String

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case cashback

            case deliveryCharge = "delivery_charge"

            case size

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case totalUnits = "total_units"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
