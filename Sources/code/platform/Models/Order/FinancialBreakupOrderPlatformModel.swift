

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var valueOfGood: Double

        public var discount: Int

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var totalUnits: Int

        public var amountPaid: Double

        public var gstFee: Double

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var size: String

        public var fyndCredits: Int

        public var cashback: Int

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var promotionEffectiveDiscount: Double

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case size

            case fyndCredits = "fynd_credits"

            case cashback

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.size = size

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

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
        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public var valueOfGood: Double

        public var discount: Int

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var gstTag: String

        public var totalUnits: Int

        public var amountPaid: Double

        public var gstFee: Double

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var size: String

        public var fyndCredits: Int

        public var cashback: Int

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var promotionEffectiveDiscount: Double

        public var identifiers: Identifier

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case size

            case fyndCredits = "fynd_credits"

            case cashback

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case identifiers
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.size = size

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
