

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var itemName: String

        public var valueOfGood: Double

        public var gstFee: Double

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var gstTag: String

        public var size: String

        public var totalUnits: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var cashbackApplied: Int

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case size

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case cashbackApplied = "cashback_applied"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.size = size

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var itemName: String

        public var valueOfGood: Double

        public var gstFee: Double

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var gstTag: String

        public var size: String

        public var totalUnits: Int

        public var amountPaid: Double

        public var refundCredit: Int

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var cashbackApplied: Int

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case gstTag = "gst_tag"

            case size

            case totalUnits = "total_units"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case cashbackApplied = "cashback_applied"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.gstTag = gstTag

            self.size = size

            self.totalUnits = totalUnits

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
