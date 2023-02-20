

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var promotionEffectiveDiscount: Int

        public var gstTag: String

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var itemName: String

        public var identifiers: Identifier

        public var discount: Int

        public var couponValue: Int

        public var taxCollectedAtSource: Int?

        public var gstFee: String

        public var pmPriceSplit: [String: Any]

        public var refundCredit: Int

        public var codCharges: Int

        public var amountPaid: Int

        public var hsnCode: String

        public var size: String

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var valueOfGood: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var cashback: Int

        public var couponEffectiveDiscount: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case identifiers

            case discount

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case pmPriceSplit = "pm_price_split"

            case refundCredit = "refund_credit"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case hsnCode = "hsn_code"

            case size

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.identifiers = identifiers

            self.discount = discount

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.pmPriceSplit = pmPriceSplit

            self.refundCredit = refundCredit

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.hsnCode = hsnCode

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(String.self, forKey: .gstFee)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
