

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Double

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var gstTag: String

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public var itemName: String

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var priceMarked: Int

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var discount: Int

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case discount

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaid = amountPaid

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.discount = discount

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaid: Double

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var deliveryCharge: Int

        public var gstTag: String

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public var itemName: String

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var brandCalculatedAmount: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var size: String

        public var priceMarked: Int

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var discount: Int

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"

            case itemName = "item_name"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case discount

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaid = amountPaid

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits

            self.itemName = itemName

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.discount = discount

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
