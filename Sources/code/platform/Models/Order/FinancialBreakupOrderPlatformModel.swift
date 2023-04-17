

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public var size: String

        public var refundCredit: Int

        public var priceMarked: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var promotionEffectiveDiscount: Double

        public var couponValue: Double

        public var totalUnits: Int

        public var identifiers: Identifier

        public var valueOfGood: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var gstFee: Double

        public var hsnCode: String

        public var discount: Int

        public var priceEffective: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case size

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case identifiers

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case discount

            case priceEffective = "price_effective"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.size = size

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.discount = discount

            self.priceEffective = priceEffective

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public var size: String

        public var refundCredit: Int

        public var priceMarked: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var promotionEffectiveDiscount: Double

        public var couponValue: Double

        public var totalUnits: Int

        public var identifiers: Identifier

        public var valueOfGood: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var gstFee: Double

        public var hsnCode: String

        public var discount: Int

        public var priceEffective: Int

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case size

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case identifiers

            case valueOfGood = "value_of_good"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case discount

            case priceEffective = "price_effective"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.size = size

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.discount = discount

            self.priceEffective = priceEffective

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
