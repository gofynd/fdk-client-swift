

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var deliveryCharge: Int

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var discount: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var identifiers: Identifier

        public var size: String

        public var amountPaid: Double

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var gstTag: String

        public var cashback: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var hsnCode: String

        public var totalUnits: Int

        public var priceMarked: Int

        public var valueOfGood: Double

        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case discount

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers

            case size

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case cashback

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case hsnCode = "hsn_code"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.discount = discount

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers

            self.size = size

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.cashback = cashback

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.hsnCode = hsnCode

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
