

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashback: Int

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var gstFee: String

        public var promotionEffectiveDiscount: Int

        public var valueOfGood: Int

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var pmPriceSplit: [String: Any]

        public var fyndCredits: Int

        public var priceEffective: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var couponEffectiveDiscount: Int

        public var discount: Int

        public var size: String

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var gstTag: String

        public var codCharges: Int

        public var totalUnits: Int

        public var amountPaid: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var transferPrice: Int

        public var priceMarked: Int

        public enum CodingKeys: String, CodingKey {
            case cashback

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case pmPriceSplit = "pm_price_split"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case discount

            case size

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.cashback = cashback

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.pmPriceSplit = pmPriceSplit

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.discount = discount

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(String.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
