

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashback: Int

        public var cashbackApplied: Int

        public var pmPriceSplit: [String: Any]

        public var priceEffective: Int

        public var couponEffectiveDiscount: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var itemName: String

        public var deliveryCharge: Int

        public var promotionEffectiveDiscount: Int

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Int

        public var couponValue: Int

        public var refundCredit: Int

        public var identifiers: Identifier

        public var priceMarked: Int

        public var gstFee: String

        public var totalUnits: Int

        public var valueOfGood: Int

        public var taxCollectedAtSource: Int?

        public var transferPrice: Int

        public var fyndCredits: Int

        public var gstTag: String

        public var hsnCode: String

        public var amountPaid: Int

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case cashback

            case cashbackApplied = "cashback_applied"

            case pmPriceSplit = "pm_price_split"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case itemName = "item_name"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case refundCredit = "refund_credit"

            case identifiers

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case transferPrice = "transfer_price"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.pmPriceSplit = pmPriceSplit

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.itemName = itemName

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.refundCredit = refundCredit

            self.identifiers = identifiers

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.transferPrice = transferPrice

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
