

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var totalUnits: Int

        public var itemName: String

        public var cashback: Int

        public var identifiers: Identifier

        public var amountPaid: Int

        public var couponValue: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public var size: String

        public var couponEffectiveDiscount: Int

        public var valueOfGood: Int

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var gstTag: String

        public var gstFee: String

        public var refundCredit: Int

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var priceMarked: Int

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case cashback

            case identifiers

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case couponEffectiveDiscount = "coupon_effective_discount"

            case valueOfGood = "value_of_good"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case priceMarked = "price_marked"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.cashback = cashback

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
