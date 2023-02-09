

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Int

        public var refundCredit: Int

        public var couponValue: Int

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Int

        public var discount: Int

        public var identifiers: Identifier

        public var priceEffective: Int

        public var pmPriceSplit: [String: Any]

        public var cashbackApplied: Int

        public var amountPaidRoundoff: Int?

        public var itemName: String

        public var cashback: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var gstFee: String

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var size: String

        public var hsnCode: String

        public var amountPaid: Int

        public var fyndCredits: Int

        public var gstTag: String

        public var brandCalculatedAmount: Int

        public var gstTaxPercentage: Int

        public var deliveryCharge: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case identifiers

            case priceEffective = "price_effective"

            case pmPriceSplit = "pm_price_split"

            case cashbackApplied = "cashback_applied"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case itemName = "item_name"

            case cashback

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case deliveryCharge = "delivery_charge"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.pmPriceSplit = pmPriceSplit

            self.cashbackApplied = cashbackApplied

            self.amountPaidRoundoff = amountPaidRoundoff

            self.itemName = itemName

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
