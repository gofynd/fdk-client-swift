

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceMarked: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var transferPrice: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var amountPaid: Double

        public var gstTag: String

        public var couponValue: Double

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var hsnCode: String

        public var deliveryCharge: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var gstTaxPercentage: Int

        public var cashback: Int

        public var totalUnits: Int

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case identifiers

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case totalUnits = "total_units"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.totalUnits = totalUnits

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

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
        public var priceMarked: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var gstFee: Double

        public var transferPrice: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var amountPaid: Double

        public var gstTag: String

        public var couponValue: Double

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var refundCredit: Int

        public var hsnCode: String

        public var deliveryCharge: Int

        public var amountPaidRoundoff: Int?

        public var size: String

        public var gstTaxPercentage: Int

        public var cashback: Int

        public var totalUnits: Int

        public var discount: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case identifiers

            case codCharges = "cod_charges"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case cashback

            case totalUnits = "total_units"

            case discount
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceMarked = priceMarked

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.amountPaidRoundoff = amountPaidRoundoff

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.cashback = cashback

            self.totalUnits = totalUnits

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            cashback = try container.decode(Int.self, forKey: .cashback)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
