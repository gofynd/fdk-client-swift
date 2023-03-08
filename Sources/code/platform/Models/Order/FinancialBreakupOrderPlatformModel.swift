

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var discount: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var itemName: String

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var deliveryCharge: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var cashback: Int

        public var hsnCode: String

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case discount

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case cashback

            case hsnCode = "hsn_code"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var discount: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var itemName: String

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var deliveryCharge: Int

        public var codCharges: Int

        public var priceMarked: Int

        public var cashback: Int

        public var hsnCode: String

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case discount

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case cashback

            case hsnCode = "hsn_code"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.hsnCode = hsnCode

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
