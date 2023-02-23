

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var amountPaid: Double

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var transferPrice: Int

        public var hsnCode: String

        public var amountPaidRoundoff: Int?

        public var gstFee: Double

        public var size: String

        public var codCharges: Int

        public var totalUnits: Int

        public var refundCredit: Int

        public var valueOfGood: Double

        public var gstTag: String

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstFee = "gst_fee"

            case size

            case codCharges = "cod_charges"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstFee = gstFee

            self.size = size

            self.codCharges = codCharges

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
