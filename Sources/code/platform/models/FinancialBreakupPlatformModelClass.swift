

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var pmPriceSplit: [String: Any]

        public var totalUnits: Int

        public var cashback: Int

        public var promotionEffectiveDiscount: Int

        public var gstFee: String

        public var taxCollectedAtSource: Int?

        public var priceEffective: Int

        public var discount: Int

        public var size: String

        public var refundCredit: Int

        public var priceMarked: Int

        public var identifiers: Identifier

        public var itemName: String

        public var gstTaxPercentage: Int

        public var couponValue: Int

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var gstTag: String

        public var valueOfGood: Int

        public var couponEffectiveDiscount: Int

        public var hsnCode: String

        public var amountPaid: Int

        public var brandCalculatedAmount: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case pmPriceSplit = "pm_price_split"

            case totalUnits = "total_units"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceEffective = "price_effective"

            case discount

            case size

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case identifiers

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.codCharges = codCharges

            self.pmPriceSplit = pmPriceSplit

            self.totalUnits = totalUnits

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceEffective = priceEffective

            self.discount = discount

            self.size = size

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
