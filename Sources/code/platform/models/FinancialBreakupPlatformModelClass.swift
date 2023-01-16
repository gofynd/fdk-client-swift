

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var cashback: Int

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var totalUnits: Int

        public var gstTag: String

        public var discount: Int

        public var gstFee: String

        public var itemName: String

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var amountPaid: Int

        public var size: String

        public var promotionEffectiveDiscount: Int

        public var priceEffective: Int

        public var transferPrice: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var valueOfGood: Int

        public var couponEffectiveDiscount: Int

        public var codCharges: Int

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var pmPriceSplit: [String: Any]

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case cashback

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case discount

            case gstFee = "gst_fee"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case pmPriceSplit = "pm_price_split"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.addedToFyndCash = addedToFyndCash

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.discount = discount

            self.gstFee = gstFee

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.pmPriceSplit = pmPriceSplit

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
