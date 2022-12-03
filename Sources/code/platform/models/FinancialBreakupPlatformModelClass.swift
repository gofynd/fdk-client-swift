

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstFee: String

        public var brandCalculatedAmount: Int

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var valueOfGood: Int

        public var transferPrice: Int

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var pmPriceSplit: [String: Any]

        public var hsnCode: String

        public var discount: Int

        public var gstTag: String

        public var couponValue: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var amountPaid: Int

        public var cashback: Int

        public var identifiers: [String: Any]

        public var gstTaxPercentage: Int

        public var size: String

        public var itemName: String

        public var promotionEffectiveDiscount: Int

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case pmPriceSplit = "pm_price_split"

            case hsnCode = "hsn_code"

            case discount

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case cashback

            case identifiers

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.pmPriceSplit = pmPriceSplit

            self.hsnCode = hsnCode

            self.discount = discount

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.identifiers = identifiers

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
