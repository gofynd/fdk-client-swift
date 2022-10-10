

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var identifiers: [String: Any]

        public var hsnCode: String

        public var transferPrice: Int

        public var priceEffective: Int

        public var discount: Int

        public var size: String

        public var couponEffectiveDiscount: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var couponValue: Int

        public var brandCalculatedAmount: Int

        public var addedToFyndCash: Bool

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var gstTag: String

        public var priceMarked: Int

        public var totalUnits: Int

        public var codCharges: Int

        public var promotionEffectiveDiscount: Int

        public var gstFee: String

        public var deliveryCharge: Int

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case identifiers

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case discount

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case codCharges = "cod_charges"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.itemName = itemName

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.discount = discount

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.codCharges = codCharges

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
