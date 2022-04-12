import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentSelectionLock
         Used By: Cart
     */
    class PaymentSelectionLock: Codable {
        public var paymentIdentifier: String?

        public var defaultOptions: String?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case defaultOptions = "default_options"

            case enabled
        }

        public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
            self.paymentIdentifier = paymentIdentifier

            self.defaultOptions = defaultOptions

            self.enabled = enabled
        }

        public func duplicate() -> PaymentSelectionLock {
            let dict = self.dictionary!
            let copy = PaymentSelectionLock(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: CouponBreakup
         Used By: Cart
     */
    class CouponBreakup: Codable {
        public var isApplied: Bool?

        public var uid: String?

        public var message: String?

        public var value: Double?

        public var code: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case isApplied = "is_applied"

            case uid

            case message

            case value

            case code

            case type
        }

        public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: String?, value: Double?) {
            self.isApplied = isApplied

            self.uid = uid

            self.message = message

            self.value = value

            self.code = code

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
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
                message = try container.decode(String.self, forKey: .message)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: LoyaltyPoints
         Used By: Cart
     */
    class LoyaltyPoints: Codable {
        public var applicable: Double?

        public var description: String?

        public var isApplied: Bool?

        public var total: Double?

        public enum CodingKeys: String, CodingKey {
            case applicable

            case description

            case isApplied = "is_applied"

            case total
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            self.applicable = applicable

            self.description = description

            self.isApplied = isApplied

            self.total = total
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
                description = try container.decode(String.self, forKey: .description)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicable, forKey: .applicable)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }

    /*
         Model: DisplayBreakup
         Used By: Cart
     */
    class DisplayBreakup: Codable {
        public var currencySymbol: String?

        public var message: [String]?

        public var currencyCode: String?

        public var key: String?

        public var value: Double?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case message

            case currencyCode = "currency_code"

            case key

            case value

            case display
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            self.currencySymbol = currencySymbol

            self.message = message

            self.currencyCode = currencyCode

            self.key = key

            self.value = value

            self.display = display
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: RawBreakup
         Used By: Cart
     */
    class RawBreakup: Codable {
        public var youSaved: Double?

        public var total: Double?

        public var mrpTotal: Double?

        public var coupon: Double?

        public var fyndCash: Double?

        public var gstCharges: Double?

        public var codCharge: Double?

        public var convenienceFee: Double?

        public var discount: Double?

        public var deliveryCharge: Double?

        public var subtotal: Double?

        public var vog: Double?

        public enum CodingKeys: String, CodingKey {
            case youSaved = "you_saved"

            case total

            case mrpTotal = "mrp_total"

            case coupon

            case fyndCash = "fynd_cash"

            case gstCharges = "gst_charges"

            case codCharge = "cod_charge"

            case convenienceFee = "convenience_fee"

            case discount

            case deliveryCharge = "delivery_charge"

            case subtotal

            case vog
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            self.youSaved = youSaved

            self.total = total

            self.mrpTotal = mrpTotal

            self.coupon = coupon

            self.fyndCash = fyndCash

            self.gstCharges = gstCharges

            self.codCharge = codCharge

            self.convenienceFee = convenienceFee

            self.discount = discount

            self.deliveryCharge = deliveryCharge

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
                youSaved = try container.decode(Double.self, forKey: .youSaved)

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
                mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)

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
                fyndCash = try container.decode(Double.self, forKey: .fyndCash)

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
                codCharge = try container.decode(Double.self, forKey: .codCharge)

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
                discount = try container.decode(Double.self, forKey: .discount)

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

            try? container.encodeIfPresent(youSaved, forKey: .youSaved)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)

            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)

            try? container.encodeIfPresent(codCharge, forKey: .codCharge)

            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(subtotal, forKey: .subtotal)

            try? container.encodeIfPresent(vog, forKey: .vog)
        }
    }

    /*
         Model: CartBreakup
         Used By: Cart
     */
    class CartBreakup: Codable {
        public var coupon: CouponBreakup?

        public var loyaltyPoints: LoyaltyPoints?

        public var display: [DisplayBreakup]?

        public var raw: RawBreakup?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case loyaltyPoints = "loyalty_points"

            case display

            case raw
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            self.coupon = coupon

            self.loyaltyPoints = loyaltyPoints

            self.display = display

            self.raw = raw
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(CouponBreakup.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(raw, forKey: .raw)
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
         Model: ShipmentPromise
         Used By: Cart
     */
    class ShipmentPromise: Codable {
        public var formatted: PromiseFormatted?

        public var timestamp: PromiseTimestamp?

        public enum CodingKeys: String, CodingKey {
            case formatted

            case timestamp
        }

        public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
            self.formatted = formatted

            self.timestamp = timestamp
        }

        public func duplicate() -> ShipmentPromise {
            let dict = self.dictionary!
            let copy = ShipmentPromise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }

    /*
         Model: CartCurrency
         Used By: Cart
     */
    class CartCurrency: Codable {
        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case symbol

            case code
        }

        public init(code: String?, symbol: String?) {
            self.symbol = symbol

            self.code = code
        }

        public func duplicate() -> CartCurrency {
            let dict = self.dictionary!
            let copy = CartCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
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
         Model: ProductPrice
         Used By: Cart
     */
    class ProductPrice: Codable {
        public var currencySymbol: String?

        public var selling: Double?

        public var currencyCode: String?

        public var effective: Double?

        public var addOn: Double?

        public var marked: Double?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case selling

            case currencyCode = "currency_code"

            case effective

            case addOn = "add_on"

            case marked
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            self.currencySymbol = currencySymbol

            self.selling = selling

            self.currencyCode = currencyCode

            self.effective = effective

            self.addOn = addOn

            self.marked = marked
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selling = try container.decode(Double.self, forKey: .selling)

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
                effective = try container.decode(Double.self, forKey: .effective)

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
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(selling, forKey: .selling)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(addOn, forKey: .addOn)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: ProductPriceInfo
         Used By: Cart
     */
    class ProductPriceInfo: Codable {
        public var base: ProductPrice?

        public var converted: ProductPrice?

        public enum CodingKeys: String, CodingKey {
            case base

            case converted
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            self.base = base

            self.converted = converted
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                base = try container.decode(ProductPrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                converted = try container.decode(ProductPrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base, forKey: .base)

            try? container.encodeIfPresent(converted, forKey: .converted)
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
         Model: BaseInfo
         Used By: Cart
     */
    class BaseInfo: Codable {
        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid
        }

        public init(name: String?, uid: Int?) {
            self.name = name

            self.uid = uid
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: BasePrice
         Used By: Cart
     */
    class BasePrice: Codable {
        public var currencySymbol: String?

        public var marked: Double?

        public var effective: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case marked

            case effective

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            self.currencySymbol = currencySymbol

            self.marked = marked

            self.effective = effective

            self.currencyCode = currencyCode
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

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
                effective = try container.decode(Double.self, forKey: .effective)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }

    /*
         Model: ArticlePriceInfo
         Used By: Cart
     */
    class ArticlePriceInfo: Codable {
        public var base: BasePrice?

        public var converted: BasePrice?

        public enum CodingKeys: String, CodingKey {
            case base

            case converted
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            self.base = base

            self.converted = converted
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                base = try container.decode(BasePrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                converted = try container.decode(BasePrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base, forKey: .base)

            try? container.encodeIfPresent(converted, forKey: .converted)
        }
    }

    /*
         Model: ProductArticle
         Used By: Cart
     */
    class ProductArticle: Codable {
        public var seller: BaseInfo?

        public var uid: String?

        public var productGroupTags: [String]?

        public var size: String?

        public var parentItemIdentifiers: [String: Any]?

        public var store: BaseInfo?

        public var quantity: Int?

        public var extraMeta: [String: Any]?

        public var price: ArticlePriceInfo?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case seller

            case uid

            case productGroupTags = "product_group_tags"

            case size

            case parentItemIdentifiers = "parent_item_identifiers"

            case store

            case quantity

            case extraMeta = "extra_meta"

            case price

            case type
        }

        public init(extraMeta: [String: Any]?, parentItemIdentifiers: [String: Any]?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            self.seller = seller

            self.uid = uid

            self.productGroupTags = productGroupTags

            self.size = size

            self.parentItemIdentifiers = parentItemIdentifiers

            self.store = store

            self.quantity = quantity

            self.extraMeta = extraMeta

            self.price = price

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
                seller = try container.decode(BaseInfo.self, forKey: .seller)

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
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

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
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                price = try container.decode(ArticlePriceInfo.self, forKey: .price)

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

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: CategoryInfo
         Used By: Cart
     */
    class CategoryInfo: Codable {
        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid
        }

        public init(name: String?, uid: Int?) {
            self.name = name

            self.uid = uid
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var secureUrl: String?

        public var aspectRatio: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"

            case url
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio

            self.url = url
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: CartProduct
         Used By: Cart
     */
    class CartProduct: Codable {
        public var categories: [CategoryInfo]?

        public var slug: String?

        public var uid: Int?

        public var name: String?

        public var action: ProductAction?

        public var brand: BaseInfo?

        public var images: [ProductImage]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case categories

            case slug

            case uid

            case name

            case action

            case brand

            case images

            case type
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            self.categories = categories

            self.slug = slug

            self.uid = uid

            self.name = name

            self.action = action

            self.brand = brand

            self.images = images

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

            do {
                action = try container.decode(ProductAction.self, forKey: .action)

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
                images = try container.decode([ProductImage].self, forKey: .images)

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

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: AppliedPromotion
         Used By: Cart
     */
    class AppliedPromotion: Codable {
        public var amount: Double?

        public var mrpPromotion: Bool?

        public var promotionType: String?

        public var articleQuantity: Int?

        public var promoId: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case mrpPromotion = "mrp_promotion"

            case promotionType = "promotion_type"

            case articleQuantity = "article_quantity"

            case promoId = "promo_id"
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            self.amount = amount

            self.mrpPromotion = mrpPromotion

            self.promotionType = promotionType

            self.articleQuantity = articleQuantity

            self.promoId = promoId
        }

        public func duplicate() -> AppliedPromotion {
            let dict = self.dictionary!
            let copy = AppliedPromotion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionType = try container.decode(String.self, forKey: .promotionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoId = try container.decode(String.self, forKey: .promoId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promoId, forKey: .promoId)
        }
    }

    /*
         Model: ProductAvailability
         Used By: Cart
     */
    class ProductAvailability: Codable {
        public var outOfStock: Bool?

        public var sizes: [String]?

        public var otherStoreQuantity: Int?

        public var deliverable: Bool?

        public var isValid: Bool?

        public enum CodingKeys: String, CodingKey {
            case outOfStock = "out_of_stock"

            case sizes

            case otherStoreQuantity = "other_store_quantity"

            case deliverable

            case isValid = "is_valid"
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            self.outOfStock = outOfStock

            self.sizes = sizes

            self.otherStoreQuantity = otherStoreQuantity

            self.deliverable = deliverable

            self.isValid = isValid
        }

        public func duplicate() -> ProductAvailability {
            let dict = self.dictionary!
            let copy = ProductAvailability(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)

            try? container.encodeIfPresent(deliverable, forKey: .deliverable)

            try? container.encodeIfPresent(isValid, forKey: .isValid)
        }
    }

    /*
         Model: CartProductInfo
         Used By: Cart
     */
    class CartProductInfo: Codable {
        public var message: String?

        public var couponMessage: String?

        public var identifiers: CartProductIdentifer

        public var bulkOffer: [String: Any]?

        public var parentItemIdentifiers: [String: Any]?

        public var key: String?

        public var pricePerUnit: ProductPriceInfo?

        public var promoMeta: PromoMeta?

        public var quantity: Int?

        public var article: ProductArticle?

        public var product: CartProduct?

        public var discount: String?

        public var isSet: Bool?

        public var price: ProductPriceInfo?

        public var promotionApplied: [AppliedPromotion]?

        public var availability: ProductAvailability?

        public enum CodingKeys: String, CodingKey {
            case message

            case couponMessage = "coupon_message"

            case identifiers

            case bulkOffer = "bulk_offer"

            case parentItemIdentifiers = "parent_item_identifiers"

            case key

            case pricePerUnit = "price_per_unit"

            case promoMeta = "promo_meta"

            case quantity

            case article

            case product

            case discount

            case isSet = "is_set"

            case price

            case promotionApplied = "promotion_applied"

            case availability
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, parentItemIdentifiers: [String: Any]?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            self.message = message

            self.couponMessage = couponMessage

            self.identifiers = identifiers

            self.bulkOffer = bulkOffer

            self.parentItemIdentifiers = parentItemIdentifiers

            self.key = key

            self.pricePerUnit = pricePerUnit

            self.promoMeta = promoMeta

            self.quantity = quantity

            self.article = article

            self.product = product

            self.discount = discount

            self.isSet = isSet

            self.price = price

            self.promotionApplied = promotionApplied

            self.availability = availability
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
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

            do {
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                product = try container.decode(CartProduct.self, forKey: .product)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductPriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)

            try? container.encodeIfPresent(availability, forKey: .availability)
        }
    }

    /*
         Model: CartDetailResponse
         Used By: Cart
     */
    class CartDetailResponse: Codable {
        public var paymentSelectionLock: PaymentSelectionLock?

        public var deliveryChargeInfo: String?

        public var message: String?

        public var breakupValues: CartBreakup?

        public var couponText: String?

        public var lastModified: String?

        public var comment: String?

        public var gstin: String?

        public var deliveryPromise: ShipmentPromise?

        public var currency: CartCurrency?

        public var restrictCheckout: Bool?

        public var checkoutMode: String?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case paymentSelectionLock = "payment_selection_lock"

            case deliveryChargeInfo = "delivery_charge_info"

            case message

            case breakupValues = "breakup_values"

            case couponText = "coupon_text"

            case lastModified = "last_modified"

            case comment

            case gstin

            case deliveryPromise = "delivery_promise"

            case currency

            case restrictCheckout = "restrict_checkout"

            case checkoutMode = "checkout_mode"

            case isValid = "is_valid"

            case items

            case id
        }

        public init(breakupValues: CartBreakup?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?) {
            self.paymentSelectionLock = paymentSelectionLock

            self.deliveryChargeInfo = deliveryChargeInfo

            self.message = message

            self.breakupValues = breakupValues

            self.couponText = couponText

            self.lastModified = lastModified

            self.comment = comment

            self.gstin = gstin

            self.deliveryPromise = deliveryPromise

            self.currency = currency

            self.restrictCheckout = restrictCheckout

            self.checkoutMode = checkoutMode

            self.isValid = isValid

            self.items = items

            self.id = id
        }

        public func duplicate() -> CartDetailResponse {
            let dict = self.dictionary!
            let copy = CartDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                lastModified = try container.decode(String.self, forKey: .lastModified)

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
                currency = try container.decode(CartCurrency.self, forKey: .currency)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: AddProductCart
         Used By: Cart
     */
    class AddProductCart: Codable {
        public var productGroupTags: [String]?

        public var itemId: Int?

        public var sellerId: Int?

        public var parentItemIdentifiers: [String: Any]?

        public var storeId: Int?

        public var itemSize: String?

        public var pos: Bool?

        public var articleId: String?

        public var quantity: Int?

        public var extraMeta: [String: Any]?

        public var articleAssignment: [String: Any]?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case productGroupTags = "product_group_tags"

            case itemId = "item_id"

            case sellerId = "seller_id"

            case parentItemIdentifiers = "parent_item_identifiers"

            case storeId = "store_id"

            case itemSize = "item_size"

            case pos

            case articleId = "article_id"

            case quantity

            case extraMeta = "extra_meta"

            case articleAssignment = "article_assignment"

            case display
        }

        public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, extraMeta: [String: Any]?, itemId: Int?, itemSize: String?, parentItemIdentifiers: [String: Any]?, pos: Bool?, productGroupTags: [String]?, quantity: Int?, sellerId: Int?, storeId: Int?) {
            self.productGroupTags = productGroupTags

            self.itemId = itemId

            self.sellerId = sellerId

            self.parentItemIdentifiers = parentItemIdentifiers

            self.storeId = storeId

            self.itemSize = itemSize

            self.pos = pos

            self.articleId = articleId

            self.quantity = quantity

            self.extraMeta = extraMeta

            self.articleAssignment = articleAssignment

            self.display = display
        }

        public func duplicate() -> AddProductCart {
            let dict = self.dictionary!
            let copy = AddProductCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productGroupTags = try container.decode([String].self, forKey: .productGroupTags)

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
                sellerId = try container.decode(Int.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                itemSize = try container.decode(String.self, forKey: .itemSize)

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
                articleId = try container.decode(String.self, forKey: .articleId)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(productGroupTags, forKey: .productGroupTags)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encode(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pos, forKey: .pos)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(display, forKey: .display)
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

        public var message: String?

        public var partial: Bool?

        public var cart: CartDetailResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case partial

            case cart
        }

        public init(cart: CartDetailResponse?, message: String?, partial: Bool?, success: Bool?) {
            self.success = success

            self.message = message

            self.partial = partial

            self.cart = cart
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
                message = try container.decode(String.self, forKey: .message)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(partial, forKey: .partial)

            try? container.encodeIfPresent(cart, forKey: .cart)
        }
    }

    /*
         Model: UpdateProductCart
         Used By: Cart
     */
    class UpdateProductCart: Codable {
        public var itemId: Int?

        public var identifiers: CartProductIdentifer

        public var parentItemIdentifiers: [String: Any]?

        public var itemSize: String?

        public var articleId: String?

        public var quantity: Int?

        public var itemIndex: Int?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case identifiers

            case parentItemIdentifiers = "parent_item_identifiers"

            case itemSize = "item_size"

            case articleId = "article_id"

            case quantity

            case itemIndex = "item_index"

            case extraMeta = "extra_meta"
        }

        public init(articleId: String?, extraMeta: [String: Any]?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, parentItemIdentifiers: [String: Any]?, quantity: Int?) {
            self.itemId = itemId

            self.identifiers = identifiers

            self.parentItemIdentifiers = parentItemIdentifiers

            self.itemSize = itemSize

            self.articleId = articleId

            self.quantity = quantity

            self.itemIndex = itemIndex

            self.extraMeta = extraMeta
        }

        public func duplicate() -> UpdateProductCart {
            let dict = self.dictionary!
            let copy = UpdateProductCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

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
                articleId = try container.decode(String.self, forKey: .articleId)

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
                itemIndex = try container.decode(Int.self, forKey: .itemIndex)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(parentItemIdentifiers, forKey: .parentItemIdentifiers)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }

    /*
         Model: UpdateCartRequest
         Used By: Cart
     */
    class UpdateCartRequest: Codable {
        public var operation: String

        public var items: [UpdateProductCart]?

        public enum CodingKeys: String, CodingKey {
            case operation

            case items
        }

        public init(items: [UpdateProductCart]?, operation: String) {
            self.operation = operation

            self.items = items
        }

        public func duplicate() -> UpdateCartRequest {
            let dict = self.dictionary!
            let copy = UpdateCartRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            operation = try container.decode(String.self, forKey: .operation)

            do {
                items = try container.decode([UpdateProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: UpdateCartDetailResponse
         Used By: Cart
     */
    class UpdateCartDetailResponse: Codable {
        public var success: Bool?

        public var message: String?

        public var cart: CartDetailResponse?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case cart
        }

        public init(cart: CartDetailResponse?, message: String?, success: Bool?) {
            self.success = success

            self.message = message

            self.cart = cart
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
                message = try container.decode(String.self, forKey: .message)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cart, forKey: .cart)
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
        public var current: Int?

        public var total: Int?

        public var hasNext: Bool?

        public var hasPrevious: Bool?

        public var totalItemCount: Int?

        public enum CodingKeys: String, CodingKey {
            case current

            case total

            case hasNext = "has_next"

            case hasPrevious = "has_previous"

            case totalItemCount = "total_item_count"
        }

        public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
            self.current = current

            self.total = total

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious

            self.totalItemCount = totalItemCount
        }

        public func duplicate() -> PageCoupon {
            let dict = self.dictionary!
            let copy = PageCoupon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                current = try container.decode(Int.self, forKey: .current)

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

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        }
    }

    /*
         Model: Coupon
         Used By: Cart
     */
    class Coupon: Codable {
        public var isApplied: Bool?

        public var message: String?

        public var expiresOn: String?

        public var couponCode: String?

        public var minimumCartValue: Double?

        public var title: String?

        public var couponValue: Double?

        public var maxDiscountValue: Double?

        public var isApplicable: Bool?

        public var subTitle: String?

        public enum CodingKeys: String, CodingKey {
            case isApplied = "is_applied"

            case message

            case expiresOn = "expires_on"

            case couponCode = "coupon_code"

            case minimumCartValue = "minimum_cart_value"

            case title

            case couponValue = "coupon_value"

            case maxDiscountValue = "max_discount_value"

            case isApplicable = "is_applicable"

            case subTitle = "sub_title"
        }

        public init(couponCode: String?, couponValue: Double?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
            self.isApplied = isApplied

            self.message = message

            self.expiresOn = expiresOn

            self.couponCode = couponCode

            self.minimumCartValue = minimumCartValue

            self.title = title

            self.couponValue = couponValue

            self.maxDiscountValue = maxDiscountValue

            self.isApplicable = isApplicable

            self.subTitle = subTitle
        }

        public func duplicate() -> Coupon {
            let dict = self.dictionary!
            let copy = Coupon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                expiresOn = try container.decode(String.self, forKey: .expiresOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

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

            do {
                title = try container.decode(String.self, forKey: .title)

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
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

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
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
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
        public var currencySymbol: String?

        public var currencyCode: String?

        public var bulkEffective: Double?

        public var effective: Int?

        public var marked: Int?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case bulkEffective = "bulk_effective"

            case effective

            case marked
        }

        public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.bulkEffective = bulkEffective

            self.effective = effective

            self.marked = marked
        }

        public func duplicate() -> OfferPrice {
            let dict = self.dictionary!
            let copy = OfferPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)

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

            do {
                marked = try container.decode(Int.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: OfferItem
         Used By: Cart
     */
    class OfferItem: Codable {
        public var total: Double?

        public var autoApplied: Bool?

        public var quantity: Int?

        public var best: Bool?

        public var margin: Int?

        public var price: OfferPrice?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case total

            case autoApplied = "auto_applied"

            case quantity

            case best

            case margin

            case price

            case type
        }

        public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
            self.total = total

            self.autoApplied = autoApplied

            self.quantity = quantity

            self.best = best

            self.margin = margin

            self.price = price

            self.type = type
        }

        public func duplicate() -> OfferItem {
            let dict = self.dictionary!
            let copy = OfferItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                price = try container.decode(OfferPrice.self, forKey: .price)

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

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(best, forKey: .best)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: OfferSeller
         Used By: Cart
     */
    class OfferSeller: Codable {
        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid
        }

        public init(name: String?, uid: Int?) {
            self.name = name

            self.uid = uid
        }

        public func duplicate() -> OfferSeller {
            let dict = self.dictionary!
            let copy = OfferSeller(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
        public var latitude: Double?

        public var longitude: Double?

        public enum CodingKeys: String, CodingKey {
            case latitude

            case longitude
        }

        public init(latitude: Double?, longitude: Double?) {
            self.latitude = latitude

            self.longitude = longitude
        }

        public func duplicate() -> GeoLocation {
            let dict = self.dictionary!
            let copy = GeoLocation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }

    /*
         Model: Address
         Used By: Cart
     */
    class Address: Codable {
        public var countryCode: String?

        public var phone: String?

        public var googleMapPoint: [String: Any]?

        public var landmark: String?

        public var isActive: Bool?

        public var userId: String?

        public var address: String?

        public var areaCode: String?

        public var geoLocation: GeoLocation?

        public var meta: [String: Any]?

        public var country: String?

        public var isDefaultAddress: Bool?

        public var checkoutMode: String?

        public var state: String?

        public var city: String?

        public var tags: [String]?

        public var area: String?

        public var name: String?

        public var areaCodeSlug: String?

        public var email: String?

        public var addressType: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phone

            case googleMapPoint = "google_map_point"

            case landmark

            case isActive = "is_active"

            case userId = "user_id"

            case address

            case areaCode = "area_code"

            case geoLocation = "geo_location"

            case meta

            case country

            case isDefaultAddress = "is_default_address"

            case checkoutMode = "checkout_mode"

            case state

            case city

            case tags

            case area

            case name

            case areaCodeSlug = "area_code_slug"

            case email

            case addressType = "address_type"

            case id
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, googleMapPoint: [String: Any]?, id: String?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [String]?, userId: String?) {
            self.countryCode = countryCode

            self.phone = phone

            self.googleMapPoint = googleMapPoint

            self.landmark = landmark

            self.isActive = isActive

            self.userId = userId

            self.address = address

            self.areaCode = areaCode

            self.geoLocation = geoLocation

            self.meta = meta

            self.country = country

            self.isDefaultAddress = isDefaultAddress

            self.checkoutMode = checkoutMode

            self.state = state

            self.city = city

            self.tags = tags

            self.area = area

            self.name = name

            self.areaCodeSlug = areaCodeSlug

            self.email = email

            self.addressType = addressType

            self.id = id
        }

        public func duplicate() -> Address {
            let dict = self.dictionary!
            let copy = Address(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                address = try container.decode(String.self, forKey: .address)

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
                geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)

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
                country = try container.decode(String.self, forKey: .country)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                name = try container.decode(String.self, forKey: .name)

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
                email = try container.decode(String.self, forKey: .email)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(areaCode, forKey: .areaCode)

            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(id, forKey: .id)
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

        public var isDefaultAddress: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case isDefaultAddress = "is_default_address"

            case id
        }

        public init(id: String?, isDefaultAddress: Bool?, success: Bool?) {
            self.success = success

            self.isDefaultAddress = isDefaultAddress

            self.id = id
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
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: UpdateAddressResponse
         Used By: Cart
     */
    class UpdateAddressResponse: Codable {
        public var isUpdated: Bool?

        public var success: Bool?

        public var isDefaultAddress: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case isUpdated = "is_updated"

            case success

            case isDefaultAddress = "is_default_address"

            case id
        }

        public init(id: String?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
            self.isUpdated = isUpdated

            self.success = success

            self.isDefaultAddress = isDefaultAddress

            self.id = id
        }

        public func duplicate() -> UpdateAddressResponse {
            let dict = self.dictionary!
            let copy = UpdateAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isUpdated = try container.decode(Bool.self, forKey: .isUpdated)

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
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: DeleteAddressResponse
         Used By: Cart
     */
    class DeleteAddressResponse: Codable {
        public var isDeleted: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case isDeleted = "is_deleted"

            case id
        }

        public init(id: String?, isDeleted: Bool?) {
            self.isDeleted = isDeleted

            self.id = id
        }

        public func duplicate() -> DeleteAddressResponse {
            let dict = self.dictionary!
            let copy = DeleteAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: SelectCartAddressRequest
         Used By: Cart
     */
    class SelectCartAddressRequest: Codable {
        public var billingAddressId: String?

        public var cartId: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case billingAddressId = "billing_address_id"

            case cartId = "cart_id"

            case id
        }

        public init(billingAddressId: String?, cartId: String?, id: String?) {
            self.billingAddressId = billingAddressId

            self.cartId = cartId

            self.id = id
        }

        public func duplicate() -> SelectCartAddressRequest {
            let dict = self.dictionary!
            let copy = SelectCartAddressRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: UpdateCartPaymentRequest
         Used By: Cart
     */
    class UpdateCartPaymentRequest: Codable {
        public var paymentIdentifier: String?

        public var aggregatorName: String?

        public var paymentMode: String?

        public var merchantCode: String?

        public var addressId: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case aggregatorName = "aggregator_name"

            case paymentMode = "payment_mode"

            case merchantCode = "merchant_code"

            case addressId = "address_id"

            case id
        }

        public init(addressId: String?, aggregatorName: String?, id: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?) {
            self.paymentIdentifier = paymentIdentifier

            self.aggregatorName = aggregatorName

            self.paymentMode = paymentMode

            self.merchantCode = merchantCode

            self.addressId = addressId

            self.id = id
        }

        public func duplicate() -> UpdateCartPaymentRequest {
            let dict = self.dictionary!
            let copy = UpdateCartPaymentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                addressId = try container.decode(String.self, forKey: .addressId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CouponValidity
         Used By: Cart
     */
    class CouponValidity: Codable {
        public var displayMessageEn: String?

        public var valid: Bool?

        public var title: String?

        public var code: String?

        public var discount: Double?

        public enum CodingKeys: String, CodingKey {
            case displayMessageEn = "display_message_en"

            case valid

            case title

            case code

            case discount
        }

        public init(code: String?, discount: Double?, displayMessageEn: String?, title: String?, valid: Bool?) {
            self.displayMessageEn = displayMessageEn

            self.valid = valid

            self.title = title

            self.code = code

            self.discount = discount
        }

        public func duplicate() -> CouponValidity {
            let dict = self.dictionary!
            let copy = CouponValidity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)

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
                title = try container.decode(String.self, forKey: .title)

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
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(code, forKey: .code)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }

    /*
         Model: PaymentCouponValidate
         Used By: Cart
     */
    class PaymentCouponValidate: Codable {
        public var couponValidity: CouponValidity?

        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case couponValidity = "coupon_validity"

            case success

            case message
        }

        public init(couponValidity: CouponValidity?, message: String?, success: Bool) {
            self.couponValidity = couponValidity

            self.success = success

            self.message = message
        }

        public func duplicate() -> PaymentCouponValidate {
            let dict = self.dictionary!
            let copy = PaymentCouponValidate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ShipmentResponse
         Used By: Cart
     */
    class ShipmentResponse: Codable {
        public var fulfillmentId: Int?

        public var shipments: Int?

        public var boxType: String?

        public var promise: ShipmentPromise?

        public var orderType: String?

        public var fulfillmentType: String?

        public var items: [CartProductInfo]?

        public var dpOptions: [String: Any]?

        public var shipmentType: String?

        public var dpId: String?

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case shipments

            case boxType = "box_type"

            case promise

            case orderType = "order_type"

            case fulfillmentType = "fulfillment_type"

            case items

            case dpOptions = "dp_options"

            case shipmentType = "shipment_type"

            case dpId = "dp_id"
        }

        public init(boxType: String?, dpId: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
            self.fulfillmentId = fulfillmentId

            self.shipments = shipments

            self.boxType = boxType

            self.promise = promise

            self.orderType = orderType

            self.fulfillmentType = fulfillmentType

            self.items = items

            self.dpOptions = dpOptions

            self.shipmentType = shipmentType

            self.dpId = dpId
        }

        public func duplicate() -> ShipmentResponse {
            let dict = self.dictionary!
            let copy = ShipmentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

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
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(ShipmentPromise.self, forKey: .promise)

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

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(dpOptions, forKey: .dpOptions)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encode(dpId, forKey: .dpId)
        }
    }

    /*
         Model: CartShipmentsResponse
         Used By: Cart
     */
    class CartShipmentsResponse: Codable {
        public var message: String?

        public var breakupValues: CartBreakup?

        public var gstin: String?

        public var deliveryPromise: ShipmentPromise?

        public var currency: CartCurrency?

        public var restrictCheckout: Bool?

        public var checkoutMode: String?

        public var isValid: Bool?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var couponText: String?

        public var uid: String?

        public var deliveryChargeInfo: String?

        public var lastModified: String?

        public var comment: String?

        public var cartId: Int?

        public var shipments: [ShipmentResponse]?

        public var error: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case breakupValues = "breakup_values"

            case gstin

            case deliveryPromise = "delivery_promise"

            case currency

            case restrictCheckout = "restrict_checkout"

            case checkoutMode = "checkout_mode"

            case isValid = "is_valid"

            case paymentSelectionLock = "payment_selection_lock"

            case couponText = "coupon_text"

            case uid

            case deliveryChargeInfo = "delivery_charge_info"

            case lastModified = "last_modified"

            case comment

            case cartId = "cart_id"

            case shipments

            case error

            case id
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, error: Bool?, gstin: String?, id: String?, isValid: Bool?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
            self.message = message

            self.breakupValues = breakupValues

            self.gstin = gstin

            self.deliveryPromise = deliveryPromise

            self.currency = currency

            self.restrictCheckout = restrictCheckout

            self.checkoutMode = checkoutMode

            self.isValid = isValid

            self.paymentSelectionLock = paymentSelectionLock

            self.couponText = couponText

            self.uid = uid

            self.deliveryChargeInfo = deliveryChargeInfo

            self.lastModified = lastModified

            self.comment = comment

            self.cartId = cartId

            self.shipments = shipments

            self.error = error

            self.id = id
        }

        public func duplicate() -> CartShipmentsResponse {
            let dict = self.dictionary!
            let copy = CartShipmentsResponse(dictionary: dict)!
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

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                currency = try container.decode(CartCurrency.self, forKey: .currency)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                lastModified = try container.decode(String.self, forKey: .lastModified)

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
                cartId = try container.decode(Int.self, forKey: .cartId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CustomerDetails
         Used By: Cart
     */
    class CustomerDetails: Codable {
        public var name: String?

        public var mobile: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case mobile

            case email
        }

        public init(email: String?, mobile: String, name: String?) {
            self.name = name

            self.mobile = mobile

            self.email = email
        }

        public func duplicate() -> CustomerDetails {
            let dict = self.dictionary!
            let copy = CustomerDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: StaffCheckout
         Used By: Cart
     */
    class StaffCheckout: Codable {
        public var user: String

        public var lastName: String

        public var id: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case user

            case lastName = "last_name"

            case id = "_id"

            case firstName = "first_name"
        }

        public init(firstName: String, lastName: String, user: String, id: String) {
            self.user = user

            self.lastName = lastName

            self.id = id

            self.firstName = firstName
        }

        public func duplicate() -> StaffCheckout {
            let dict = self.dictionary!
            let copy = StaffCheckout(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(String.self, forKey: .user)

            lastName = try container.decode(String.self, forKey: .lastName)

            id = try container.decode(String.self, forKey: .id)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }

    /*
         Model: CartCheckoutDetailRequest
         Used By: Cart
     */
    class CartCheckoutDetailRequest: Codable {
        public var meta: [String: Any]?

        public var aggregator: String?

        public var paymentAutoConfirm: Bool?

        public var customerDetails: CustomerDetails?

        public var paymentIdentifier: String?

        public var callbackUrl: String?

        public var staff: StaffCheckout?

        public var billingAddressId: String?

        public var orderingStore: Int?

        public var paymentParams: [String: Any]?

        public var paymentMode: String

        public var merchantCode: String?

        public var addressId: String?

        public var extraMeta: [String: Any]?

        public var billingAddress: [String: Any]?

        public var deliveryAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case meta

            case aggregator

            case paymentAutoConfirm = "payment_auto_confirm"

            case customerDetails = "customer_details"

            case paymentIdentifier = "payment_identifier"

            case callbackUrl = "callback_url"

            case staff

            case billingAddressId = "billing_address_id"

            case orderingStore = "ordering_store"

            case paymentParams = "payment_params"

            case paymentMode = "payment_mode"

            case merchantCode = "merchant_code"

            case addressId = "address_id"

            case extraMeta = "extra_meta"

            case billingAddress = "billing_address"

            case deliveryAddress = "delivery_address"
        }

        public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, customerDetails: CustomerDetails?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: StaffCheckout?) {
            self.meta = meta

            self.aggregator = aggregator

            self.paymentAutoConfirm = paymentAutoConfirm

            self.customerDetails = customerDetails

            self.paymentIdentifier = paymentIdentifier

            self.callbackUrl = callbackUrl

            self.staff = staff

            self.billingAddressId = billingAddressId

            self.orderingStore = orderingStore

            self.paymentParams = paymentParams

            self.paymentMode = paymentMode

            self.merchantCode = merchantCode

            self.addressId = addressId

            self.extraMeta = extraMeta

            self.billingAddress = billingAddress

            self.deliveryAddress = deliveryAddress
        }

        public func duplicate() -> CartCheckoutDetailRequest {
            let dict = self.dictionary!
            let copy = CartCheckoutDetailRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)

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

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

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

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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
                deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)

            try? container.encode(customerDetails, forKey: .customerDetails)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(staff, forKey: .staff)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentParams, forKey: .paymentParams)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
        }
    }

    /*
         Model: CheckCart
         Used By: Cart
     */
    class CheckCart: Codable {
        public var deliveryPromise: ShipmentPromise?

        public var errorMessage: String?

        public var userType: String?

        public var storeEmps: [[String: Any]]?

        public var items: [CartProductInfo]?

        public var storeCode: String?

        public var uid: String?

        public var id: String?

        public var codMessage: String?

        public var comment: String?

        public var codCharges: Int?

        public var success: Bool?

        public var message: String?

        public var breakupValues: CartBreakup?

        public var deliveryChargeOrderValue: Int?

        public var gstin: String?

        public var codAvailable: Bool?

        public var deliveryCharges: Int?

        public var currency: CartCurrency?

        public var restrictCheckout: Bool?

        public var checkoutMode: String?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var couponText: String?

        public var orderId: String?

        public var deliveryChargeInfo: String?

        public var lastModified: String?

        public var cartId: Int?

        public var isValid: Bool?

        public enum CodingKeys: String, CodingKey {
            case deliveryPromise = "delivery_promise"

            case errorMessage = "error_message"

            case userType = "user_type"

            case storeEmps = "store_emps"

            case items

            case storeCode = "store_code"

            case uid

            case id

            case codMessage = "cod_message"

            case comment

            case codCharges = "cod_charges"

            case success

            case message

            case breakupValues = "breakup_values"

            case deliveryChargeOrderValue = "delivery_charge_order_value"

            case gstin

            case codAvailable = "cod_available"

            case deliveryCharges = "delivery_charges"

            case currency

            case restrictCheckout = "restrict_checkout"

            case checkoutMode = "checkout_mode"

            case paymentSelectionLock = "payment_selection_lock"

            case couponText = "coupon_text"

            case orderId = "order_id"

            case deliveryChargeInfo = "delivery_charge_info"

            case lastModified = "last_modified"

            case cartId = "cart_id"

            case isValid = "is_valid"
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
            self.deliveryPromise = deliveryPromise

            self.errorMessage = errorMessage

            self.userType = userType

            self.storeEmps = storeEmps

            self.items = items

            self.storeCode = storeCode

            self.uid = uid

            self.id = id

            self.codMessage = codMessage

            self.comment = comment

            self.codCharges = codCharges

            self.success = success

            self.message = message

            self.breakupValues = breakupValues

            self.deliveryChargeOrderValue = deliveryChargeOrderValue

            self.gstin = gstin

            self.codAvailable = codAvailable

            self.deliveryCharges = deliveryCharges

            self.currency = currency

            self.restrictCheckout = restrictCheckout

            self.checkoutMode = checkoutMode

            self.paymentSelectionLock = paymentSelectionLock

            self.couponText = couponText

            self.orderId = orderId

            self.deliveryChargeInfo = deliveryChargeInfo

            self.lastModified = lastModified

            self.cartId = cartId

            self.isValid = isValid
        }

        public func duplicate() -> CheckCart {
            let dict = self.dictionary!
            let copy = CheckCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                userType = try container.decode(String.self, forKey: .userType)

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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
                deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)

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
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                orderId = try container.decode(String.self, forKey: .orderId)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(codMessage, forKey: .codMessage)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(isValid, forKey: .isValid)
        }
    }

    /*
         Model: CartCheckoutResponse
         Used By: Cart
     */
    class CartCheckoutResponse: Codable {
        public var message: String?

        public var callbackUrl: String?

        public var paymentConfirmUrl: String?

        public var cart: CheckCart?

        public var success: Bool?

        public var data: [String: Any]?

        public var orderId: String?

        public var appInterceptUrl: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case callbackUrl = "callback_url"

            case paymentConfirmUrl = "payment_confirm_url"

            case cart

            case success

            case data

            case orderId = "order_id"

            case appInterceptUrl = "app_intercept_url"
        }

        public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, paymentConfirmUrl: String?, success: Bool?) {
            self.message = message

            self.callbackUrl = callbackUrl

            self.paymentConfirmUrl = paymentConfirmUrl

            self.cart = cart

            self.success = success

            self.data = data

            self.orderId = orderId

            self.appInterceptUrl = appInterceptUrl
        }

        public func duplicate() -> CartCheckoutResponse {
            let dict = self.dictionary!
            let copy = CartCheckoutResponse(dictionary: dict)!
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
                cart = try container.decode(CheckCart.self, forKey: .cart)

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
                data = try container.decode([String: Any].self, forKey: .data)

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
                appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
        }
    }

    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var comment: String?

        public var gstin: String?

        public var checkoutMode: String?

        public var pickUpCustomerDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case comment

            case gstin

            case checkoutMode = "checkout_mode"

            case pickUpCustomerDetails = "pick_up_customer_details"
        }

        public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
            self.comment = comment

            self.gstin = gstin

            self.checkoutMode = checkoutMode

            self.pickUpCustomerDetails = pickUpCustomerDetails
        }

        public func duplicate() -> CartMetaRequest {
            let dict = self.dictionary!
            let copy = CartMetaRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
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
        public var meta: [String: Any]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case id
        }

        public init(id: String?, meta: [String: Any]?) {
            self.meta = meta

            self.id = id
        }

        public func duplicate() -> GetShareCartLinkRequest {
            let dict = self.dictionary!
            let copy = GetShareCartLinkRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)
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
        public var meta: [String: Any]?

        public var token: String?

        public var source: [String: Any]?

        public var user: [String: Any]?

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case token

            case source

            case user

            case createdOn = "created_on"
        }

        public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
            self.meta = meta

            self.token = token

            self.source = source

            self.user = user

            self.createdOn = createdOn
        }

        public func duplicate() -> SharedCartDetails {
            let dict = self.dictionary!
            let copy = SharedCartDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            do {
                source = try container.decode([String: Any].self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }

    /*
         Model: SharedCart
         Used By: Cart
     */
    class SharedCart: Codable {
        public var paymentSelectionLock: PaymentSelectionLock?

        public var deliveryChargeInfo: String?

        public var message: String?

        public var breakupValues: CartBreakup?

        public var couponText: String?

        public var uid: String?

        public var cartId: Int?

        public var gstin: String?

        public var lastModified: String?

        public var comment: String?

        public var deliveryPromise: ShipmentPromise?

        public var currency: CartCurrency?

        public var restrictCheckout: Bool?

        public var sharedCartDetails: SharedCartDetails?

        public var checkoutMode: String?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case paymentSelectionLock = "payment_selection_lock"

            case deliveryChargeInfo = "delivery_charge_info"

            case message

            case breakupValues = "breakup_values"

            case couponText = "coupon_text"

            case uid

            case cartId = "cart_id"

            case gstin

            case lastModified = "last_modified"

            case comment

            case deliveryPromise = "delivery_promise"

            case currency

            case restrictCheckout = "restrict_checkout"

            case sharedCartDetails = "shared_cart_details"

            case checkoutMode = "checkout_mode"

            case isValid = "is_valid"

            case items

            case id
        }

        public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
            self.paymentSelectionLock = paymentSelectionLock

            self.deliveryChargeInfo = deliveryChargeInfo

            self.message = message

            self.breakupValues = breakupValues

            self.couponText = couponText

            self.uid = uid

            self.cartId = cartId

            self.gstin = gstin

            self.lastModified = lastModified

            self.comment = comment

            self.deliveryPromise = deliveryPromise

            self.currency = currency

            self.restrictCheckout = restrictCheckout

            self.sharedCartDetails = sharedCartDetails

            self.checkoutMode = checkoutMode

            self.isValid = isValid

            self.items = items

            self.id = id
        }

        public func duplicate() -> SharedCart {
            let dict = self.dictionary!
            let copy = SharedCart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                currency = try container.decode(CartCurrency.self, forKey: .currency)

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
                sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: SharedCartResponse
         Used By: Cart
     */
    class SharedCartResponse: Codable {
        public var error: String?

        public var cart: SharedCart?

        public enum CodingKeys: String, CodingKey {
            case error

            case cart
        }

        public init(cart: SharedCart?, error: String?) {
            self.error = error

            self.cart = cart
        }

        public func duplicate() -> SharedCartResponse {
            let dict = self.dictionary!
            let copy = SharedCartResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(SharedCart.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(cart, forKey: .cart)
        }
    }

    /*
         Model: PromotionOffer
         Used By: Cart
     */
    class PromotionOffer: Codable {
        public var offerText: String?

        public var description: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case offerText = "offer_text"

            case description

            case id
        }

        public init(description: String?, id: String?, offerText: String?) {
            self.offerText = offerText

            self.description = description

            self.id = id
        }

        public func duplicate() -> PromotionOffer {
            let dict = self.dictionary!
            let copy = PromotionOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

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

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: PromotionOffersResponse
         Used By: Cart
     */
    class PromotionOffersResponse: Codable {
        public var availablePromotions: [PromotionOffer]?

        public enum CodingKeys: String, CodingKey {
            case availablePromotions = "available_promotions"
        }

        public init(availablePromotions: [PromotionOffer]?) {
            self.availablePromotions = availablePromotions
        }

        public func duplicate() -> PromotionOffersResponse {
            let dict = self.dictionary!
            let copy = PromotionOffersResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availablePromotions = try container.decode([PromotionOffer].self, forKey: .availablePromotions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availablePromotions, forKey: .availablePromotions)
        }
    }

    /*
         Model: OperationErrorResponse
         Used By: Cart
     */
    class OperationErrorResponse: Codable {
        public var success: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String?, success: Bool?) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> OperationErrorResponse {
            let dict = self.dictionary!
            let copy = OperationErrorResponse(dictionary: dict)!
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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: LadderPrice
         Used By: Cart
     */
    class LadderPrice: Codable {
        public var currencySymbol: String?

        public var currencyCode: String?

        public var effective: Int?

        public var offerPrice: Double?

        public var marked: Int?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case currencyCode = "currency_code"

            case effective

            case offerPrice = "offer_price"

            case marked
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?, offerPrice: Double?) {
            self.currencySymbol = currencySymbol

            self.currencyCode = currencyCode

            self.effective = effective

            self.offerPrice = offerPrice

            self.marked = marked
        }

        public func duplicate() -> LadderPrice {
            let dict = self.dictionary!
            let copy = LadderPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                effective = try container.decode(Int.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerPrice = try container.decode(Double.self, forKey: .offerPrice)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(offerPrice, forKey: .offerPrice)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }

    /*
         Model: LadderOfferItem
         Used By: Cart
     */
    class LadderOfferItem: Codable {
        public var maxQuantity: Int?

        public var margin: Int?

        public var minQuantity: Int?

        public var price: LadderPrice?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case maxQuantity = "max_quantity"

            case margin

            case minQuantity = "min_quantity"

            case price

            case type
        }

        public init(margin: Int?, maxQuantity: Int?, minQuantity: Int?, price: LadderPrice?, type: String?) {
            self.maxQuantity = maxQuantity

            self.margin = margin

            self.minQuantity = minQuantity

            self.price = price

            self.type = type
        }

        public func duplicate() -> LadderOfferItem {
            let dict = self.dictionary!
            let copy = LadderOfferItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

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
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(LadderPrice.self, forKey: .price)

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

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: LadderPriceOffer
         Used By: Cart
     */
    class LadderPriceOffer: Codable {
        public var offerPrices: [LadderOfferItem]?

        public var offerText: String?

        public var description: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case offerPrices = "offer_prices"

            case offerText = "offer_text"

            case description

            case id
        }

        public init(description: String?, id: String?, offerPrices: [LadderOfferItem]?, offerText: String?) {
            self.offerPrices = offerPrices

            self.offerText = offerText

            self.description = description

            self.id = id
        }

        public func duplicate() -> LadderPriceOffer {
            let dict = self.dictionary!
            let copy = LadderPriceOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offerPrices = try container.decode([LadderOfferItem].self, forKey: .offerPrices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

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

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CurrencyInfo
         Used By: Cart
     */
    class CurrencyInfo: Codable {
        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case symbol

            case code
        }

        public init(code: String?, symbol: String?) {
            self.symbol = symbol

            self.code = code
        }

        public func duplicate() -> CurrencyInfo {
            let dict = self.dictionary!
            let copy = CurrencyInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LadderPriceOffers
         Used By: Cart
     */
    class LadderPriceOffers: Codable {
        public var availableOffers: [LadderPriceOffer]?

        public var currency: CurrencyInfo?

        public enum CodingKeys: String, CodingKey {
            case availableOffers = "available_offers"

            case currency
        }

        public init(availableOffers: [LadderPriceOffer]?, currency: CurrencyInfo?) {
            self.availableOffers = availableOffers

            self.currency = currency
        }

        public func duplicate() -> LadderPriceOffers {
            let dict = self.dictionary!
            let copy = LadderPriceOffers(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                availableOffers = try container.decode([LadderPriceOffer].self, forKey: .availableOffers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CurrencyInfo.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
