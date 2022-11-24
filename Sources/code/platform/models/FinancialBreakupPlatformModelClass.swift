

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: [String: Any]

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var priceEffective: Int

        public var gstFee: String

        public var totalUnits: Int

        public var brandCalculatedAmount: Int

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var hsnCode: String

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var size: String

        public var gstTag: String

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var cashback: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var discount: Int

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case size

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case cashback

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case discount

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.size = size

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.discount = discount

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
