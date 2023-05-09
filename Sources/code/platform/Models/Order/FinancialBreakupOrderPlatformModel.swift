

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var itemName: String

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var discount: Int

        public var couponValue: Double

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var size: String

        public var taxCollectedAtSource: Int?

        public var gstFee: Double

        public var transferPrice: Int

        public var codCharges: Int

        public var hsnCode: String

        public var deliveryCharge: Int

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var amountPaid: Double

        public var cashback: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case discount

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case cashback

            case fyndCredits = "fynd_credits"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.discount = discount

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
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

        public var addedToFyndCash: Bool

        public var itemName: String

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var discount: Int

        public var couponValue: Double

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var size: String

        public var taxCollectedAtSource: Int?

        public var gstFee: Double

        public var transferPrice: Int

        public var codCharges: Int

        public var hsnCode: String

        public var deliveryCharge: Int

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var amountPaid: Double

        public var cashback: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case discount

            case couponValue = "coupon_value"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case cashback

            case fyndCredits = "fynd_credits"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.discount = discount

            self.couponValue = couponValue

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
