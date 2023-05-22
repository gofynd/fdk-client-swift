

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceMarked: Int

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var amountPaid: Double

        public var refundCredit: Int

        public var couponValue: Double

        public var itemName: String

        public var size: String

        public var identifiers: Identifier

        public var gstFee: Double

        public var codCharges: Int

        public var cashbackApplied: Int

        public var hsnCode: String

        public var gstTag: String

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var transferPrice: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case size

            case identifiers

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.itemName = itemName

            self.size = size

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceMarked: Int

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var amountPaid: Double

        public var refundCredit: Int

        public var couponValue: Double

        public var itemName: String

        public var size: String

        public var identifiers: Identifier

        public var gstFee: Double

        public var codCharges: Int

        public var cashbackApplied: Int

        public var hsnCode: String

        public var gstTag: String

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var transferPrice: Int

        public var totalUnits: Int

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case size

            case identifiers

            case gstFee = "gst_fee"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.couponValue = couponValue

            self.itemName = itemName

            self.size = size

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
