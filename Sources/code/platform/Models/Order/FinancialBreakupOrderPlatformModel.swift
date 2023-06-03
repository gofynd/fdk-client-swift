

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Double

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var discount: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var priceMarked: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var gstTag: String

        public var amountPaid: Double

        public var priceEffective: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var codCharges: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case discount

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.discount = discount

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

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
        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var deliveryCharge: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var promotionEffectiveDiscount: Double

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var discount: Int

        public var transferPrice: Int

        public var hsnCode: String

        public var priceMarked: Int

        public var valueOfGood: Double

        public var fyndCredits: Int

        public var gstTag: String

        public var amountPaid: Double

        public var priceEffective: Int

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var codCharges: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case discount

            case transferPrice = "transfer_price"

            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.discount = discount

            self.transferPrice = transferPrice

            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
