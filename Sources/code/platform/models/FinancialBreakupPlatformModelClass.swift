

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var totalUnits: Int

        public var priceMarked: Int

        public var size: String

        public var cashback: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var gstTaxPercentage: Int

        public var gstTag: String

        public var identifiers: [String: Any]

        public var hsnCode: String

        public var gstFee: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var pmPriceSplit: [String: Any]

        public var cashbackApplied: Int

        public var itemName: String

        public var priceEffective: Int

        public var amountPaid: Int

        public var discount: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case size

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case identifiers

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case pmPriceSplit = "pm_price_split"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case discount

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.size = size

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.pmPriceSplit = pmPriceSplit

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.discount = discount

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
