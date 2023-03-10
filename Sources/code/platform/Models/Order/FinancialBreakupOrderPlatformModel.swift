

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var size: String

        public var taxCollectedAtSource: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var discount: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var totalUnits: Int

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var identifiers: Identifier

        public var transferPrice: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var couponValue: Double

        public var hsnCode: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case totalUnits = "total_units"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case identifiers

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.totalUnits = totalUnits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

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
        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var size: String

        public var taxCollectedAtSource: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var discount: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var totalUnits: Int

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var identifiers: Identifier

        public var transferPrice: Int

        public var codCharges: Int

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var couponValue: Double

        public var hsnCode: String

        public var cashback: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case discount

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case totalUnits = "total_units"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case identifiers

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case cashback
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.totalUnits = totalUnits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.cashback = cashback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)
        }
    }
}
