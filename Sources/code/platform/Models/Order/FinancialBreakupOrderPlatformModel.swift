

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var fyndCredits: Int

        public var totalUnits: Int

        public var priceMarked: Int

        public var addedToFyndCash: Bool

        public var identifiers: Identifier

        public var discount: Int

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var gstTag: String

        public var deliveryCharge: Double

        public var size: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var couponValue: Double

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var codCharges: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case identifiers

            case discount

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case size

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.identifiers = identifiers

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

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
        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var fyndCredits: Int

        public var totalUnits: Int

        public var priceMarked: Int

        public var addedToFyndCash: Bool

        public var identifiers: Identifier

        public var discount: Int

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var cashback: Int

        public var gstTag: String

        public var deliveryCharge: Double

        public var size: String

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var couponValue: Double

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var codCharges: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case addedToFyndCash = "added_to_fynd_cash"

            case identifiers

            case discount

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashback

            case gstTag = "gst_tag"

            case deliveryCharge = "delivery_charge"

            case size

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.addedToFyndCash = addedToFyndCash

            self.identifiers = identifiers

            self.discount = discount

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashback = cashback

            self.gstTag = gstTag

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
