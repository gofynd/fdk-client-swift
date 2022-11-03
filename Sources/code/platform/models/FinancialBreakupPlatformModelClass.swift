

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var cashback: Int

        public var deliveryCharge: Int

        public var couponEffectiveDiscount: Int

        public var identifiers: [String: Any]

        public var itemName: String

        public var fyndCredits: Int

        public var amountPaid: Int

        public var refundCredit: Int

        public var gstFee: String

        public var couponValue: Int

        public var totalUnits: Int

        public var gstTag: String

        public var promotionEffectiveDiscount: Int

        public var discount: Int

        public var valueOfGood: Int

        public var addedToFyndCash: Bool

        public var transferPrice: Int

        public var brandCalculatedAmount: Int

        public var size: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case cashback

            case deliveryCharge = "delivery_charge"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case valueOfGood = "value_of_good"

            case addedToFyndCash = "added_to_fynd_cash"

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.addedToFyndCash = addedToFyndCash

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            cashback = try container.decode(Int.self, forKey: .cashback)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
