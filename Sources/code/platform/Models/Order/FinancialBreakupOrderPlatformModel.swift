

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var size: String

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var itemName: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var refundCredit: Int

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"

            case identifiers

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var size: String

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var itemName: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var refundCredit: Int

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case size

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case valueOfGood = "value_of_good"

            case identifiers

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.size = size

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
