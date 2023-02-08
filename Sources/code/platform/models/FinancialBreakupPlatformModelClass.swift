

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var pmPriceSplit: [String: Any]

        public var couponValue: Int

        public var discount: Int

        public var transferPrice: Int

        public var itemName: String

        public var couponEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var size: String

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var gstFee: String

        public var amountPaid: Int

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var priceEffective: Int

        public var codCharges: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Int

        public var amountPaidRoundoff: Int?

        public var cashback: Int

        public var valueOfGood: Int

        public var brandCalculatedAmount: Int

        public var priceMarked: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case pmPriceSplit = "pm_price_split"

            case couponValue = "coupon_value"

            case discount

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.gstTag = gstTag

            self.pmPriceSplit = pmPriceSplit

            self.couponValue = couponValue

            self.discount = discount

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
