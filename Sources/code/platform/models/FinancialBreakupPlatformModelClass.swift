

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var gstFee: Double

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var amountPaid: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var refundCredit: Int

        public var priceEffective: Int

        public var cashback: Int

        public var couponValue: Double

        public var discount: Int

        public var itemName: String

        public var fyndCredits: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Double

        public var amountPaidRoundoff: Int?

        public var size: String

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case cashback

            case couponValue = "coupon_value"

            case discount

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.couponValue = couponValue

            self.discount = discount

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
