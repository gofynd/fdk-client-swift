

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var itemName: String

        public var valueOfGood: Double

        public var gstFee: Double

        public var gstTaxPercentage: Int

        public var brandCalculatedAmount: Double

        public var cashbackApplied: Int

        public var couponValue: Double

        public var transferPrice: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var discount: Int

        public var cashback: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var fyndCredits: Int

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case size

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case identifiers

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case discount

            case cashback

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.size = size

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.discount = discount

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
