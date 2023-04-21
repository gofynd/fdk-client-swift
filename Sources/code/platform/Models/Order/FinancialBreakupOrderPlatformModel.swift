

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var couponValue: Double

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var gstTag: String

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var discount: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var priceEffective: Int

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var itemName: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var cashback: Int

        public var gstFee: Double

        public var amountPaid: Double

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case identifiers

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case cashback

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

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
        public var cashbackApplied: Int

        public var couponValue: Double

        public var fyndCredits: Int

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var gstTag: String

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var discount: Int

        public var identifiers: Identifier

        public var transferPrice: Int

        public var priceEffective: Int

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var couponEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var itemName: String

        public var totalUnits: Int

        public var valueOfGood: Double

        public var cashback: Int

        public var gstFee: Double

        public var amountPaid: Double

        public var taxCollectedAtSource: Int?

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case fyndCredits = "fynd_credits"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case gstTag = "gst_tag"

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case discount

            case identifiers

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case itemName = "item_name"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case cashback

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.fyndCredits = fyndCredits

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.gstTag = gstTag

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.discount = discount

            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.itemName = itemName

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.cashback = cashback

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)
        }
    }
}
