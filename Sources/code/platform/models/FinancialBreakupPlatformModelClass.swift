

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponEffectiveDiscount: Int

        public var identifiers: Identifier

        public var fyndCredits: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var size: String

        public var refundCredit: Int

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var itemName: String

        public var deliveryCharge: Int

        public var valueOfGood: Int

        public var gstFee: String

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var couponValue: Int

        public var codCharges: Int

        public var cashback: Int

        public var hsnCode: String

        public var amountPaid: Int

        public var brandCalculatedAmount: Int

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case refundCredit = "refund_credit"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case cashback

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.refundCredit = refundCredit

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
