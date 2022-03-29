import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CartCurrency
         Used By: Cart
     */
    class CartCurrency: Codable {
        public var code: String?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case symbol
        }

        public init(code: String?, symbol: String?) {
            self.code = code

            self.symbol = symbol
        }

        public func duplicate() -> CartCurrency {
            let dict = self.dictionary!
            let copy = CartCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }

    /*
         Model: PaymentSelectionLock
         Used By: Cart
     */
    class PaymentSelectionLock: Codable {
        public var defaultOptions: String?

        public var enabled: Bool?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case defaultOptions = "default_options"

            case enabled

            case paymentIdentifier = "payment_identifier"
        }

        public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
            self.defaultOptions = defaultOptions

            self.enabled = enabled

            self.paymentIdentifier = paymentIdentifier
        }

        public func duplicate() -> PaymentSelectionLock {
            let dict = self.dictionary!
            let copy = PaymentSelectionLock(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                defaultOptions = try container.decode(String.self, forKey: .defaultOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }

    /*
         Model: PromiseTimestamp
         Used By: Cart
     */
    class PromiseTimestamp: Codable {
        public var min: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: Double?, min: Double?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> PromiseTimestamp {
            let dict = self.dictionary!
            let copy = PromiseTimestamp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: PromiseFormatted
         Used By: Cart
     */
    class PromiseFormatted: Codable {
        public var min: String?

        public var max: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: String?, min: String?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> PromiseFormatted {
            let dict = self.dictionary!
            let copy = PromiseFormatted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(String.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(String.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: ShipmentPromise
         Used By: Cart
     */
    class ShipmentPromise: Codable {
        public var timestamp: PromiseTimestamp?

        public var formatted: PromiseFormatted?

        public enum CodingKeys: String, CodingKey {
            case timestamp

            case formatted
        }

        public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
            self.timestamp = timestamp

            self.formatted = formatted
        }

        public func duplicate() -> ShipmentPromise {
            let dict = self.dictionary!
            let copy = ShipmentPromise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)

            try? container.encodeIfPresent(formatted, forKey: .formatted)
        }
    }

    /*
         Model: LoyaltyPoints
         Used By: Cart
     */
    class LoyaltyPoints: Codable {
        public var applicable: Double?

        public var isApplied: Bool?

        public var total: Double?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case applicable

            case isApplied = "is_applied"

            case total

            case description
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            self.applicable = applicable

            self.isApplied = isApplied

            self.total = total

            self.description = description
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicable = try container.decode(Double.self, forKey: .applicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicable, forKey: .applicable)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: DisplayBreakup
         Used By: Cart
     */
    class DisplayBreakup: Codable {
        public var value: Double?

        public var display: String?

        public var key: String?

        public var currencySymbol: String?

        public var currencyCode: String?

        public var message: [String]?

        public enum CodingKeys: String, CodingKey {
            case value

            case display

            case key

            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case message
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            self.value = value

            self.display = display

            self.key = key

            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.message = message
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode([String].self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: RawBreakup
         Used By: Cart
     */
    class RawBreakup: Codable {
        public var codCharge: Double?

        public var discount: Double?

        public var gstCharges: Double?

        public var convenienceFee: Double?

        public var coupon: Double?

        public var total: Double?

        public var deliveryCharge: Double?

        public var youSaved: Double?

        public var mrpTotal: Double?

        public var fyndCash: Double?

        public var subtotal: Double?

        public var vog: Double?

        public enum CodingKeys: String, CodingKey {
            case codCharge = "cod_charge"

            case discount

            case gstCharges = "gst_charges"

            case convenienceFee = "convenience_fee"

            case coupon

            case total

            case deliveryCharge = "delivery_charge"

            case youSaved = "you_saved"

            case mrpTotal = "mrp_total"

            case fyndCash = "fynd_cash"

            case subtotal

            case vog
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            self.codCharge = codCharge

            self.discount = discount

            self.gstCharges = gstCharges

            self.convenienceFee = convenienceFee

            self.coupon = coupon

            self.total = total

            self.deliveryCharge = deliveryCharge

            self.youSaved = youSaved

            self.mrpTotal = mrpTotal

            self.fyndCash = fyndCash

            self.subtotal = subtotal

            self.vog = vog
        }

        public func duplicate() -> RawBreakup {
            let dict = self.dictionary!
            let copy = RawBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharge = try container.decode(Double.self, forKey: .codCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCharges = try container.decode(Double.self, forKey: .gstCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(Double.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youSaved = try container.decode(Double.self, forKey: .youSaved)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotal = try container.decode(Double.self, forKey: .subtotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vog = try container.decode(Double.self, forKey: .vog)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(vog, forKey: .vog)
        }
    }

    /*
         Model: CouponBreakup
         Used By: Cart
     */
    class CouponBreakup: Codable {
        public var uid: String?

        public var value: Double?

        public var code: String?

        public var isApplied: Bool?

        public var message: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case value

            case code

            case isApplied = "is_applied"

            case message

            case type
        }

        public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: String?, value: Double?) {
            self.uid = uid

            self.value = value

            self.code = code

            self.isApplied = isApplied

            self.message = message

            self.type = type
        }

        public func duplicate() -> CouponBreakup {
            let dict = self.dictionary!
            let copy = CouponBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: CartBreakup
         Used By: Cart
     */
    class CartBreakup: Codable {
        public var loyaltyPoints: LoyaltyPoints?

        public var display: [DisplayBreakup]?

        public var raw: RawBreakup?

        public var coupon: CouponBreakup?

        public enum CodingKeys: String, CodingKey {
            case loyaltyPoints = "loyalty_points"

            case display

            case raw

            case coupon
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            self.loyaltyPoints = loyaltyPoints

            self.display = display

            self.raw = raw

            self.coupon = coupon
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode([DisplayBreakup].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                raw = try container.decode(RawBreakup.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponBreakup.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(raw, forKey: .raw)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }

    /*
         Model: ProductAvailability
         Used By: Cart
     */
    class ProductAvailability: Codable {
        public var isValid: Bool?

        public var sizes: [String]?

        public var otherStoreQuantity: Int?

        public var deliverable: Bool?

        public var outOfStock: Bool?

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case sizes

            case otherStoreQuantity = "other_store_quantity"

            case deliverable

            case outOfStock = "out_of_stock"
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            self.isValid = isValid

            self.sizes = sizes

            self.otherStoreQuantity = otherStoreQuantity

            self.deliverable = deliverable

            self.outOfStock = outOfStock
        }

        public func duplicate() -> ProductAvailability {
            let dict = self.dictionary!
            let copy = ProductAvailability(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([String].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverable = try container.decode(Bool.self, forKey: .deliverable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
        }
    }

    /*
         Model: BasePrice
         Used By: Cart
     */
    class BasePrice: Codable {
        public var currencyCode: String?

        public var effective: Double?

        public var marked: Double?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case effective

            case marked

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            self.currencyCode = currencyCode

            self.effective = effective

            self.marked = marked

            self.currencySymbol = currencySymbol
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        }
    }

    /*
         Model: ArticlePriceInfo
         Used By: Cart
     */
    class ArticlePriceInfo: Codable {
        public var converted: BasePrice?

        public var base: BasePrice?

        public enum CodingKeys: String, CodingKey {
            case converted

            case base
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            self.converted = converted

            self.base = base
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                converted = try container.decode(BasePrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                base = try container.decode(BasePrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(converted, forKey: .converted)

            try? container.encodeIfPresent(base, forKey: .base)
        }
    }

    /*
         Model: BaseInfo
         Used By: Cart
     */
    class BaseInfo: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductArticle
         Used By: Cart
     */
    class ProductArticle: Codable {
        public var uid: String?

        public var price: ArticlePriceInfo?

        public var extraMeta: [String: Any]?

        public var store: BaseInfo?

        public var size: String?

        public var seller: BaseInfo?

        public var quantity: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case price

            case extraMeta = "extra_meta"

            case store

            case size

            case seller

            case quantity

            case type
        }

        public init(extraMeta: [String: Any]?, price: ArticlePriceInfo?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            self.uid = uid

            self.price = price

            self.extraMeta = extraMeta

            self.store = store

            self.size = size

            self.seller = seller

            self.quantity = quantity

            self.type = type
        }

        public func duplicate() -> ProductArticle {
            let dict = self.dictionary!
            let copy = ProductArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(BaseInfo.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(BaseInfo.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ProductPrice
         Used By: Cart
     */
    class ProductPrice: Codable {
        public var selling: Double?

        public var currencySymbol: String?

        public var currencyCode: String?

        public var marked: Double?

        public var addOn: Double?

        public var effective: Double?

        public enum CodingKeys: String, CodingKey {
            case selling

            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case marked

            case addOn = "add_on"

            case effective
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            self.selling = selling

            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.marked = marked

            self.addOn = addOn

            self.effective = effective
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selling = try container.decode(Double.self, forKey: .selling)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addOn = try container.decode(Double.self, forKey: .addOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }

    /*
         Model: ProductPriceInfo
         Used By: Cart
     */
    class ProductPriceInfo: Codable {
        public var converted: ProductPrice?

        public var base: ProductPrice?

        public enum CodingKeys: String, CodingKey {
            case converted

            case base
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            self.converted = converted

            self.base = base
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                converted = try container.decode(ProductPrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                base = try container.decode(ProductPrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(converted, forKey: .converted)

            try? container.encodeIfPresent(base, forKey: .base)
        }
    }

    /*
         Model: CategoryInfo
         Used By: Cart
     */
    class CategoryInfo: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ActionQuery
         Used By: Cart
     */
    class ActionQuery: Codable {
        public var productSlug: [String]?

        public enum CodingKeys: String, CodingKey {
            case productSlug = "product_slug"
        }

        public init(productSlug: [String]?) {
            self.productSlug = productSlug
        }

        public func duplicate() -> ActionQuery {
            let dict = self.dictionary!
            let copy = ActionQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productSlug = try container.decode([String].self, forKey: .productSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
        }
    }

    /*
         Model: ProductAction
         Used By: Cart
     */
    class ProductAction: Codable {
        public var url: String?

        public var query: ActionQuery?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case query

            case type
        }

        public init(query: ActionQuery?, type: String?, url: String?) {
            self.url = url

            self.query = query

            self.type = type
        }

        public func duplicate() -> ProductAction {
            let dict = self.dictionary!
            let copy = ProductAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode(ActionQuery.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ProductImage
         Used By: Cart
     */
    class ProductImage: Codable {
        public var url: String?

        public var secureUrl: String?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            self.url = url

            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }

    /*
         Model: CartProduct
         Used By: Cart
     */
    class CartProduct: Codable {
        public var uid: Int?

        public var categories: [CategoryInfo]?

        public var slug: String?

        public var action: ProductAction?

        public var images: [ProductImage]?

        public var name: String?

        public var brand: BaseInfo?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case categories

            case slug

            case action

            case images

            case name

            case brand

            case type
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            self.uid = uid

            self.categories = categories

            self.slug = slug

            self.action = action

            self.images = images

            self.name = name

            self.brand = brand

            self.type = type
        }

        public func duplicate() -> CartProduct {
            let dict = self.dictionary!
            let copy = CartProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([CategoryInfo].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([ProductImage].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(BaseInfo.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: PromoMeta
         Used By: Cart
     */
    class PromoMeta: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> PromoMeta {
            let dict = self.dictionary!
            let copy = PromoMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CartProductIdentifer
         Used By: Cart
     */
    class CartProductIdentifer: Codable {
        public var identifier: String?

        public enum CodingKeys: String, CodingKey {
            case identifier
        }

        public init(identifier: String?) {
            self.identifier = identifier
        }

        public func duplicate() -> CartProductIdentifer {
            let dict = self.dictionary!
            let copy = CartProductIdentifer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }

    /*
         Model: CartProductInfo
         Used By: Cart
     */
    class CartProductInfo: Codable {
        public var availability: ProductAvailability?

        public var discount: String?

        public var article: ProductArticle?

        public var key: String?

        public var isSet: Bool?

        public var pricePerUnit: ProductPriceInfo?

        public var product: CartProduct?

        public var couponMessage: String?

        public var promoMeta: PromoMeta?

        public var message: String?

        public var quantity: Int?

        public var bulkOffer: [String: Any]?

        public var identifiers: CartProductIdentifer

        public var price: ProductPriceInfo?

        public enum CodingKeys: String, CodingKey {
            case availability

            case discount

            case article

            case key

            case isSet = "is_set"

            case pricePerUnit = "price_per_unit"

            case product

            case couponMessage = "coupon_message"

            case promoMeta = "promo_meta"

            case message

            case quantity

            case bulkOffer = "bulk_offer"

            case identifiers

            case price
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promoMeta: PromoMeta?, quantity: Int?) {
            self.availability = availability

            self.discount = discount

            self.article = article

            self.key = key

            self.isSet = isSet

            self.pricePerUnit = pricePerUnit

            self.product = product

            self.couponMessage = couponMessage

            self.promoMeta = promoMeta

            self.message = message

            self.quantity = quantity

            self.bulkOffer = bulkOffer

            self.identifiers = identifiers

            self.price = price
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(ProductArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(CartProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                price = try container.decode(ProductPriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: CartDetailResponse
         Used By: Cart
     */
    class CartDetailResponse: Codable {
        public var restrictCheckout: Bool?

        public var isValid: Bool?

        public var currency: CartCurrency?

        public var lastModified: String?

        public var id: String?

        public var gstin: String?

        public var couponText: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var deliveryPromise: ShipmentPromise?

        public var breakupValues: CartBreakup?

        public var deliveryChargeInfo: String?

        public var message: String?

        public var comment: String?

        public var items: [CartProductInfo]?

        public var checkoutMode: String?

        public enum CodingKeys: String, CodingKey {
            case restrictCheckout = "restrict_checkout"

            case isValid = "is_valid"

            case currency

            case lastModified = "last_modified"

            case id

            case gstin

            case couponText = "coupon_text"

            case paymentSelectionLock = "payment_selection_lock"

            case deliveryPromise = "delivery_promise"

            case breakupValues = "breakup_values"

            case deliveryChargeInfo = "delivery_charge_info"

            case message

            case comment

            case items

            case checkoutMode = "checkout_mode"
        }

        public init(breakupValues: CartBreakup?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?) {
            self.restrictCheckout = restrictCheckout

            self.isValid = isValid

            self.currency = currency

            self.lastModified = lastModified

            self.id = id

            self.gstin = gstin

            self.couponText = couponText

            self.paymentSelectionLock = paymentSelectionLock

            self.deliveryPromise = deliveryPromise

            self.breakupValues = breakupValues

            self.deliveryChargeInfo = deliveryChargeInfo

            self.message = message

            self.comment = comment

            self.items = items

            self.checkoutMode = checkoutMode
        }

        public func duplicate() -> CartDetailResponse {
            let dict = self.dictionary!
            let copy = CartDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        }
    }

    /*
         Model: AddProductCart
         Used By: Cart
     */
    class AddProductCart: Codable {
        public var display: String?

        public var extraMeta: [String: Any]?

        public var sellerId: Int?

        public var storeId: Int?

        public var articleId: String?

        public var pos: Bool?

        public var itemSize: String?

        public var quantity: Int?

        public var itemId: Int?

        public var articleAssignment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case display

            case extraMeta = "extra_meta"

            case sellerId = "seller_id"

            case storeId = "store_id"

            case articleId = "article_id"

            case pos

            case itemSize = "item_size"

            case quantity

            case itemId = "item_id"

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, extraMeta: [String: Any]?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
            self.display = display

            self.extraMeta = extraMeta

            self.sellerId = sellerId

            self.storeId = storeId

            self.articleId = articleId

            self.pos = pos

            self.itemSize = itemSize

            self.quantity = quantity

            self.itemId = itemId

            self.articleAssignment = articleAssignment
        }

        public func duplicate() -> AddProductCart {
            let dict = self.dictionary!
            let copy = AddProductCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pos = try container.decode(Bool.self, forKey: .pos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }

    /*
         Model: AddCartRequest
         Used By: Cart
     */
    class AddCartRequest: Codable {
        public var items: [AddProductCart]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [AddProductCart]?) {
            self.items = items
        }

        public func duplicate() -> AddCartRequest {
            let dict = self.dictionary!
            let copy = AddCartRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AddProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: AddCartDetailResponse
         Used By: Cart
     */
    class AddCartDetailResponse: Codable {
        public var success: Bool?

        public var partial: Bool?

        public var cart: CartDetailResponse?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case partial

            case cart

            case message
        }

        public init(cart: CartDetailResponse?, message: String?, partial: Bool?, success: Bool?) {
            self.success = success

            self.partial = partial

            self.cart = cart

            self.message = message
        }

        public func duplicate() -> AddCartDetailResponse {
            let dict = self.dictionary!
            let copy = AddCartDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                partial = try container.decode(Bool.self, forKey: .partial)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CartDetailResponse.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(partial, forKey: .partial)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: UpdateProductCart
         Used By: Cart
     */
    class UpdateProductCart: Codable {
        public var extraMeta: [String: Any]?

        public var articleId: String?

        public var itemSize: String?

        public var quantity: Int?

        public var itemId: Int?

        public var itemIndex: Int?

        public var identifiers: CartProductIdentifer

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case articleId = "article_id"

            case itemSize = "item_size"

            case quantity

            case itemId = "item_id"

            case itemIndex = "item_index"

            case identifiers
        }

        public init(articleId: String?, extraMeta: [String: Any]?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
            self.extraMeta = extraMeta

            self.articleId = articleId

            self.itemSize = itemSize

            self.quantity = quantity

            self.itemId = itemId

            self.itemIndex = itemIndex

            self.identifiers = identifiers
        }

        public func duplicate() -> UpdateProductCart {
            let dict = self.dictionary!
            let copy = UpdateProductCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemIndex = try container.decode(Int.self, forKey: .itemIndex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }

    /*
         Model: UpdateCartRequest
         Used By: Cart
     */
    class UpdateCartRequest: Codable {
        public var items: [UpdateProductCart]?

        public var operation: String

        public enum CodingKeys: String, CodingKey {
            case items

            case operation
        }

        public init(items: [UpdateProductCart]?, operation: String) {
            self.items = items

            self.operation = operation
        }

        public func duplicate() -> UpdateCartRequest {
            let dict = self.dictionary!
            let copy = UpdateCartRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([UpdateProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operation = try container.decode(String.self, forKey: .operation)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(operation, forKey: .operation)
        }
    }

    /*
         Model: UpdateCartDetailResponse
         Used By: Cart
     */
    class UpdateCartDetailResponse: Codable {
        public var success: Bool?

        public var cart: CartDetailResponse?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case cart

            case message
        }

        public init(cart: CartDetailResponse?, message: String?, success: Bool?) {
            self.success = success

            self.cart = cart

            self.message = message
        }

        public func duplicate() -> UpdateCartDetailResponse {
            let dict = self.dictionary!
            let copy = UpdateCartDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CartDetailResponse.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CartItemCountResponse
         Used By: Cart
     */
    class CartItemCountResponse: Codable {
        public var userCartItemsCount: Int?

        public enum CodingKeys: String, CodingKey {
            case userCartItemsCount = "user_cart_items_count"
        }

        public init(userCartItemsCount: Int?) {
            self.userCartItemsCount = userCartItemsCount
        }

        public func duplicate() -> CartItemCountResponse {
            let dict = self.dictionary!
            let copy = CartItemCountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userCartItemsCount = try container.decode(Int.self, forKey: .userCartItemsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
        }
    }

    /*
         Model: PageCoupon
         Used By: Cart
     */
    class PageCoupon: Codable {
        public var hasPrevious: Bool?

        public var totalItemCount: Int?

        public var current: Int?

        public var hasNext: Bool?

        public var total: Int?

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case totalItemCount = "total_item_count"

            case current

            case hasNext = "has_next"

            case total
        }

        public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
            self.hasPrevious = hasPrevious

            self.totalItemCount = totalItemCount

            self.current = current

            self.hasNext = hasNext

            self.total = total
        }

        public func duplicate() -> PageCoupon {
            let dict = self.dictionary!
            let copy = PageCoupon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }

    /*
         Model: Coupon
         Used By: Cart
     */
    class Coupon: Codable {
        public var couponCode: String?

        public var couponValue: Double?

        public var title: String?

        public var isApplied: Bool?

        public var isApplicable: Bool?

        public var expiresOn: String?

        public var subTitle: String?

        public var message: String?

        public var maxDiscountValue: Double?

        public var minimumCartValue: Double?

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"

            case couponValue = "coupon_value"

            case title

            case isApplied = "is_applied"

            case isApplicable = "is_applicable"

            case expiresOn = "expires_on"

            case subTitle = "sub_title"

            case message

            case maxDiscountValue = "max_discount_value"

            case minimumCartValue = "minimum_cart_value"
        }

        public init(couponCode: String?, couponValue: Double?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
            self.couponCode = couponCode

            self.couponValue = couponValue

            self.title = title

            self.isApplied = isApplied

            self.isApplicable = isApplicable

            self.expiresOn = expiresOn

            self.subTitle = subTitle

            self.message = message

            self.maxDiscountValue = maxDiscountValue

            self.minimumCartValue = minimumCartValue
        }

        public func duplicate() -> Coupon {
            let dict = self.dictionary!
            let copy = Coupon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplicable = try container.decode(Bool.self, forKey: .isApplicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresOn = try container.decode(String.self, forKey: .expiresOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
        }
    }

    /*
         Model: GetCouponResponse
         Used By: Cart
     */
    class GetCouponResponse: Codable {
        public var page: PageCoupon?

        public var availableCouponList: [Coupon]?

        public enum CodingKeys: String, CodingKey {
            case page

            case availableCouponList = "available_coupon_list"
        }

        public init(availableCouponList: [Coupon]?, page: PageCoupon?) {
            self.page = page

            self.availableCouponList = availableCouponList
        }

        public func duplicate() -> GetCouponResponse {
            let dict = self.dictionary!
            let copy = GetCouponResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(PageCoupon.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
        }
    }

    /*
         Model: ApplyCouponRequest
         Used By: Cart
     */
    class ApplyCouponRequest: Codable {
        public var couponCode: String

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"
        }

        public init(couponCode: String) {
            self.couponCode = couponCode
        }

        public func duplicate() -> ApplyCouponRequest {
            let dict = self.dictionary!
            let copy = ApplyCouponRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponCode = try container.decode(String.self, forKey: .couponCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
        }
    }

    /*
         Model: OfferPrice
         Used By: Cart
     */
    class OfferPrice: Codable {
        public var bulkEffective: Double?

        public var currencySymbol: String?

        public var currencyCode: String?

        public var marked: Int?

        public var effective: Int?

        public enum CodingKeys: String, CodingKey {
            case bulkEffective = "bulk_effective"

            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case marked

            case effective
        }

        public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
            self.bulkEffective = bulkEffective

            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.marked = marked

            self.effective = effective
        }

        public func duplicate() -> OfferPrice {
            let dict = self.dictionary!
            let copy = OfferPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Int.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Int.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }

    /*
         Model: OfferItem
         Used By: Cart
     */
    class OfferItem: Codable {
        public var best: Bool?

        public var margin: Int?

        public var total: Double?

        public var autoApplied: Bool?

        public var quantity: Int?

        public var type: String?

        public var price: OfferPrice?

        public enum CodingKeys: String, CodingKey {
            case best

            case margin

            case total

            case autoApplied = "auto_applied"

            case quantity

            case type

            case price
        }

        public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
            self.best = best

            self.margin = margin

            self.total = total

            self.autoApplied = autoApplied

            self.quantity = quantity

            self.type = type

            self.price = price
        }

        public func duplicate() -> OfferItem {
            let dict = self.dictionary!
            let copy = OfferItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                best = try container.decode(Bool.self, forKey: .best)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                margin = try container.decode(Int.self, forKey: .margin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Double.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApplied = try container.decode(Bool.self, forKey: .autoApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(OfferPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(best, forKey: .best)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: OfferSeller
         Used By: Cart
     */
    class OfferSeller: Codable {
        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name
        }

        public init(name: String?, uid: Int?) {
            self.uid = uid

            self.name = name
        }

        public func duplicate() -> OfferSeller {
            let dict = self.dictionary!
            let copy = OfferSeller(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: BulkPriceOffer
         Used By: Cart
     */
    class BulkPriceOffer: Codable {
        public var offers: [OfferItem]?

        public var seller: OfferSeller?

        public enum CodingKeys: String, CodingKey {
            case offers

            case seller
        }

        public init(offers: [OfferItem]?, seller: OfferSeller?) {
            self.offers = offers

            self.seller = seller
        }

        public func duplicate() -> BulkPriceOffer {
            let dict = self.dictionary!
            let copy = BulkPriceOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offers = try container.decode([OfferItem].self, forKey: .offers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(OfferSeller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offers, forKey: .offers)

            try? container.encodeIfPresent(seller, forKey: .seller)
        }
    }

    /*
         Model: BulkPriceResponse
         Used By: Cart
     */
    class BulkPriceResponse: Codable {
        public var data: [BulkPriceOffer]?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [BulkPriceOffer]?) {
            self.data = data
        }

        public func duplicate() -> BulkPriceResponse {
            let dict = self.dictionary!
            let copy = BulkPriceResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([BulkPriceOffer].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: RewardPointRequest
         Used By: Cart
     */
    class RewardPointRequest: Codable {
        public var points: Bool

        public enum CodingKeys: String, CodingKey {
            case points
        }

        public init(points: Bool) {
            self.points = points
        }

        public func duplicate() -> RewardPointRequest {
            let dict = self.dictionary!
            let copy = RewardPointRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            points = try container.decode(Bool.self, forKey: .points)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }

    /*
         Model: GeoLocation
         Used By: Cart
     */
    class GeoLocation: Codable {
        public var longitude: Double?

        public var latitude: Double?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case latitude
        }

        public init(latitude: Double?, longitude: Double?) {
            self.longitude = longitude

            self.latitude = latitude
        }

        public func duplicate() -> GeoLocation {
            let dict = self.dictionary!
            let copy = GeoLocation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }

    /*
         Model: Address
         Used By: Cart
     */
    class Address: Codable {
        public var state: String?

        public var country: String?

        public var tags: [String]?

        public var address: String?

        public var name: String?

        public var isDefaultAddress: Bool?

        public var userId: String?

        public var checkoutMode: String?

        public var area: String?

        public var isActive: Bool?

        public var id: String?

        public var areaCodeSlug: String?

        public var googleMapPoint: [String: Any]?

        public var city: String?

        public var countryCode: String?

        public var areaCode: String?

        public var phone: String?

        public var meta: [String: Any]?

        public var email: String?

        public var landmark: String?

        public var addressType: String?

        public var geoLocation: GeoLocation?

        public enum CodingKeys: String, CodingKey {
            case state

            case country

            case tags

            case address

            case name

            case isDefaultAddress = "is_default_address"

            case userId = "user_id"

            case checkoutMode = "checkout_mode"

            case area

            case isActive = "is_active"

            case id

            case areaCodeSlug = "area_code_slug"

            case googleMapPoint = "google_map_point"

            case city

            case countryCode = "country_code"

            case areaCode = "area_code"

            case phone

            case meta

            case email

            case landmark

            case addressType = "address_type"

            case geoLocation = "geo_location"
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, googleMapPoint: [String: Any]?, id: String?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [String]?, userId: String?) {
            self.state = state

            self.country = country

            self.tags = tags

            self.address = address

            self.name = name

            self.isDefaultAddress = isDefaultAddress

            self.userId = userId

            self.checkoutMode = checkoutMode

            self.area = area

            self.isActive = isActive

            self.id = id

            self.areaCodeSlug = areaCodeSlug

            self.googleMapPoint = googleMapPoint

            self.city = city

            self.countryCode = countryCode

            self.areaCode = areaCode

            self.phone = phone

            self.meta = meta

            self.email = email

            self.landmark = landmark

            self.addressType = addressType

            self.geoLocation = geoLocation
        }

        public func duplicate() -> Address {
            let dict = self.dictionary!
            let copy = Address(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                areaCode = try container.decode(String.self, forKey: .areaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
        }
    }

    /*
         Model: GetAddressesResponse
         Used By: Cart
     */
    class GetAddressesResponse: Codable {
        public var address: [Address]?

        public enum CodingKeys: String, CodingKey {
            case address
        }

        public init(address: [Address]?) {
            self.address = address
        }

        public func duplicate() -> GetAddressesResponse {
            let dict = self.dictionary!
            let copy = GetAddressesResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode([Address].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: SaveAddressResponse
         Used By: Cart
     */
    class SaveAddressResponse: Codable {
        public var success: Bool?

        public var id: String?

        public var isDefaultAddress: Bool?

        public enum CodingKeys: String, CodingKey {
            case success

            case id

            case isDefaultAddress = "is_default_address"
        }

        public init(id: String?, isDefaultAddress: Bool?, success: Bool?) {
            self.success = success

            self.id = id

            self.isDefaultAddress = isDefaultAddress
        }

        public func duplicate() -> SaveAddressResponse {
            let dict = self.dictionary!
            let copy = SaveAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        }
    }

    /*
         Model: UpdateAddressResponse
         Used By: Cart
     */
    class UpdateAddressResponse: Codable {
        public var success: Bool?

        public var id: String?

        public var isDefaultAddress: Bool?

        public var isUpdated: Bool?

        public enum CodingKeys: String, CodingKey {
            case success

            case id

            case isDefaultAddress = "is_default_address"

            case isUpdated = "is_updated"
        }

        public init(id: String?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
            self.success = success

            self.id = id

            self.isDefaultAddress = isDefaultAddress

            self.isUpdated = isUpdated
        }

        public func duplicate() -> UpdateAddressResponse {
            let dict = self.dictionary!
            let copy = UpdateAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isUpdated = try container.decode(Bool.self, forKey: .isUpdated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
        }
    }

    /*
         Model: DeleteAddressResponse
         Used By: Cart
     */
    class DeleteAddressResponse: Codable {
        public var id: String?

        public var isDeleted: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case isDeleted = "is_deleted"
        }

        public init(id: String?, isDeleted: Bool?) {
            self.id = id

            self.isDeleted = isDeleted
        }

        public func duplicate() -> DeleteAddressResponse {
            let dict = self.dictionary!
            let copy = DeleteAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        }
    }

    /*
         Model: SelectCartAddressRequest
         Used By: Cart
     */
    class SelectCartAddressRequest: Codable {
        public var id: String?

        public var billingAddressId: String?

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case billingAddressId = "billing_address_id"

            case cartId = "cart_id"
        }

        public init(billingAddressId: String?, cartId: String?, id: String?) {
            self.id = id

            self.billingAddressId = billingAddressId

            self.cartId = cartId
        }

        public func duplicate() -> SelectCartAddressRequest {
            let dict = self.dictionary!
            let copy = SelectCartAddressRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }

    /*
         Model: UpdateCartPaymentRequest
         Used By: Cart
     */
    class UpdateCartPaymentRequest: Codable {
        public var id: String?

        public var merchantCode: String?

        public var paymentMode: String?

        public var addressId: String?

        public var aggregatorName: String?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"

            case addressId = "address_id"

            case aggregatorName = "aggregator_name"

            case paymentIdentifier = "payment_identifier"
        }

        public init(addressId: String?, aggregatorName: String?, id: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?) {
            self.id = id

            self.merchantCode = merchantCode

            self.paymentMode = paymentMode

            self.addressId = addressId

            self.aggregatorName = aggregatorName

            self.paymentIdentifier = paymentIdentifier
        }

        public func duplicate() -> UpdateCartPaymentRequest {
            let dict = self.dictionary!
            let copy = UpdateCartPaymentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }

    /*
         Model: CouponValidity
         Used By: Cart
     */
    class CouponValidity: Codable {
        public var discount: Double?

        public var title: String?

        public var valid: Bool?

        public var code: String?

        public var displayMessageEn: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case title

            case valid

            case code

            case displayMessageEn = "display_message_en"
        }

        public init(code: String?, discount: Double?, displayMessageEn: String?, title: String?, valid: Bool?) {
            self.discount = discount

            self.title = title

            self.valid = valid

            self.code = code

            self.displayMessageEn = displayMessageEn
        }

        public func duplicate() -> CouponValidity {
            let dict = self.dictionary!
            let copy = CouponValidity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encode(code, forKey: .code)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)
        }
    }

    /*
         Model: PaymentCouponValidate
         Used By: Cart
     */
    class PaymentCouponValidate: Codable {
        public var success: Bool

        public var message: String?

        public var couponValidity: CouponValidity?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case couponValidity = "coupon_validity"
        }

        public init(couponValidity: CouponValidity?, message: String?, success: Bool) {
            self.success = success

            self.message = message

            self.couponValidity = couponValidity
        }

        public func duplicate() -> PaymentCouponValidate {
            let dict = self.dictionary!
            let copy = PaymentCouponValidate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)
        }
    }

    /*
         Model: ShipmentResponse
         Used By: Cart
     */
    class ShipmentResponse: Codable {
        public var promise: ShipmentPromise?

        public var fulfillmentId: Int?

        public var shipmentType: String?

        public var dpId: String?

        public var shipments: Int?

        public var orderType: String?

        public var dpOptions: [String: Any]?

        public var boxType: String?

        public var fulfillmentType: String?

        public var items: [CartProductInfo]?

        public enum CodingKeys: String, CodingKey {
            case promise

            case fulfillmentId = "fulfillment_id"

            case shipmentType = "shipment_type"

            case dpId = "dp_id"

            case shipments

            case orderType = "order_type"

            case dpOptions = "dp_options"

            case boxType = "box_type"

            case fulfillmentType = "fulfillment_type"

            case items
        }

        public init(boxType: String?, dpId: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
            self.promise = promise

            self.fulfillmentId = fulfillmentId

            self.shipmentType = shipmentType

            self.dpId = dpId

            self.shipments = shipments

            self.orderType = orderType

            self.dpOptions = dpOptions

            self.boxType = boxType

            self.fulfillmentType = fulfillmentType

            self.items = items
        }

        public func duplicate() -> ShipmentResponse {
            let dict = self.dictionary!
            let copy = ShipmentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                promise = try container.decode(ShipmentPromise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentType = try container.decode(String.self, forKey: .shipmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(String.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode(Int.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(dpOptions, forKey: .dpOptions)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: CartShipmentsResponse
         Used By: Cart
     */
    class CartShipmentsResponse: Codable {
        public var uid: String?

        public var error: Bool?

        public var id: String?

        public var message: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var lastModified: String?

        public var restrictCheckout: Bool?

        public var isValid: Bool?

        public var currency: CartCurrency?

        public var shipments: [ShipmentResponse]?

        public var gstin: String?

        public var cartId: Int?

        public var couponText: String?

        public var deliveryPromise: ShipmentPromise?

        public var breakupValues: CartBreakup?

        public var deliveryChargeInfo: String?

        public var comment: String?

        public var checkoutMode: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case error

            case id

            case message

            case paymentSelectionLock = "payment_selection_lock"

            case lastModified = "last_modified"

            case restrictCheckout = "restrict_checkout"

            case isValid = "is_valid"

            case currency

            case shipments

            case gstin

            case cartId = "cart_id"

            case couponText = "coupon_text"

            case deliveryPromise = "delivery_promise"

            case breakupValues = "breakup_values"

            case deliveryChargeInfo = "delivery_charge_info"

            case comment

            case checkoutMode = "checkout_mode"
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, error: Bool?, gstin: String?, id: String?, isValid: Bool?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
            self.uid = uid

            self.error = error

            self.id = id

            self.message = message

            self.paymentSelectionLock = paymentSelectionLock

            self.lastModified = lastModified

            self.restrictCheckout = restrictCheckout

            self.isValid = isValid

            self.currency = currency

            self.shipments = shipments

            self.gstin = gstin

            self.cartId = cartId

            self.couponText = couponText

            self.deliveryPromise = deliveryPromise

            self.breakupValues = breakupValues

            self.deliveryChargeInfo = deliveryChargeInfo

            self.comment = comment

            self.checkoutMode = checkoutMode
        }

        public func duplicate() -> CartShipmentsResponse {
            let dict = self.dictionary!
            let copy = CartShipmentsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(Bool.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        }
    }

    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var user: String

        public var firstName: String

        public var lastName: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case user

            case firstName = "first_name"

            case lastName = "last_name"

            case id = "_id"
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.user = user

            self.firstName = firstName

            self.lastName = lastName

            self.id = id
        }

        public func duplicate() -> StaffCheckout {
            let dict = self.dictionary!
            let copy = StaffCheckout(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CartCheckoutDetailRequest
         Used By: Cart
     */
    class CartCheckoutDetailRequest: Codable {
        public var orderingStore: Int?

        public var extraMeta: [String: Any]?

        public var callbackUrl: String?

        public var aggregator: String?

        public var paymentAutoConfirm: Bool?

        public var merchantCode: String?

        public var meta: [String: Any]?

        public var staff: StaffCheckout?

        public var paymentMode: String

        public var addressId: String?

        public var billingAddressId: String?

        public var billingAddress: [String: Any]?

        public var paymentParams: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case orderingStore = "ordering_store"

            case extraMeta = "extra_meta"

            case callbackUrl = "callback_url"

            case aggregator

            case paymentAutoConfirm = "payment_auto_confirm"

            case merchantCode = "merchant_code"

            case meta

            case staff

            case paymentMode = "payment_mode"

            case addressId = "address_id"

            case billingAddressId = "billing_address_id"

            case billingAddress = "billing_address"

            case paymentParams = "payment_params"

            case deliveryAddress = "delivery_address"

            case paymentIdentifier = "payment_identifier"
        }

        public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: StaffCheckout?) {
            self.orderingStore = orderingStore

            self.extraMeta = extraMeta

            self.callbackUrl = callbackUrl

            self.aggregator = aggregator

            self.paymentAutoConfirm = paymentAutoConfirm

            self.merchantCode = merchantCode

            self.meta = meta

            self.staff = staff

            self.paymentMode = paymentMode

            self.addressId = addressId

            self.billingAddressId = billingAddressId

            self.billingAddress = billingAddress

            self.paymentParams = paymentParams

            self.deliveryAddress = deliveryAddress

            self.paymentIdentifier = paymentIdentifier
        }

        public func duplicate() -> CartCheckoutDetailRequest {
            let dict = self.dictionary!
            let copy = CartCheckoutDetailRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staff = try container.decode(StaffCheckout.self, forKey: .staff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }

    /*
         Model: CheckCart
         Used By: Cart
     */
    class CheckCart: Codable {
        public var uid: String?

        public var storeEmps: [[String: Any]]?

        public var message: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var lastModified: String?

        public var codCharges: Int?

        public var restrictCheckout: Bool?

        public var isValid: Bool?

        public var gstin: String?

        public var deliveryPromise: ShipmentPromise?

        public var errorMessage: String?

        public var comment: String?

        public var checkoutMode: String?

        public var id: String?

        public var codMessage: String?

        public var success: Bool?

        public var storeCode: String?

        public var deliveryCharges: Int?

        public var userType: String?

        public var orderId: String?

        public var currency: CartCurrency?

        public var cartId: Int?

        public var couponText: String?

        public var codAvailable: Bool?

        public var deliveryChargeOrderValue: Int?

        public var breakupValues: CartBreakup?

        public var deliveryChargeInfo: String?

        public var items: [CartProductInfo]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case storeEmps = "store_emps"

            case message

            case paymentSelectionLock = "payment_selection_lock"

            case lastModified = "last_modified"

            case codCharges = "cod_charges"

            case restrictCheckout = "restrict_checkout"

            case isValid = "is_valid"

            case gstin

            case deliveryPromise = "delivery_promise"

            case errorMessage = "error_message"

            case comment

            case checkoutMode = "checkout_mode"

            case id

            case codMessage = "cod_message"

            case success

            case storeCode = "store_code"

            case deliveryCharges = "delivery_charges"

            case userType = "user_type"

            case orderId = "order_id"

            case currency

            case cartId = "cart_id"

            case couponText = "coupon_text"

            case codAvailable = "cod_available"

            case deliveryChargeOrderValue = "delivery_charge_order_value"

            case breakupValues = "breakup_values"

            case deliveryChargeInfo = "delivery_charge_info"

            case items
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
            self.uid = uid

            self.storeEmps = storeEmps

            self.message = message

            self.paymentSelectionLock = paymentSelectionLock

            self.lastModified = lastModified

            self.codCharges = codCharges

            self.restrictCheckout = restrictCheckout

            self.isValid = isValid

            self.gstin = gstin

            self.deliveryPromise = deliveryPromise

            self.errorMessage = errorMessage

            self.comment = comment

            self.checkoutMode = checkoutMode

            self.id = id

            self.codMessage = codMessage

            self.success = success

            self.storeCode = storeCode

            self.deliveryCharges = deliveryCharges

            self.userType = userType

            self.orderId = orderId

            self.currency = currency

            self.cartId = cartId

            self.couponText = couponText

            self.codAvailable = codAvailable

            self.deliveryChargeOrderValue = deliveryChargeOrderValue

            self.breakupValues = breakupValues

            self.deliveryChargeInfo = deliveryChargeInfo

            self.items = items
        }

        public func duplicate() -> CheckCart {
            let dict = self.dictionary!
            let copy = CheckCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorMessage = try container.decode(String.self, forKey: .errorMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codMessage = try container.decode(String.self, forKey: .codMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userType = try container.decode(String.self, forKey: .userType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAvailable = try container.decode(Bool.self, forKey: .codAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(codMessage, forKey: .codMessage)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)

            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: CartCheckoutResponse
         Used By: Cart
     */
    class CartCheckoutResponse: Codable {
        public var orderId: String?

        public var callbackUrl: String?

        public var paymentConfirmUrl: String?

        public var success: Bool?

        public var message: String?

        public var data: [String: Any]?

        public var appInterceptUrl: String?

        public var cart: CheckCart?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case callbackUrl = "callback_url"

            case paymentConfirmUrl = "payment_confirm_url"

            case success

            case message

            case data

            case appInterceptUrl = "app_intercept_url"

            case cart
        }

        public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, paymentConfirmUrl: String?, success: Bool?) {
            self.orderId = orderId

            self.callbackUrl = callbackUrl

            self.paymentConfirmUrl = paymentConfirmUrl

            self.success = success

            self.message = message

            self.data = data

            self.appInterceptUrl = appInterceptUrl

            self.cart = cart
        }

        public func duplicate() -> CartCheckoutResponse {
            let dict = self.dictionary!
            let copy = CartCheckoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CheckCart.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)

            try? container.encodeIfPresent(cart, forKey: .cart)
        }
    }

    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var gstin: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var checkoutMode: String?

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case pickUpCustomerDetails = "pick_up_customer_details"

            case checkoutMode = "checkout_mode"

            case comment
        }

        public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
            self.gstin = gstin

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.checkoutMode = checkoutMode

            self.comment = comment
        }

        public func duplicate() -> CartMetaRequest {
            let dict = self.dictionary!
            let copy = CartMetaRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }

    /*
         Model: CartMetaResponse
         Used By: Cart
     */
    class CartMetaResponse: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> CartMetaResponse {
            let dict = self.dictionary!
            let copy = CartMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CartMetaMissingResponse
         Used By: Cart
     */
    class CartMetaMissingResponse: Codable {
        public var errors: [String]?

        public enum CodingKeys: String, CodingKey {
            case errors
        }

        public init(errors: [String]?) {
            self.errors = errors
        }

        public func duplicate() -> CartMetaMissingResponse {
            let dict = self.dictionary!
            let copy = CartMetaMissingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }

    /*
         Model: GetShareCartLinkRequest
         Used By: Cart
     */
    class GetShareCartLinkRequest: Codable {
        public var id: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case meta
        }

        public init(id: String?, meta: [String: Any]?) {
            self.id = id

            self.meta = meta
        }

        public func duplicate() -> GetShareCartLinkRequest {
            let dict = self.dictionary!
            let copy = GetShareCartLinkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: GetShareCartLinkResponse
         Used By: Cart
     */
    class GetShareCartLinkResponse: Codable {
        public var shareUrl: String?

        public var token: String?

        public enum CodingKeys: String, CodingKey {
            case shareUrl = "share_url"

            case token
        }

        public init(shareUrl: String?, token: String?) {
            self.shareUrl = shareUrl

            self.token = token
        }

        public func duplicate() -> GetShareCartLinkResponse {
            let dict = self.dictionary!
            let copy = GetShareCartLinkResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shareUrl = try container.decode(String.self, forKey: .shareUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }

    /*
         Model: SharedCartDetails
         Used By: Cart
     */
    class SharedCartDetails: Codable {
        public var user: [String: Any]?

        public var createdOn: String?

        public var meta: [String: Any]?

        public var source: [String: Any]?

        public var token: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case createdOn = "created_on"

            case meta

            case source

            case token
        }

        public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
            self.user = user

            self.createdOn = createdOn

            self.meta = meta

            self.source = source

            self.token = token
        }

        public func duplicate() -> SharedCartDetails {
            let dict = self.dictionary!
            let copy = SharedCartDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode([String: Any].self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }

    /*
         Model: SharedCart
         Used By: Cart
     */
    class SharedCart: Codable {
        public var restrictCheckout: Bool?

        public var uid: String?

        public var isValid: Bool?

        public var sharedCartDetails: SharedCartDetails?

        public var currency: CartCurrency?

        public var lastModified: String?

        public var cartId: Int?

        public var id: String?

        public var gstin: String?

        public var couponText: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var deliveryPromise: ShipmentPromise?

        public var breakupValues: CartBreakup?

        public var deliveryChargeInfo: String?

        public var message: String?

        public var comment: String?

        public var items: [CartProductInfo]?

        public var checkoutMode: String?

        public enum CodingKeys: String, CodingKey {
            case restrictCheckout = "restrict_checkout"

            case uid

            case isValid = "is_valid"

            case sharedCartDetails = "shared_cart_details"

            case currency

            case lastModified = "last_modified"

            case cartId = "cart_id"

            case id

            case gstin

            case couponText = "coupon_text"

            case paymentSelectionLock = "payment_selection_lock"

            case deliveryPromise = "delivery_promise"

            case breakupValues = "breakup_values"

            case deliveryChargeInfo = "delivery_charge_info"

            case message

            case comment

            case items

            case checkoutMode = "checkout_mode"
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
            self.restrictCheckout = restrictCheckout

            self.uid = uid

            self.isValid = isValid

            self.sharedCartDetails = sharedCartDetails

            self.currency = currency

            self.lastModified = lastModified

            self.cartId = cartId

            self.id = id

            self.gstin = gstin

            self.couponText = couponText

            self.paymentSelectionLock = paymentSelectionLock

            self.deliveryPromise = deliveryPromise

            self.breakupValues = breakupValues

            self.deliveryChargeInfo = deliveryChargeInfo

            self.message = message

            self.comment = comment

            self.items = items

            self.checkoutMode = checkoutMode
        }

        public func duplicate() -> SharedCart {
            let dict = self.dictionary!
            let copy = SharedCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        }
    }

    /*
         Model: SharedCartResponse
         Used By: Cart
     */
    class SharedCartResponse: Codable {
        public var cart: SharedCart?

        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case cart

            case error
        }

        public init(cart: SharedCart?, error: String?) {
            self.cart = cart

            self.error = error
        }

        public func duplicate() -> SharedCartResponse {
            let dict = self.dictionary!
            let copy = SharedCartResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cart = try container.decode(SharedCart.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
