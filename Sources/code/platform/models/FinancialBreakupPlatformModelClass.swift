

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var cashbackApplied: Int

        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var discount: Int

        public var amountPaid: Double

        public var gstTag: String

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var gstFee: Double

        public var taxCollectedAtSource: Int?

        public var size: String

        public var refundCredit: Int

        public var itemName: String

        public var couponValue: Double

        public var priceEffective: Int

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var brandCalculatedAmount: Double

        public var promotionEffectiveDiscount: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case discount

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case size

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case identifiers

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.discount = discount

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.size = size

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
