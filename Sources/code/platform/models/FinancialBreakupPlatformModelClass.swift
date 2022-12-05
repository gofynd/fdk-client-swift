

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var hsnCode: String

        public var couponEffectiveDiscount: Int

        public var gstFee: String

        public var brandCalculatedAmount: Int

        public var gstTaxPercentage: Int

        public var pmPriceSplit: [String: Any]

        public var cashbackApplied: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var addedToFyndCash: Bool

        public var amountPaid: Int

        public var transferPrice: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var priceEffective: Int

        public var totalUnits: Int

        public var discount: Int

        public var priceMarked: Int

        public var cashback: Int

        public var gstTag: String

        public var deliveryCharge: Int

        public var identifiers: [String: Any]

        public var valueOfGood: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case pmPriceSplit = "pm_price_split"

            case cashbackApplied = "cashback_applied"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case totalUnits = "total_units"

            case discount

            case priceMarked = "price_marked"

            case cashback

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.itemName = itemName

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.pmPriceSplit = pmPriceSplit

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.totalUnits = totalUnits

            self.discount = discount

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
