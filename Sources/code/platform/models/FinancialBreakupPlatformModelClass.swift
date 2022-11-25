

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var discount: Int

        public var transferPrice: Int

        public var couponEffectiveDiscount: Int

        public var hsnCode: String

        public var promotionEffectiveDiscount: Int

        public var pmPriceSplit: [String: Any]

        public var addedToFyndCash: Bool

        public var cashback: Int

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Int

        public var priceMarked: Int

        public var fyndCredits: Int

        public var couponValue: Int

        public var brandCalculatedAmount: Int

        public var size: String

        public var valueOfGood: Int

        public var identifiers: [String: Any]

        public var totalUnits: Int

        public var itemName: String

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var gstFee: String

        public var codCharges: Int

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case discount

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case pmPriceSplit = "pm_price_split"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashback

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case valueOfGood = "value_of_good"

            case identifiers

            case totalUnits = "total_units"

            case itemName = "item_name"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: [String: Any], itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstTag = gstTag

            self.discount = discount

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.pmPriceSplit = pmPriceSplit

            self.addedToFyndCash = addedToFyndCash

            self.cashback = cashback

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
