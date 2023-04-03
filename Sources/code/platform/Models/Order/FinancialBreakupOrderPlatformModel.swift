

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var itemName: String

        public var gstFee: Double

        public var discount: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var size: String

        public var priceMarked: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var couponValue: Double

        public var codCharges: Int

        public var cashbackApplied: Int

        public var hsnCode: String

        public var cashback: Int

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case discount

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.itemName = itemName

            self.gstFee = gstFee

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var itemName: String

        public var gstFee: Double

        public var discount: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var size: String

        public var priceMarked: Int

        public var totalUnits: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var couponValue: Double

        public var codCharges: Int

        public var cashbackApplied: Int

        public var hsnCode: String

        public var cashback: Int

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var priceEffective: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case discount

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case priceEffective = "price_effective"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.itemName = itemName

            self.gstFee = gstFee

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
