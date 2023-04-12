

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashbackApplied: Int

        public var totalUnits: Int

        public var codCharges: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var fyndCredits: Int

        public var itemName: String

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var cashback: Int

        public var valueOfGood: Double

        public var refundCredit: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var amountPaid: Double

        public var priceMarked: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case codCharges = "cod_charges"

            case identifiers

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case cashback

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
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

        public var totalUnits: Int

        public var codCharges: Int

        public var identifiers: Identifier

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var taxCollectedAtSource: Int?

        public var discount: Int

        public var fyndCredits: Int

        public var itemName: String

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var priceEffective: Int

        public var cashback: Int

        public var valueOfGood: Double

        public var refundCredit: Int

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var amountPaid: Double

        public var priceMarked: Int

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case codCharges = "cod_charges"

            case identifiers

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case taxCollectedAtSource = "tax_collected_at_source"

            case discount

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case cashback

            case valueOfGood = "value_of_good"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.codCharges = codCharges

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.taxCollectedAtSource = taxCollectedAtSource

            self.discount = discount

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
        }
    }
}
