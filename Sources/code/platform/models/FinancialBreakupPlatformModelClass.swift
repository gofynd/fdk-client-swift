

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Int

        public var priceEffective: Int

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var transferPrice: Int

        public var gstTag: String

        public var hsnCode: String

        public var couponEffectiveDiscount: Int

        public var itemName: String

        public var discount: Int

        public var totalUnits: Int

        public var amountPaid: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var gstFee: String

        public var couponValue: Int

        public var fyndCredits: Int

        public var identifiers: [String: Any]

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var priceMarked: Int

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case cashback

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"

            case discount

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case identifiers

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName

            self.discount = discount

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
