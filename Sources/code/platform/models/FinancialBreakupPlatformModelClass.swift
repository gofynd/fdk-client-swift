

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var gstFee: String

        public var valueOfGood: Int

        public var gstTag: String

        public var itemName: String

        public var totalUnits: Int

        public var refundCredit: Int

        public var gstTaxPercentage: Int

        public var size: String

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var amountPaid: Int

        public var transferPrice: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var discount: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Int

        public var hsnCode: String

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Int

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var pmPriceSplit: [String: Any]

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case discount

            case cashback

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case pmPriceSplit = "pm_price_split"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.pmPriceSplit = pmPriceSplit

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
