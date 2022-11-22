

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var identifiers: [String: Any]

        public var discount: Int

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var couponValue: Int

        public var priceMarked: Int

        public var gstTag: String

        public var cashback: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var codCharges: Int

        public var gstFee: String

        public var couponEffectiveDiscount: Int

        public var refundCredit: Int

        public var size: String

        public var itemName: String

        public var amountPaid: Int

        public var brandCalculatedAmount: Int

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case identifiers

            case discount

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case cashback

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case size

            case itemName = "item_name"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.discount = discount

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.cashback = cashback

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.size = size

            self.itemName = itemName

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
