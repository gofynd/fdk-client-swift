

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var valueOfGood: Int

        public var couponValue: Int

        public var pmPriceSplit: [String: Any]

        public var codCharges: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var gstTag: String

        public var size: String

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var gstFee: String

        public var couponEffectiveDiscount: Int

        public var cashback: Int

        public var priceMarked: Int

        public var itemName: String

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var amountPaid: Int

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case discount

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case pmPriceSplit = "pm_price_split"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.discount = discount

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.pmPriceSplit = pmPriceSplit

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
