

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Int

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public var transferPrice: Int

        public var couponValue: Int

        public var hsnCode: String

        public var cashbackApplied: Int

        public var itemName: String

        public var discount: Int

        public var cashback: Int

        public var refundCredit: Int

        public var pmPriceSplit: [String: Any]

        public var gstFee: String

        public var priceEffective: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case discount

            case cashback

            case refundCredit = "refund_credit"

            case pmPriceSplit = "pm_price_split"

            case gstFee = "gst_fee"

            case priceEffective = "price_effective"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.discount = discount

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.pmPriceSplit = pmPriceSplit

            self.gstFee = gstFee

            self.priceEffective = priceEffective

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
