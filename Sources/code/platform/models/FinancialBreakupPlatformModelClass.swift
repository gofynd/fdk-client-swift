

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var totalUnits: Int

        public var priceEffective: Int

        public var priceMarked: Int

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var identifiers: Identifier

        public var couponValue: Double

        public var gstFee: Double

        public var size: String

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var hsnCode: String

        public var brandCalculatedAmount: Double

        public var refundCredit: Int

        public var valueOfGood: Double

        public var discount: Int

        public var itemName: String

        public var codCharges: Int

        public var transferPrice: Int

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case size

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case valueOfGood = "value_of_good"

            case discount

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.itemName = itemName

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

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

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
