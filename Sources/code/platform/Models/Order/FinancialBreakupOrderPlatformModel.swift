

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var identifiers: Identifier

        public var gstFee: Double

        public var size: String

        public var couponValue: Double

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var discount: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var valueOfGood: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var itemName: String

        public var cashback: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case identifiers

            case gstFee = "gst_fee"

            case size

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case cashback

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.size = size

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var identifiers: Identifier

        public var gstFee: Double

        public var size: String

        public var couponValue: Double

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var discount: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var valueOfGood: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var totalUnits: Int

        public var itemName: String

        public var cashback: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case identifiers

            case gstFee = "gst_fee"

            case size

            case couponValue = "coupon_value"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case cashback

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.gstFee = gstFee

            self.size = size

            self.couponValue = couponValue

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
