

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var identifiers: Identifier

        public var hsnCode: String

        public var gstTag: String

        public var amountPaid: Double

        public var refundCredit: Int

        public var discount: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var cashback: Int

        public var size: String

        public var couponValue: Double

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var priceEffective: Int

        public var priceMarked: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case identifiers

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case discount

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashback

            case size

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.discount = discount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.cashback = cashback

            self.size = size

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

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
        public var valueOfGood: Double

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var identifiers: Identifier

        public var hsnCode: String

        public var gstTag: String

        public var amountPaid: Double

        public var refundCredit: Int

        public var discount: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var cashback: Int

        public var size: String

        public var couponValue: Double

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var priceEffective: Int

        public var priceMarked: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case identifiers

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case discount

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashback

            case size

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.discount = discount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.cashback = cashback

            self.size = size

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
