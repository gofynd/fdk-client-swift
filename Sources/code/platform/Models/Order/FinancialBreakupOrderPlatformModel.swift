

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var discount: Int

        public var size: String

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var fyndCredits: Int

        public var itemName: String

        public var identifiers: Identifier

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case size

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case identifiers

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case cashback

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.size = size

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var discount: Int

        public var size: String

        public var hsnCode: String

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var amountPaid: Double

        public var priceEffective: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var fyndCredits: Int

        public var itemName: String

        public var identifiers: Identifier

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var gstTaxPercentage: Int

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case discount

            case size

            case hsnCode = "hsn_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case identifiers

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstTaxPercentage = "gst_tax_percentage"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case cashback

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.discount = discount

            self.size = size

            self.hsnCode = hsnCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.gstTaxPercentage = gstTaxPercentage

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            discount = try container.decode(Int.self, forKey: .discount)

            size = try container.decode(String.self, forKey: .size)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
