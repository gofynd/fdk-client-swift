

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var gstTag: String

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var discount: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var gstFee: String

        public var couponValue: Int

        public var transferPrice: Int

        public var itemName: String

        public var priceEffective: Int

        public var cashback: Int

        public var identifiers: [String: Any]

        public var deliveryCharge: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var pmPriceSplit: [String: Any]

        public var valueOfGood: Int

        public var brandCalculatedAmount: Int

        public var size: String

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Int

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case discount

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case cashback

            case identifiers

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case pmPriceSplit = "pm_price_split"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.discount = discount

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.identifiers = identifiers

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.pmPriceSplit = pmPriceSplit

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
