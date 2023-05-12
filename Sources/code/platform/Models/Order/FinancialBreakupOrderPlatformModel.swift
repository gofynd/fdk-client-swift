

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var discount: Int

        public var size: String

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var gstFee: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var refundCredit: Int

        public var itemName: String

        public var codCharges: Int

        public var fyndCredits: Int

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var hsnCode: String

        public var gstTag: String

        public var priceEffective: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

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
        public var discount: Int

        public var size: String

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var gstFee: Double

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var refundCredit: Int

        public var itemName: String

        public var codCharges: Int

        public var fyndCredits: Int

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var hsnCode: String

        public var gstTag: String

        public var priceEffective: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case discount

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.discount = discount

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
