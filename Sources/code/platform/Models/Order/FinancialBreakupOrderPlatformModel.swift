

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var deliveryCharge: Double

        public var totalUnits: Int

        public var couponValue: Double

        public var size: String

        public var refundCredit: Int

        public var priceEffective: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var discount: Int

        public var codCharges: Int

        public var hsnCode: String

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var gstFee: Double

        public var amountPaid: Double

        public var priceMarked: Int

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case size

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case discount

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.size = size

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.discount = discount

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var deliveryCharge: Double

        public var totalUnits: Int

        public var couponValue: Double

        public var size: String

        public var refundCredit: Int

        public var priceEffective: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var itemName: String

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var cashbackApplied: Int

        public var transferPrice: Int

        public var discount: Int

        public var codCharges: Int

        public var hsnCode: String

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var gstFee: Double

        public var amountPaid: Double

        public var priceMarked: Int

        public var identifiers: Identifier

        public var couponEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case size

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case cashbackApplied = "cashback_applied"

            case transferPrice = "transfer_price"

            case discount

            case codCharges = "cod_charges"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifiers

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.size = size

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.cashbackApplied = cashbackApplied

            self.transferPrice = transferPrice

            self.discount = discount

            self.codCharges = codCharges

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
