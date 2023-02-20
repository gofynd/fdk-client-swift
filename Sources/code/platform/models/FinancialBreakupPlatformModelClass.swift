

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var priceEffective: Int

        public var discount: Int

        public var valueOfGood: Int

        public var transferPrice: Int

        public var itemName: String

        public var gstFee: String

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Int?

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Int

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Int

        public var gstTag: String

        public var pmPriceSplit: [String: Any]

        public var size: String

        public var cashback: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Int

        public var couponValue: Int

        public var hsnCode: String

        public var deliveryCharge: Int

        public var amountPaidRoundoff: Int?

        public var amountPaid: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceEffective = "price_effective"

            case discount

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case pmPriceSplit = "pm_price_split"

            case size

            case cashback

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Int, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Int, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Int, couponValue: Int, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: String, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, pmPriceSplit: [String: Any], priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Int, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Int) {
            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.pmPriceSplit = pmPriceSplit

            self.size = size

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(String.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Int.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            pmPriceSplit = try container.decode([String: Any].self, forKey: .pmPriceSplit)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Int.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Int.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(pmPriceSplit, forKey: .pmPriceSplit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
