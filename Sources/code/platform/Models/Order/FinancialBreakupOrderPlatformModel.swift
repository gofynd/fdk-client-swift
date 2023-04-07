

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var size: String

        public var refundCredit: Int

        public var discount: Int

        public var gstFee: Double

        public var cashback: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var fyndCredits: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case refundCredit = "refund_credit"

            case discount

            case gstFee = "gst_fee"

            case cashback

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.refundCredit = refundCredit

            self.discount = discount

            self.gstFee = gstFee

            self.cashback = cashback

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var size: String

        public var refundCredit: Int

        public var discount: Int

        public var gstFee: Double

        public var cashback: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var gstTag: String

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var fyndCredits: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case refundCredit = "refund_credit"

            case discount

            case gstFee = "gst_fee"

            case cashback

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case gstTag = "gst_tag"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.refundCredit = refundCredit

            self.discount = discount

            self.gstFee = gstFee

            self.cashback = cashback

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
