

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var valueOfGood: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var hsnCode: String

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var fyndCredits: Int

        public var cashback: Int

        public var couponValue: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var gstTag: String

        public var refundCredit: Int

        public var gstFee: Double

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case cashback

            case couponValue = "coupon_value"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.size = size

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.couponValue = couponValue

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var size: String

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var valueOfGood: Double

        public var codCharges: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var hsnCode: String

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var fyndCredits: Int

        public var cashback: Int

        public var couponValue: Double

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var gstTag: String

        public var refundCredit: Int

        public var gstFee: Double

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case hsnCode = "hsn_code"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case cashback

            case couponValue = "coupon_value"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.size = size

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.hsnCode = hsnCode

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.cashback = cashback

            self.couponValue = couponValue

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
