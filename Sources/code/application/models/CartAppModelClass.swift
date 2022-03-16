import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: PaymentSelectionLock
            Used By: Cart
        */
        class PaymentSelectionLock: Codable {
            
            public var defaultOptions: String?
            
            public var paymentIdentifier: String?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case defaultOptions = "default_options"
                
                case paymentIdentifier = "payment_identifier"
                
                case enabled = "enabled"
                
            }

            public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
                
                self.defaultOptions = defaultOptions
                
                self.paymentIdentifier = paymentIdentifier
                
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
                    defaultOptions = try container.decode(String.self, forKey: .defaultOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)
                
                
                
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        class CouponBreakup: Codable {
            
            public var code: String?
            
            public var isApplied: Bool?
            
            public var title: String?
            
            public var uid: String?
            
            public var message: String?
            
            public var type: String?
            
            public var maxDiscountValue: Double?
            
            public var couponValue: Double?
            
            public var subTitle: String?
            
            public var couponType: String?
            
            public var description: String?
            
            public var minimumCartValue: Double?
            
            public var value: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case isApplied = "is_applied"
                
                case title = "title"
                
                case uid = "uid"
                
                case message = "message"
                
                case type = "type"
                
                case maxDiscountValue = "max_discount_value"
                
                case couponValue = "coupon_value"
                
                case subTitle = "sub_title"
                
                case couponType = "coupon_type"
                
                case description = "description"
                
                case minimumCartValue = "minimum_cart_value"
                
                case value = "value"
                
            }

            public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
                
                self.code = code
                
                self.isApplied = isApplied
                
                self.title = title
                
                self.uid = uid
                
                self.message = message
                
                self.type = type
                
                self.maxDiscountValue = maxDiscountValue
                
                self.couponValue = couponValue
                
                self.subTitle = subTitle
                
                self.couponType = couponType
                
                self.description = description
                
                self.minimumCartValue = minimumCartValue
                
                self.value = value
                
            }

            public func duplicate() -> CouponBreakup {
                let dict = self.dictionary!
                let copy = CouponBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encode(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encode(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        class RawBreakup: Codable {
            
            public var gstCharges: Double?
            
            public var subtotal: Double?
            
            public var fyndCash: Double?
            
            public var mrpTotal: Double?
            
            public var coupon: Double?
            
            public var codCharge: Double?
            
            public var discount: Double?
            
            public var total: Double?
            
            public var deliveryCharge: Double?
            
            public var youSaved: Double?
            
            public var convenienceFee: Double?
            
            public var vog: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstCharges = "gst_charges"
                
                case subtotal = "subtotal"
                
                case fyndCash = "fynd_cash"
                
                case mrpTotal = "mrp_total"
                
                case coupon = "coupon"
                
                case codCharge = "cod_charge"
                
                case discount = "discount"
                
                case total = "total"
                
                case deliveryCharge = "delivery_charge"
                
                case youSaved = "you_saved"
                
                case convenienceFee = "convenience_fee"
                
                case vog = "vog"
                
            }

            public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
                
                self.gstCharges = gstCharges
                
                self.subtotal = subtotal
                
                self.fyndCash = fyndCash
                
                self.mrpTotal = mrpTotal
                
                self.coupon = coupon
                
                self.codCharge = codCharge
                
                self.discount = discount
                
                self.total = total
                
                self.deliveryCharge = deliveryCharge
                
                self.youSaved = youSaved
                
                self.convenienceFee = convenienceFee
                
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
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vog = try container.decode(Double.self, forKey: .vog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
                
                
                
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                
                
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                
                
                
                try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
                
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
                
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                
                
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                
                
                
                try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
                
                
                
                
                try? container.encodeIfPresent(vog, forKey: .vog)
                
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        class DisplayBreakup: Codable {
            
            public var currencySymbol: String?
            
            public var display: String?
            
            public var currencyCode: String?
            
            public var message: [String]?
            
            public var key: String?
            
            public var value: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case display = "display"
                
                case currencyCode = "currency_code"
                
                case message = "message"
                
                case key = "key"
                
                case value = "value"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.display = display
                
                self.currencyCode = currencyCode
                
                self.message = message
                
                self.key = key
                
                self.value = value
                
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
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode([String].self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        class LoyaltyPoints: Codable {
            
            public var isApplied: Bool?
            
            public var description: String?
            
            public var applicable: Double?
            
            public var total: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case isApplied = "is_applied"
                
                case description = "description"
                
                case applicable = "applicable"
                
                case total = "total"
                
            }

            public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
                
                self.isApplied = isApplied
                
                self.description = description
                
                self.applicable = applicable
                
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
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    applicable = try container.decode(Double.self, forKey: .applicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        class CartBreakup: Codable {
            
            public var coupon: CouponBreakup?
            
            public var raw: RawBreakup?
            
            public var display: [DisplayBreakup]?
            
            public var loyaltyPoints: LoyaltyPoints?
            

            public enum CodingKeys: String, CodingKey {
                
                case coupon = "coupon"
                
                case raw = "raw"
                
                case display = "display"
                
                case loyaltyPoints = "loyalty_points"
                
            }

            public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
                
                self.coupon = coupon
                
                self.raw = raw
                
                self.display = display
                
                self.loyaltyPoints = loyaltyPoints
                
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
                } catch {
                    
                }
                
                
                
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
                
                
                try? container.encodeIfPresent(raw, forKey: .raw)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
                
                
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
                
                case min = "min"
                
                case max = "max"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case min = "min"
                
                case max = "max"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case timestamp = "timestamp"
                
                case formatted = "formatted"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                
                
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
                
            }
            
        }
        
        /*
            Model: AppliedPromotion
            Used By: Cart
        */
        class AppliedPromotion: Codable {
            
            public var promoId: String?
            
            public var amount: Double?
            
            public var promotionType: String?
            
            public var articleQuantity: Int?
            
            public var mrpPromotion: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case promoId = "promo_id"
                
                case amount = "amount"
                
                case promotionType = "promotion_type"
                
                case articleQuantity = "article_quantity"
                
                case mrpPromotion = "mrp_promotion"
                
            }

            public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
                
                self.promoId = promoId
                
                self.amount = amount
                
                self.promotionType = promotionType
                
                self.articleQuantity = articleQuantity
                
                self.mrpPromotion = mrpPromotion
                
            }

            public func duplicate() -> AppliedPromotion {
                let dict = self.dictionary!
                let copy = AppliedPromotion(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(promoId, forKey: .promoId)
                
                
                
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(promotionType, forKey: .promotionType)
                
                
                
                
                try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
                
                
                
                
                try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
                
                
            }
            
        }
        
        /*
            Model: PromoMeta
            Used By: Cart
        */
        class PromoMeta: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
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
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: ProductImage
            Used By: Cart
        */
        class ProductImage: Codable {
            
            public var aspectRatio: String?
            
            public var url: String?
            
            public var secureUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aspectRatio = "aspect_ratio"
                
                case url = "url"
                
                case secureUrl = "secure_url"
                
            }

            public init(aspectRatio: String?, secureUrl: String?, url: String?) {
                
                self.aspectRatio = aspectRatio
                
                self.url = url
                
                self.secureUrl = secureUrl
                
            }

            public func duplicate() -> ProductImage {
                let dict = self.dictionary!
                let copy = ProductImage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
                
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
                
                case name = "name"
                
                case uid = "uid"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                } catch {
                    
                }
                
                
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
            
            public var query: ActionQuery?
            
            public var url: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case query = "query"
                
                case url = "url"
                
                case type = "type"
                
            }

            public init(query: ActionQuery?, type: String?, url: String?) {
                
                self.query = query
                
                self.url = url
                
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
                    query = try container.decode(ActionQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
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
                
                case name = "name"
                
                case uid = "uid"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: CartProduct
            Used By: Cart
        */
        class CartProduct: Codable {
            
            public var name: String?
            
            public var images: [ProductImage]?
            
            public var type: String?
            
            public var slug: String?
            
            public var categories: [CategoryInfo]?
            
            public var action: ProductAction?
            
            public var brand: BaseInfo?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case images = "images"
                
                case type = "type"
                
                case slug = "slug"
                
                case categories = "categories"
                
                case action = "action"
                
                case brand = "brand"
                
                case uid = "uid"
                
            }

            public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
                
                self.name = name
                
                self.images = images
                
                self.type = type
                
                self.slug = slug
                
                self.categories = categories
                
                self.action = action
                
                self.brand = brand
                
                self.uid = uid
                
            }

            public func duplicate() -> CartProduct {
                let dict = self.dictionary!
                let copy = CartProduct(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    images = try container.decode([ProductImage].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: BasePrice
            Used By: Cart
        */
        class BasePrice: Codable {
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var effective: Double?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
                case marked = "marked"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
                self.marked = marked
                
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
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
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
                
                case converted = "converted"
                
                case base = "base"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
                
                
                
                try? container.encodeIfPresent(base, forKey: .base)
                
                
            }
            
        }
        
        /*
            Model: ProductArticle
            Used By: Cart
        */
        class ProductArticle: Codable {
            
            public var parentItemId: String?
            
            public var extraMeta: [String: Any]?
            
            public var productGroupTags: [String]?
            
            public var seller: BaseInfo?
            
            public var quantity: Int?
            
            public var store: BaseInfo?
            
            public var price: ArticlePriceInfo?
            
            public var type: String?
            
            public var size: String?
            
            public var parentItemSize: String?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case parentItemId = "parent_item_id"
                
                case extraMeta = "extra_meta"
                
                case productGroupTags = "product_group_tags"
                
                case seller = "seller"
                
                case quantity = "quantity"
                
                case store = "store"
                
                case price = "price"
                
                case type = "type"
                
                case size = "size"
                
                case parentItemSize = "parent_item_size"
                
                case uid = "uid"
                
            }

            public init(extraMeta: [String: Any]?, parentItemId: String?, parentItemSize: String?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
                
                self.parentItemId = parentItemId
                
                self.extraMeta = extraMeta
                
                self.productGroupTags = productGroupTags
                
                self.seller = seller
                
                self.quantity = quantity
                
                self.store = store
                
                self.price = price
                
                self.type = type
                
                self.size = size
                
                self.parentItemSize = parentItemSize
                
                self.uid = uid
                
            }

            public func duplicate() -> ProductArticle {
                let dict = self.dictionary!
                let copy = ProductArticle(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productGroupTags = try container.decode([String].self, forKey: .productGroupTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ArticlePriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
                
                
                try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        class ProductPrice: Codable {
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            
            public var marked: Double?
            
            public var addOn: Double?
            
            public var effective: Double?
            
            public var selling: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case addOn = "add_on"
                
                case effective = "effective"
                
                case selling = "selling"
                
            }

            public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.addOn = addOn
                
                self.effective = effective
                
                self.selling = selling
                
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
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addOn = try container.decode(Double.self, forKey: .addOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selling = try container.decode(Double.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
                
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
                
                case converted = "converted"
                
                case base = "base"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
                
                
                
                try? container.encodeIfPresent(base, forKey: .base)
                
                
            }
            
        }
        
        /*
            Model: CartProductIdentifer
            Used By: Cart
        */
        class CartProductIdentifer: Codable {
            
            public var identifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifier = "identifier"
                
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
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
            }
            
        }
        
        /*
            Model: ProductAvailability
            Used By: Cart
        */
        class ProductAvailability: Codable {
            
            public var deliverable: Bool?
            
            public var sizes: [String]?
            
            public var otherStoreQuantity: Int?
            
            public var isValid: Bool?
            
            public var outOfStock: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case deliverable = "deliverable"
                
                case sizes = "sizes"
                
                case otherStoreQuantity = "other_store_quantity"
                
                case isValid = "is_valid"
                
                case outOfStock = "out_of_stock"
                
            }

            public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
                
                self.deliverable = deliverable
                
                self.sizes = sizes
                
                self.otherStoreQuantity = otherStoreQuantity
                
                self.isValid = isValid
                
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
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        class CartProductInfo: Codable {
            
            public var promotionApplied: [AppliedPromotion]?
            
            public var promoMeta: PromoMeta?
            
            public var quantity: Int?
            
            public var message: String?
            
            public var product: CartProduct?
            
            public var article: ProductArticle?
            
            public var price: ProductPriceInfo?
            
            public var key: String?
            
            public var identifiers: CartProductIdentifer
            
            public var isSet: Bool?
            
            public var discount: String?
            
            public var bulkOffer: [String: Any]?
            
            public var couponMessage: String?
            
            public var pricePerUnit: ProductPriceInfo?
            
            public var availability: ProductAvailability?
            

            public enum CodingKeys: String, CodingKey {
                
                case promotionApplied = "promotion_applied"
                
                case promoMeta = "promo_meta"
                
                case quantity = "quantity"
                
                case message = "message"
                
                case product = "product"
                
                case article = "article"
                
                case price = "price"
                
                case key = "key"
                
                case identifiers = "identifiers"
                
                case isSet = "is_set"
                
                case discount = "discount"
                
                case bulkOffer = "bulk_offer"
                
                case couponMessage = "coupon_message"
                
                case pricePerUnit = "price_per_unit"
                
                case availability = "availability"
                
            }

            public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
                
                self.promotionApplied = promotionApplied
                
                self.promoMeta = promoMeta
                
                self.quantity = quantity
                
                self.message = message
                
                self.product = product
                
                self.article = article
                
                self.price = price
                
                self.key = key
                
                self.identifiers = identifiers
                
                self.isSet = isSet
                
                self.discount = discount
                
                self.bulkOffer = bulkOffer
                
                self.couponMessage = couponMessage
                
                self.pricePerUnit = pricePerUnit
                
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
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    product = try container.decode(CartProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
                
                
                
                
                try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                
                
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                
                
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                
                
                
                try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
                
                
                
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                
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
                
                case symbol = "symbol"
                
                case code = "code"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(symbol, forKey: .symbol)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: CartDetailResponse
            Used By: Cart
        */
        class CartDetailResponse: Codable {
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var couponText: String?
            
            public var restrictCheckout: Bool?
            
            public var lastModified: String?
            
            public var message: String?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var gstin: String?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var isValid: Bool?
            
            public var id: String?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case couponText = "coupon_text"
                
                case restrictCheckout = "restrict_checkout"
                
                case lastModified = "last_modified"
                
                case message = "message"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case gstin = "gstin"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case isValid = "is_valid"
                
                case id = "id"
                
                case currency = "currency"
                
            }

            public init(breakupValues: CartBreakup?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?) {
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.couponText = couponText
                
                self.restrictCheckout = restrictCheckout
                
                self.lastModified = lastModified
                
                self.message = message
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.gstin = gstin
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.isValid = isValid
                
                self.id = id
                
                self.currency = currency
                
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
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        class AddProductCart: Codable {
            
            public var storeId: Int?
            
            public var display: String?
            
            public var extraMeta: [String: Any]?
            
            public var articleAssignment: [String: Any]?
            
            public var quantity: Int?
            
            public var sellerId: Int?
            
            public var itemSize: String?
            
            public var itemId: Int?
            
            public var articleId: String?
            
            public var pos: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case storeId = "store_id"
                
                case display = "display"
                
                case extraMeta = "extra_meta"
                
                case articleAssignment = "article_assignment"
                
                case quantity = "quantity"
                
                case sellerId = "seller_id"
                
                case itemSize = "item_size"
                
                case itemId = "item_id"
                
                case articleId = "article_id"
                
                case pos = "pos"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, extraMeta: [String: Any]?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
                
                self.storeId = storeId
                
                self.display = display
                
                self.extraMeta = extraMeta
                
                self.articleAssignment = articleAssignment
                
                self.quantity = quantity
                
                self.sellerId = sellerId
                
                self.itemSize = itemSize
                
                self.itemId = itemId
                
                self.articleId = articleId
                
                self.pos = pos
                
            }

            public func duplicate() -> AddProductCart {
                let dict = self.dictionary!
                let copy = AddProductCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                
            }
            
        }
        
        /*
            Model: AddCartRequest
            Used By: Cart
        */
        class AddCartRequest: Codable {
            
            public var items: [AddProductCart]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
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
                } catch {
                    
                }
                
                
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
            
            public var cart: CartDetailResponse?
            
            public var partial: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case cart = "cart"
                
                case partial = "partial"
                
            }

            public init(cart: CartDetailResponse?, message: String?, partial: Bool?, success: Bool?) {
                
                self.success = success
                
                self.message = message
                
                self.cart = cart
                
                self.partial = partial
                
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
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartDetailResponse.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    partial = try container.decode(Bool.self, forKey: .partial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
                
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        class UpdateProductCart: Codable {
            
            public var itemIndex: Int?
            
            public var extraMeta: [String: Any]?
            
            public var quantity: Int?
            
            public var identifiers: CartProductIdentifer
            
            public var itemSize: String?
            
            public var itemId: Int?
            
            public var articleId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemIndex = "item_index"
                
                case extraMeta = "extra_meta"
                
                case quantity = "quantity"
                
                case identifiers = "identifiers"
                
                case itemSize = "item_size"
                
                case itemId = "item_id"
                
                case articleId = "article_id"
                
            }

            public init(articleId: String?, extraMeta: [String: Any]?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
                
                self.itemIndex = itemIndex
                
                self.extraMeta = extraMeta
                
                self.quantity = quantity
                
                self.identifiers = identifiers
                
                self.itemSize = itemSize
                
                self.itemId = itemId
                
                self.articleId = articleId
                
            }

            public func duplicate() -> UpdateProductCart {
                let dict = self.dictionary!
                let copy = UpdateProductCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemIndex = try container.decode(Int.self, forKey: .itemIndex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
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
                
                case operation = "operation"
                
                case items = "items"
                
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
                } catch {
                    
                }
                
                
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
                
                case success = "success"
                
                case message = "message"
                
                case cart = "cart"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartDetailResponse.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
                
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        class Coupon: Codable {
            
            public var expiresOn: String?
            
            public var isApplied: Bool?
            
            public var title: String?
            
            public var message: String?
            
            public var maxDiscountValue: Double?
            
            public var couponValue: Double?
            
            public var couponCode: String?
            
            public var subTitle: String?
            
            public var isApplicable: Bool?
            
            public var couponType: String?
            
            public var minimumCartValue: Double?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case expiresOn = "expires_on"
                
                case isApplied = "is_applied"
                
                case title = "title"
                
                case message = "message"
                
                case maxDiscountValue = "max_discount_value"
                
                case couponValue = "coupon_value"
                
                case couponCode = "coupon_code"
                
                case subTitle = "sub_title"
                
                case isApplicable = "is_applicable"
                
                case couponType = "coupon_type"
                
                case minimumCartValue = "minimum_cart_value"
                
                case description = "description"
                
            }

            public init(couponCode: String?, couponType: String?, couponValue: Double?, description: String?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
                
                self.expiresOn = expiresOn
                
                self.isApplied = isApplied
                
                self.title = title
                
                self.message = message
                
                self.maxDiscountValue = maxDiscountValue
                
                self.couponValue = couponValue
                
                self.couponCode = couponCode
                
                self.subTitle = subTitle
                
                self.isApplicable = isApplicable
                
                self.couponType = couponType
                
                self.minimumCartValue = minimumCartValue
                
                self.description = description
                
            }

            public func duplicate() -> Coupon {
                let dict = self.dictionary!
                let copy = Coupon(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    expiresOn = try container.decode(String.self, forKey: .expiresOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                
                
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: PageCoupon
            Used By: Cart
        */
        class PageCoupon: Codable {
            
            public var hasPrevious: Bool?
            
            public var current: Int?
            
            public var hasNext: Bool?
            
            public var total: Int?
            
            public var totalItemCount: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasPrevious = "has_previous"
                
                case current = "current"
                
                case hasNext = "has_next"
                
                case total = "total"
                
                case totalItemCount = "total_item_count"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.hasPrevious = hasPrevious
                
                self.current = current
                
                self.hasNext = hasNext
                
                self.total = total
                
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
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                
                
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                
                
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                
            }
            
        }
        
        /*
            Model: GetCouponResponse
            Used By: Cart
        */
        class GetCouponResponse: Codable {
            
            public var availableCouponList: [Coupon]?
            
            public var page: PageCoupon?
            

            public enum CodingKeys: String, CodingKey {
                
                case availableCouponList = "available_coupon_list"
                
                case page = "page"
                
            }

            public init(availableCouponList: [Coupon]?, page: PageCoupon?) {
                
                self.availableCouponList = availableCouponList
                
                self.page = page
                
            }

            public func duplicate() -> GetCouponResponse {
                let dict = self.dictionary!
                let copy = GetCouponResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(PageCoupon.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
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
            
            public var bulkEffective: Double?
            
            public var currencyCode: String?
            
            public var marked: Int?
            
            public var effective: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case bulkEffective = "bulk_effective"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case effective = "effective"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
                
                self.currencySymbol = currencySymbol
                
                self.bulkEffective = bulkEffective
                
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
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Int.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                
                
                
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
            
            public var quantity: Int?
            
            public var margin: Int?
            
            public var price: OfferPrice?
            
            public var type: String?
            
            public var best: Bool?
            
            public var total: Double?
            
            public var autoApplied: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case quantity = "quantity"
                
                case margin = "margin"
                
                case price = "price"
                
                case type = "type"
                
                case best = "best"
                
                case total = "total"
                
                case autoApplied = "auto_applied"
                
            }

            public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
                
                self.quantity = quantity
                
                self.margin = margin
                
                self.price = price
                
                self.type = type
                
                self.best = best
                
                self.total = total
                
                self.autoApplied = autoApplied
                
            }

            public func duplicate() -> OfferItem {
                let dict = self.dictionary!
                let copy = OfferItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    margin = try container.decode(Int.self, forKey: .margin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(OfferPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    best = try container.decode(Bool.self, forKey: .best)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoApplied = try container.decode(Bool.self, forKey: .autoApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(best, forKey: .best)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                
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
                
                case name = "name"
                
                case uid = "uid"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case offers = "offers"
                
                case seller = "seller"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(OfferSeller.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case data = "data"
                
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
                } catch {
                    
                }
                
                
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
                
                case points = "points"
                
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
                
                case longitude = "longitude"
                
                case latitude = "latitude"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var tags: [String]?
            
            public var city: String?
            
            public var landmark: String?
            
            public var id: String?
            
            public var userId: String?
            
            public var name: String?
            
            public var meta: [String: Any]?
            
            public var googleMapPoint: [String: Any]?
            
            public var geoLocation: GeoLocation?
            
            public var isDefaultAddress: Bool?
            
            public var areaCode: String?
            
            public var phone: String?
            
            public var areaCodeSlug: String?
            
            public var countryCode: String?
            
            public var checkoutMode: String?
            
            public var email: String?
            
            public var state: String?
            
            public var country: String?
            
            public var address: String?
            
            public var addressType: String?
            
            public var isActive: Bool?
            
            public var area: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
                case city = "city"
                
                case landmark = "landmark"
                
                case id = "id"
                
                case userId = "user_id"
                
                case name = "name"
                
                case meta = "meta"
                
                case googleMapPoint = "google_map_point"
                
                case geoLocation = "geo_location"
                
                case isDefaultAddress = "is_default_address"
                
                case areaCode = "area_code"
                
                case phone = "phone"
                
                case areaCodeSlug = "area_code_slug"
                
                case countryCode = "country_code"
                
                case checkoutMode = "checkout_mode"
                
                case email = "email"
                
                case state = "state"
                
                case country = "country"
                
                case address = "address"
                
                case addressType = "address_type"
                
                case isActive = "is_active"
                
                case area = "area"
                
            }

            public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, googleMapPoint: [String: Any]?, id: String?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [String]?, userId: String?) {
                
                self.tags = tags
                
                self.city = city
                
                self.landmark = landmark
                
                self.id = id
                
                self.userId = userId
                
                self.name = name
                
                self.meta = meta
                
                self.googleMapPoint = googleMapPoint
                
                self.geoLocation = geoLocation
                
                self.isDefaultAddress = isDefaultAddress
                
                self.areaCode = areaCode
                
                self.phone = phone
                
                self.areaCodeSlug = areaCodeSlug
                
                self.countryCode = countryCode
                
                self.checkoutMode = checkoutMode
                
                self.email = email
                
                self.state = state
                
                self.country = country
                
                self.address = address
                
                self.addressType = addressType
                
                self.isActive = isActive
                
                self.area = area
                
            }

            public func duplicate() -> Address {
                let dict = self.dictionary!
                let copy = Address(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)
                
                
                
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                
            }
            
        }
        
        /*
            Model: GetAddressesResponse
            Used By: Cart
        */
        class GetAddressesResponse: Codable {
            
            public var address: [Address]?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
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
                } catch {
                    
                }
                
                
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
            
            public var id: String?
            
            public var isDefaultAddress: Bool?
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case isDefaultAddress = "is_default_address"
                
                case success = "success"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, success: Bool?) {
                
                self.id = id
                
                self.isDefaultAddress = isDefaultAddress
                
                self.success = success
                
            }

            public func duplicate() -> SaveAddressResponse {
                let dict = self.dictionary!
                let copy = SaveAddressResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        class UpdateAddressResponse: Codable {
            
            public var id: String?
            
            public var isUpdated: Bool?
            
            public var success: Bool?
            
            public var isDefaultAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case isUpdated = "is_updated"
                
                case success = "success"
                
                case isDefaultAddress = "is_default_address"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
                
                self.id = id
                
                self.isUpdated = isUpdated
                
                self.success = success
                
                self.isDefaultAddress = isDefaultAddress
                
            }

            public func duplicate() -> UpdateAddressResponse {
                let dict = self.dictionary!
                let copy = UpdateAddressResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isUpdated = try container.decode(Bool.self, forKey: .isUpdated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
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
                
                case id = "id"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var cartId: String?
            
            public var billingAddressId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case cartId = "cart_id"
                
                case billingAddressId = "billing_address_id"
                
            }

            public init(billingAddressId: String?, cartId: String?, id: String?) {
                
                self.id = id
                
                self.cartId = cartId
                
                self.billingAddressId = billingAddressId
                
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
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartPaymentRequest
            Used By: Cart
        */
        class UpdateCartPaymentRequest: Codable {
            
            public var paymentIdentifier: String?
            
            public var aggregatorName: String?
            
            public var merchantCode: String?
            
            public var id: String?
            
            public var addressId: String?
            
            public var paymentMode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentIdentifier = "payment_identifier"
                
                case aggregatorName = "aggregator_name"
                
                case merchantCode = "merchant_code"
                
                case id = "id"
                
                case addressId = "address_id"
                
                case paymentMode = "payment_mode"
                
            }

            public init(addressId: String?, aggregatorName: String?, id: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?) {
                
                self.paymentIdentifier = paymentIdentifier
                
                self.aggregatorName = aggregatorName
                
                self.merchantCode = merchantCode
                
                self.id = id
                
                self.addressId = addressId
                
                self.paymentMode = paymentMode
                
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
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
            }
            
        }
        
        /*
            Model: CouponValidity
            Used By: Cart
        */
        class CouponValidity: Codable {
            
            public var code: String?
            
            public var title: String?
            
            public var valid: Bool?
            
            public var displayMessageEn: String?
            
            public var discount: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case title = "title"
                
                case valid = "valid"
                
                case displayMessageEn = "display_message_en"
                
                case discount = "discount"
                
            }

            public init(code: String?, discount: Double?, displayMessageEn: String?, title: String?, valid: Bool?) {
                
                self.code = code
                
                self.title = title
                
                self.valid = valid
                
                self.displayMessageEn = displayMessageEn
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    valid = try container.decode(Bool.self, forKey: .valid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(valid, forKey: .valid)
                
                
                
                
                try? container.encode(displayMessageEn, forKey: .displayMessageEn)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
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
                
                case success = "success"
                
                case message = "message"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var shipments: Int?
            
            public var boxType: String?
            
            public var dpOptions: [String: Any]?
            
            public var orderType: String?
            
            public var fulfillmentType: String?
            
            public var fulfillmentId: Int?
            
            public var items: [CartProductInfo]?
            
            public var shipmentType: String?
            
            public var dpId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case promise = "promise"
                
                case shipments = "shipments"
                
                case boxType = "box_type"
                
                case dpOptions = "dp_options"
                
                case orderType = "order_type"
                
                case fulfillmentType = "fulfillment_type"
                
                case fulfillmentId = "fulfillment_id"
                
                case items = "items"
                
                case shipmentType = "shipment_type"
                
                case dpId = "dp_id"
                
            }

            public init(boxType: String?, dpId: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
                
                self.promise = promise
                
                self.shipments = shipments
                
                self.boxType = boxType
                
                self.dpOptions = dpOptions
                
                self.orderType = orderType
                
                self.fulfillmentType = fulfillmentType
                
                self.fulfillmentId = fulfillmentId
                
                self.items = items
                
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
                    promise = try container.decode(ShipmentPromise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode(Int.self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encode(boxType, forKey: .boxType)
                
                
                
                
                try? container.encode(dpOptions, forKey: .dpOptions)
                
                
                
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                
                
                
                try? container.encode(dpId, forKey: .dpId)
                
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        class CartShipmentsResponse: Codable {
            
            public var shipments: [ShipmentResponse]?
            
            public var restrictCheckout: Bool?
            
            public var breakupValues: CartBreakup?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var checkoutMode: String?
            
            public var id: String?
            
            public var lastModified: String?
            
            public var uid: String?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var cartId: Int?
            
            public var couponText: String?
            
            public var message: String?
            
            public var deliveryChargeInfo: String?
            
            public var gstin: String?
            
            public var isValid: Bool?
            
            public var currency: CartCurrency?
            
            public var error: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
                case restrictCheckout = "restrict_checkout"
                
                case breakupValues = "breakup_values"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case checkoutMode = "checkout_mode"
                
                case id = "id"
                
                case lastModified = "last_modified"
                
                case uid = "uid"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case cartId = "cart_id"
                
                case couponText = "coupon_text"
                
                case message = "message"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case gstin = "gstin"
                
                case isValid = "is_valid"
                
                case currency = "currency"
                
                case error = "error"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, error: Bool?, gstin: String?, id: String?, isValid: Bool?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
                
                self.shipments = shipments
                
                self.restrictCheckout = restrictCheckout
                
                self.breakupValues = breakupValues
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.checkoutMode = checkoutMode
                
                self.id = id
                
                self.lastModified = lastModified
                
                self.uid = uid
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.cartId = cartId
                
                self.couponText = couponText
                
                self.message = message
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.gstin = gstin
                
                self.isValid = isValid
                
                self.currency = currency
                
                self.error = error
                
            }

            public func duplicate() -> CartShipmentsResponse {
                let dict = self.dictionary!
                let copy = CartShipmentsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    error = try container.decode(Bool.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
            }
            
        }
        
        /*
            Model: StaffCheckout
            Used By: Cart
        */
        class StaffCheckout: Codable {
            
            public var lastName: String
            
            public var id: String
            
            public var firstName: String
            
            public var user: String
            

            public enum CodingKeys: String, CodingKey {
                
                case lastName = "last_name"
                
                case id = "_id"
                
                case firstName = "first_name"
                
                case user = "user"
                
            }

            public init(firstName: String, lastName: String, user: String, id: String) {
                
                self.lastName = lastName
                
                self.id = id
                
                self.firstName = firstName
                
                self.user = user
                
            }

            public func duplicate() -> StaffCheckout {
                let dict = self.dictionary!
                let copy = StaffCheckout(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                lastName = try container.decode(String.self, forKey: .lastName)
                
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                user = try container.decode(String.self, forKey: .user)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutDetailRequest
            Used By: Cart
        */
        class CartCheckoutDetailRequest: Codable {
            
            public var aggregator: String?
            
            public var paymentIdentifier: String?
            
            public var callbackUrl: String?
            
            public var meta: [String: Any]?
            
            public var extraMeta: [String: Any]?
            
            public var paymentAutoConfirm: Bool?
            
            public var merchantCode: String?
            
            public var paymentParams: [String: Any]?
            
            public var billingAddress: [String: Any]?
            
            public var deliveryAddress: [String: Any]?
            
            public var orderingStore: Int?
            
            public var addressId: String?
            
            public var paymentMode: String
            
            public var staff: StaffCheckout?
            
            public var billingAddressId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case paymentIdentifier = "payment_identifier"
                
                case callbackUrl = "callback_url"
                
                case meta = "meta"
                
                case extraMeta = "extra_meta"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case merchantCode = "merchant_code"
                
                case paymentParams = "payment_params"
                
                case billingAddress = "billing_address"
                
                case deliveryAddress = "delivery_address"
                
                case orderingStore = "ordering_store"
                
                case addressId = "address_id"
                
                case paymentMode = "payment_mode"
                
                case staff = "staff"
                
                case billingAddressId = "billing_address_id"
                
            }

            public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: StaffCheckout?) {
                
                self.aggregator = aggregator
                
                self.paymentIdentifier = paymentIdentifier
                
                self.callbackUrl = callbackUrl
                
                self.meta = meta
                
                self.extraMeta = extraMeta
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.merchantCode = merchantCode
                
                self.paymentParams = paymentParams
                
                self.billingAddress = billingAddress
                
                self.deliveryAddress = deliveryAddress
                
                self.orderingStore = orderingStore
                
                self.addressId = addressId
                
                self.paymentMode = paymentMode
                
                self.staff = staff
                
                self.billingAddressId = billingAddressId
                
            }

            public func duplicate() -> CartCheckoutDetailRequest {
                let dict = self.dictionary!
                let copy = CartCheckoutDetailRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                
                do {
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encode(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(paymentParams, forKey: .paymentParams)
                
                
                
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                
                
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                
                
                
                try? container.encode(orderingStore, forKey: .orderingStore)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        class CheckCart: Codable {
            
            public var success: Bool?
            
            public var deliveryChargeOrderValue: Int?
            
            public var codCharges: Int?
            
            public var id: String?
            
            public var uid: String?
            
            public var storeEmps: [[String: Any]]?
            
            public var codMessage: String?
            
            public var gstin: String?
            
            public var errorMessage: String?
            
            public var codAvailable: Bool?
            
            public var restrictCheckout: Bool?
            
            public var userType: String?
            
            public var breakupValues: CartBreakup?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var lastModified: String?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var deliveryCharges: Int?
            
            public var cartId: Int?
            
            public var couponText: String?
            
            public var message: String?
            
            public var deliveryChargeInfo: String?
            
            public var orderId: String?
            
            public var isValid: Bool?
            
            public var storeCode: String?
            
            public var currency: CartCurrency?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case codCharges = "cod_charges"
                
                case id = "id"
                
                case uid = "uid"
                
                case storeEmps = "store_emps"
                
                case codMessage = "cod_message"
                
                case gstin = "gstin"
                
                case errorMessage = "error_message"
                
                case codAvailable = "cod_available"
                
                case restrictCheckout = "restrict_checkout"
                
                case userType = "user_type"
                
                case breakupValues = "breakup_values"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case lastModified = "last_modified"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case deliveryCharges = "delivery_charges"
                
                case cartId = "cart_id"
                
                case couponText = "coupon_text"
                
                case message = "message"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case orderId = "order_id"
                
                case isValid = "is_valid"
                
                case storeCode = "store_code"
                
                case currency = "currency"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
                
                self.success = success
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.codCharges = codCharges
                
                self.id = id
                
                self.uid = uid
                
                self.storeEmps = storeEmps
                
                self.codMessage = codMessage
                
                self.gstin = gstin
                
                self.errorMessage = errorMessage
                
                self.codAvailable = codAvailable
                
                self.restrictCheckout = restrictCheckout
                
                self.userType = userType
                
                self.breakupValues = breakupValues
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.lastModified = lastModified
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.deliveryCharges = deliveryCharges
                
                self.cartId = cartId
                
                self.couponText = couponText
                
                self.message = message
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.orderId = orderId
                
                self.isValid = isValid
                
                self.storeCode = storeCode
                
                self.currency = currency
                
            }

            public func duplicate() -> CheckCart {
                let dict = self.dictionary!
                let copy = CheckCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharges = try container.decode(Int.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userType = try container.decode(String.self, forKey: .userType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                
                
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                
                
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                
                
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutResponse
            Used By: Cart
        */
        class CartCheckoutResponse: Codable {
            
            public var success: Bool?
            
            public var callbackUrl: String?
            
            public var paymentConfirmUrl: String?
            
            public var data: [String: Any]?
            
            public var message: String?
            
            public var cart: CheckCart?
            
            public var orderId: String?
            
            public var appInterceptUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case callbackUrl = "callback_url"
                
                case paymentConfirmUrl = "payment_confirm_url"
                
                case data = "data"
                
                case message = "message"
                
                case cart = "cart"
                
                case orderId = "order_id"
                
                case appInterceptUrl = "app_intercept_url"
                
            }

            public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, paymentConfirmUrl: String?, success: Bool?) {
                
                self.success = success
                
                self.callbackUrl = callbackUrl
                
                self.paymentConfirmUrl = paymentConfirmUrl
                
                self.data = data
                
                self.message = message
                
                self.cart = cart
                
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
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CheckCart.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                
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
                
                case gstin = "gstin"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case checkoutMode = "checkout_mode"
                
                case comment = "comment"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case message = "message"
                
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
                } catch {
                    
                }
                
                
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
                
                case errors = "errors"
                
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
                } catch {
                    
                }
                
                
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
                
                case id = "id"
                
                case meta = "meta"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case token = "token"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var source: [String: Any]?
            
            public var user: [String: Any]?
            
            public var createdOn: String?
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case source = "source"
                
                case user = "user"
                
                case createdOn = "created_on"
                
                case token = "token"
                
            }

            public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
                
                self.meta = meta
                
                self.source = source
                
                self.user = user
                
                self.createdOn = createdOn
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    source = try container.decode([String: Any].self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        class SharedCart: Codable {
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var cartId: Int?
            
            public var couponText: String?
            
            public var restrictCheckout: Bool?
            
            public var lastModified: String?
            
            public var message: String?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var gstin: String?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var isValid: Bool?
            
            public var id: String?
            
            public var currency: CartCurrency?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case cartId = "cart_id"
                
                case couponText = "coupon_text"
                
                case restrictCheckout = "restrict_checkout"
                
                case lastModified = "last_modified"
                
                case message = "message"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case gstin = "gstin"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case isValid = "is_valid"
                
                case id = "id"
                
                case currency = "currency"
                
                case sharedCartDetails = "shared_cart_details"
                
                case uid = "uid"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.cartId = cartId
                
                self.couponText = couponText
                
                self.restrictCheckout = restrictCheckout
                
                self.lastModified = lastModified
                
                self.message = message
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.gstin = gstin
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.isValid = isValid
                
                self.id = id
                
                self.currency = currency
                
                self.sharedCartDetails = sharedCartDetails
                
                self.uid = uid
                
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
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
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
                
                case cart = "cart"
                
                case error = "error"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
            }
            
        }
        
        /*
            Model: PromotionOffer
            Used By: Cart
        */
        class PromotionOffer: Codable {
            
            public var offerText: String?
            
            public var id: String?
            
            public var description: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case offerText = "offer_text"
                
                case id = "id"
                
                case description = "description"
                
            }

            public init(description: String?, id: String?, offerText: String?) {
                
                self.offerText = offerText
                
                self.id = id
                
                self.description = description
                
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
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
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
                } catch {
                    
                }
                
                
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
                
                case success = "success"
                
                case message = "message"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var offerPrice: Double?
            
            public var currencySymbol: String?
            
            public var currencyCode: String?
            
            public var marked: Int?
            
            public var effective: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case offerPrice = "offer_price"
                
                case currencySymbol = "currency_symbol"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case effective = "effective"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?, offerPrice: Double?) {
                
                self.offerPrice = offerPrice
                
                self.currencySymbol = currencySymbol
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.effective = effective
                
            }

            public func duplicate() -> LadderPrice {
                let dict = self.dictionary!
                let copy = LadderPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    offerPrice = try container.decode(Double.self, forKey: .offerPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Int.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offerPrice, forKey: .offerPrice)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
            }
            
        }
        
        /*
            Model: LadderOfferItem
            Used By: Cart
        */
        class LadderOfferItem: Codable {
            
            public var maxQuantity: Int?
            
            public var minQuantity: Int?
            
            public var margin: Int?
            
            public var price: LadderPrice?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case maxQuantity = "max_quantity"
                
                case minQuantity = "min_quantity"
                
                case margin = "margin"
                
                case price = "price"
                
                case type = "type"
                
            }

            public init(margin: Int?, maxQuantity: Int?, minQuantity: Int?, price: LadderPrice?, type: String?) {
                
                self.maxQuantity = maxQuantity
                
                self.minQuantity = minQuantity
                
                self.margin = margin
                
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
                } catch {
                    
                }
                
                
                
                do {
                    minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    margin = try container.decode(Int.self, forKey: .margin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(LadderPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
                
                
                
                
                try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
                
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: LadderPriceOffer
            Used By: Cart
        */
        class LadderPriceOffer: Codable {
            
            public var offerText: String?
            
            public var id: String?
            
            public var description: String?
            
            public var offerPrices: [LadderOfferItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case offerText = "offer_text"
                
                case id = "id"
                
                case description = "description"
                
                case offerPrices = "offer_prices"
                
            }

            public init(description: String?, id: String?, offerPrices: [LadderOfferItem]?, offerText: String?) {
                
                self.offerText = offerText
                
                self.id = id
                
                self.description = description
                
                self.offerPrices = offerPrices
                
            }

            public func duplicate() -> LadderPriceOffer {
                let dict = self.dictionary!
                let copy = LadderPriceOffer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerPrices = try container.decode([LadderOfferItem].self, forKey: .offerPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)
                
                
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
                
                case symbol = "symbol"
                
                case code = "code"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
                
                case currency = "currency"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CurrencyInfo.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
}
