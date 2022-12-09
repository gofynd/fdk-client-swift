

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Orders
     */

    class FinancialBreakup: Codable {
        public var gstFee: String

        public var couponValue: Int

        public var taxCollectedAtSource: Int?

        public var priceEffective: Int

        public var fyndCredits: Int

        public var size: String

        public var hsnCode: String

        public var identifiers: Identifier

        public var amountPaid: Int

        public var transferPrice: Int

        public var itemName: String

        public var brandCalculatedAmount: Int

        public var cashback: Int

        public var valueOfGood: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var pmPriceSplit: [String: Any]

        public var promotionEffectiveDiscount: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var gstTag: String

        public var refundCredit: Int

        public var couponEffectiveDiscount: Int

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case size

            case hsnCode = "hsn_code"

            case identifiers

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case pmPriceSplit = "pm_price_split"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstFee = gstFee

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.size = size

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.pmPriceSplit = pmPriceSplit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
