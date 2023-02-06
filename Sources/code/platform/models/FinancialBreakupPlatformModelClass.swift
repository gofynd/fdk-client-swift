

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var hsnCode: String

        public var identifiers: Identifier

        public var valueOfGood: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Int

        public var fyndCredits: Int

        public var itemName: String

        public var transferPrice: Int

        public var priceMarked: Int

        public var refundCredit: Int

        public var priceEffective: Int

        public var amountPaid: Int

        public var size: String

        public var totalUnits: Int

        public var gstTag: String

        public var couponValue: Int

        public var gstFee: String

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Int

        public var pmPriceSplit: [String: Any]

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case discount

            case hsnCode = "hsn_code"

            case identifiers

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case size

            case totalUnits = "total_units"

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case cashbackApplied = "cashback_applied"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case pmPriceSplit = "pm_price_split"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.discount = discount

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.size = size

            self.totalUnits = totalUnits

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.pmPriceSplit = pmPriceSplit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
