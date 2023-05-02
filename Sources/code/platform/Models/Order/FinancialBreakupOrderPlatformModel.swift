

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var totalUnits: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var discount: Int

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var size: String

        public var amountPaid: Double

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case discount

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case size

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.discount = discount

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.size = size

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

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

        public var cashback: Int

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var totalUnits: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var discount: Int

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var size: String

        public var amountPaid: Double

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case cashback

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case totalUnits = "total_units"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case discount

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case size

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case identifiers

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.cashback = cashback

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.totalUnits = totalUnits

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.discount = discount

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.size = size

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
