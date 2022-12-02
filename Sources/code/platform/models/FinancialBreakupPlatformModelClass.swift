

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Int

        public var refundCredit: Int

        public var pmPriceSplit: [String: Any]

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var transferPrice: Int

        public var gstFee: String

        public var identifiers: [String: Any]

        public var amountPaid: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Int

        public var deliveryCharge: Int

        public var couponValue: Int

        public var discount: Int

        public var codCharges: Int

        public var gstTag: String

        public var itemName: String

        public var brandCalculatedAmount: Int

        public var cashback: Int

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var priceEffective: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case pmPriceSplit = "pm_price_split"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case identifiers

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case discount

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.pmPriceSplit = pmPriceSplit

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.discount = discount

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
