

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var cashback: Int

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var priceEffective: Int

        public var priceMarked: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var deliveryCharge: Double

        public var fyndCredits: Int

        public var itemName: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var size: String

        public var transferPrice: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case identifiers

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case size

            case transferPrice = "transfer_price"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.size = size

            self.transferPrice = transferPrice

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
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

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var cashback: Int

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var priceEffective: Int

        public var priceMarked: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var deliveryCharge: Double

        public var fyndCredits: Int

        public var itemName: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var size: String

        public var transferPrice: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case cashback

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case identifiers

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case size

            case transferPrice = "transfer_price"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.cashback = cashback

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.size = size

            self.transferPrice = transferPrice

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
