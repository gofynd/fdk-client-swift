

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var hsnCode: String

        public var size: String

        public var cashbackApplied: Int

        public var couponValue: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var gstTag: String

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var itemName: String

        public var pmPriceSplit: [String: Any]

        public var priceMarked: Int

        public var amountPaid: Int

        public var discount: Int

        public var brandCalculatedAmount: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Int

        public var promotionEffectiveDiscount: Int

        public var gstFee: String

        public var refundCredit: Int

        public var valueOfGood: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case size

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case cashback

            case itemName = "item_name"

            case pmPriceSplit = "pm_price_split"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case discount

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.itemName = itemName

            self.pmPriceSplit = pmPriceSplit

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.discount = discount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
