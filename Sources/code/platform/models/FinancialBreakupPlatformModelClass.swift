

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var couponValue: Int

        public var amountPaid: Int

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Int

        public var discount: Int

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var itemName: String

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var refundCredit: Int

        public var totalUnits: Int

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Int

        public var cashback: Int

        public var gstFee: String

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var pmPriceSplit: [String: Any]

        public var size: String

        public var priceEffective: Int

        public var valueOfGood: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case codCharges = "cod_charges"

            case pmPriceSplit = "pm_price_split"

            case size

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstTag = gstTag

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.pmPriceSplit = pmPriceSplit

            self.size = size

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
