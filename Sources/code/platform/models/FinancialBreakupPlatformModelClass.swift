

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var deliveryCharge: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var couponEffectiveDiscount: Int

        public var amountPaid: Int

        public var brandCalculatedAmount: Int

        public var discount: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var gstTag: String

        public var gstFee: String

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var size: String

        public var hsnCode: String

        public var identifiers: Identifier

        public var valueOfGood: Int

        public var pmPriceSplit: [String: Any]

        public var transferPrice: Int

        public var cashback: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case size

            case hsnCode = "hsn_code"

            case identifiers

            case valueOfGood = "value_of_good"

            case pmPriceSplit = "pm_price_split"

            case transferPrice = "transfer_price"

            case cashback

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.size = size

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.pmPriceSplit = pmPriceSplit

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
