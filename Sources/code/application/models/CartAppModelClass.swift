import Foundation


import Foundation
public extension ApplicationClient {
  
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
            Model: PromiseFormatted
            Used By: Cart
        */
        class PromiseFormatted: Codable {
            
            public var max: String?
            
            public var min: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case max = "max"
                
                case min = "min"
                
            }

            public init(max: String?, min: String?) {
                
                self.max = max
                
                self.min = min
                
            }

            public func duplicate() -> PromiseFormatted {
                let dict = self.dictionary!
                let copy = PromiseFormatted(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
            }
            
        }
        
        /*
            Model: PromiseTimestamp
            Used By: Cart
        */
        class PromiseTimestamp: Codable {
            
            public var max: Double?
            
            public var min: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case max = "max"
                
                case min = "min"
                
            }

            public init(max: Double?, min: Double?) {
                
                self.max = max
                
                self.min = min
                
            }

            public func duplicate() -> PromiseTimestamp {
                let dict = self.dictionary!
                let copy = PromiseTimestamp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
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
                
                case formatted = "formatted"
                
                case timestamp = "timestamp"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
                
                
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                
            }
            
        }
        
        /*
            Model: PaymentSelectionLock
            Used By: Cart
        */
        class PaymentSelectionLock: Codable {
            
            public var enabled: Bool?
            
            public var paymentIdentifier: String?
            
            public var defaultOptions: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case paymentIdentifier = "payment_identifier"
                
                case defaultOptions = "default_options"
                
            }

            public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
                
                self.enabled = enabled
                
                self.paymentIdentifier = paymentIdentifier
                
                self.defaultOptions = defaultOptions
                
            }

            public func duplicate() -> PaymentSelectionLock {
                let dict = self.dictionary!
                let copy = PaymentSelectionLock(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
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
                    defaultOptions = try container.decode(String.self, forKey: .defaultOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
                
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)
                
                
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
            Model: ProductAvailability
            Used By: Cart
        */
        class ProductAvailability: Codable {
            
            public var outOfStock: Bool?
            
            public var sizes: [String]?
            
            public var isValid: Bool?
            
            public var deliverable: Bool?
            
            public var otherStoreQuantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case outOfStock = "out_of_stock"
                
                case sizes = "sizes"
                
                case isValid = "is_valid"
                
                case deliverable = "deliverable"
                
                case otherStoreQuantity = "other_store_quantity"
                
            }

            public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
                
                self.outOfStock = outOfStock
                
                self.sizes = sizes
                
                self.isValid = isValid
                
                self.deliverable = deliverable
                
                self.otherStoreQuantity = otherStoreQuantity
                
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
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                
                
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                
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
            
            public var url: String?
            
            public var query: ActionQuery?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case query = "query"
                
                case type = "type"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode(ActionQuery.self, forKey: .query)
                
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
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
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
            Model: CartProduct
            Used By: Cart
        */
        class CartProduct: Codable {
            
            public var brand: BaseInfo?
            
            public var type: String?
            
            public var name: String?
            
            public var action: ProductAction?
            
            public var categories: [CategoryInfo]?
            
            public var uid: Int?
            
            public var images: [ProductImage]?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case brand = "brand"
                
                case type = "type"
                
                case name = "name"
                
                case action = "action"
                
                case categories = "categories"
                
                case uid = "uid"
                
                case images = "images"
                
                case slug = "slug"
                
            }

            public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
                
                self.brand = brand
                
                self.type = type
                
                self.name = name
                
                self.action = action
                
                self.categories = categories
                
                self.uid = uid
                
                self.images = images
                
                self.slug = slug
                
            }

            public func duplicate() -> CartProduct {
                let dict = self.dictionary!
                let copy = CartProduct(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                
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
                
                
                
                do {
                    images = try container.decode([ProductImage].self, forKey: .images)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: AppliedPromotion
            Used By: Cart
        */
        class AppliedPromotion: Codable {
            
            public var promoId: String?
            
            public var amount: Double?
            
            public var mrpPromotion: Bool?
            
            public var promotionType: String?
            
            public var articleQuantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case promoId = "promo_id"
                
                case amount = "amount"
                
                case mrpPromotion = "mrp_promotion"
                
                case promotionType = "promotion_type"
                
                case articleQuantity = "article_quantity"
                
            }

            public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
                
                self.promoId = promoId
                
                self.amount = amount
                
                self.mrpPromotion = mrpPromotion
                
                self.promotionType = promotionType
                
                self.articleQuantity = articleQuantity
                
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
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(promoId, forKey: .promoId)
                
                
                
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
                
                
                
                
                try? container.encodeIfPresent(promotionType, forKey: .promotionType)
                
                
                
                
                try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
                
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        class ProductPrice: Codable {
            
            public var currencyCode: String?
            
            public var effective: Double?
            
            public var marked: Double?
            
            public var currencySymbol: String?
            
            public var addOn: Double?
            
            public var selling: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case effective = "effective"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case addOn = "add_on"
                
                case selling = "selling"
                
            }

            public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
                
                self.currencyCode = currencyCode
                
                self.effective = effective
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.addOn = addOn
                
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
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
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
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
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
                    selling = try container.decode(Double.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
                
                
                
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
                
                case effective = "effective"
                
                case marked = "marked"
                
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
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var size: String?
            
            public var seller: BaseInfo?
            
            public var store: BaseInfo?
            
            public var productGroupTags: [String]?
            
            public var parentItemSize: String?
            
            public var type: String?
            
            public var quantity: Int?
            
            public var extraMeta: [String: Any]?
            
            public var uid: String?
            
            public var price: ArticlePriceInfo?
            
            public var parentItemId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case size = "size"
                
                case seller = "seller"
                
                case store = "store"
                
                case productGroupTags = "product_group_tags"
                
                case parentItemSize = "parent_item_size"
                
                case type = "type"
                
                case quantity = "quantity"
                
                case extraMeta = "extra_meta"
                
                case uid = "uid"
                
                case price = "price"
                
                case parentItemId = "parent_item_id"
                
            }

            public init(extraMeta: [String: Any]?, parentItemId: String?, parentItemSize: String?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
                
                self.size = size
                
                self.seller = seller
                
                self.store = store
                
                self.productGroupTags = productGroupTags
                
                self.parentItemSize = parentItemSize
                
                self.type = type
                
                self.quantity = quantity
                
                self.extraMeta = extraMeta
                
                self.uid = uid
                
                self.price = price
                
                self.parentItemId = parentItemId
                
            }

            public func duplicate() -> ProductArticle {
                let dict = self.dictionary!
                let copy = ProductArticle(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                
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
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
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
                    parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
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
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
                
                
                
                
                try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
                
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        class CartProductInfo: Codable {
            
            public var identifiers: CartProductIdentifer
            
            public var promoMeta: PromoMeta?
            
            public var couponMessage: String?
            
            public var availability: ProductAvailability?
            
            public var product: CartProduct?
            
            public var message: String?
            
            public var isSet: Bool?
            
            public var key: String?
            
            public var discount: String?
            
            public var promotionApplied: [AppliedPromotion]?
            
            public var quantity: Int?
            
            public var price: ProductPriceInfo?
            
            public var pricePerUnit: ProductPriceInfo?
            
            public var bulkOffer: [String: Any]?
            
            public var article: ProductArticle?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifiers = "identifiers"
                
                case promoMeta = "promo_meta"
                
                case couponMessage = "coupon_message"
                
                case availability = "availability"
                
                case product = "product"
                
                case message = "message"
                
                case isSet = "is_set"
                
                case key = "key"
                
                case discount = "discount"
                
                case promotionApplied = "promotion_applied"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case pricePerUnit = "price_per_unit"
                
                case bulkOffer = "bulk_offer"
                
                case article = "article"
                
            }

            public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
                
                self.identifiers = identifiers
                
                self.promoMeta = promoMeta
                
                self.couponMessage = couponMessage
                
                self.availability = availability
                
                self.product = product
                
                self.message = message
                
                self.isSet = isSet
                
                self.key = key
                
                self.discount = discount
                
                self.promotionApplied = promotionApplied
                
                self.quantity = quantity
                
                self.price = price
                
                self.pricePerUnit = pricePerUnit
                
                self.bulkOffer = bulkOffer
                
                self.article = article
                
            }

            public func duplicate() -> CartProductInfo {
                let dict = self.dictionary!
                let copy = CartProductInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
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
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                
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
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
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
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
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
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                
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
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
                
                
                
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                
                
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                
                
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
                
                
                
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                
                
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        class LoyaltyPoints: Codable {
            
            public var total: Double?
            
            public var isApplied: Bool?
            
            public var description: String?
            
            public var applicable: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case total = "total"
                
                case isApplied = "is_applied"
                
                case description = "description"
                
                case applicable = "applicable"
                
            }

            public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
                
                self.total = total
                
                self.isApplied = isApplied
                
                self.description = description
                
                self.applicable = applicable
                
            }

            public func duplicate() -> LoyaltyPoints {
                let dict = self.dictionary!
                let copy = LoyaltyPoints(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        class DisplayBreakup: Codable {
            
            public var value: Double?
            
            public var currencyCode: String?
            
            public var message: [String]?
            
            public var currencySymbol: String?
            
            public var key: String?
            
            public var display: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case currencyCode = "currency_code"
                
                case message = "message"
                
                case currencySymbol = "currency_symbol"
                
                case key = "key"
                
                case display = "display"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
                
                self.value = value
                
                self.currencyCode = currencyCode
                
                self.message = message
                
                self.currencySymbol = currencySymbol
                
                self.key = key
                
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
                    value = try container.decode(Double.self, forKey: .value)
                
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
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
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
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        class CouponBreakup: Codable {
            
            public var value: Double?
            
            public var subTitle: String?
            
            public var couponType: String?
            
            public var message: String?
            
            public var isApplied: Bool?
            
            public var couponValue: Double?
            
            public var type: String?
            
            public var code: String?
            
            public var minimumCartValue: Double?
            
            public var description: String?
            
            public var uid: String?
            
            public var maxDiscountValue: Double?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case subTitle = "sub_title"
                
                case couponType = "coupon_type"
                
                case message = "message"
                
                case isApplied = "is_applied"
                
                case couponValue = "coupon_value"
                
                case type = "type"
                
                case code = "code"
                
                case minimumCartValue = "minimum_cart_value"
                
                case description = "description"
                
                case uid = "uid"
                
                case maxDiscountValue = "max_discount_value"
                
                case title = "title"
                
            }

            public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
                
                self.value = value
                
                self.subTitle = subTitle
                
                self.couponType = couponType
                
                self.message = message
                
                self.isApplied = isApplied
                
                self.couponValue = couponValue
                
                self.type = type
                
                self.code = code
                
                self.minimumCartValue = minimumCartValue
                
                self.description = description
                
                self.uid = uid
                
                self.maxDiscountValue = maxDiscountValue
                
                self.title = title
                
            }

            public func duplicate() -> CouponBreakup {
                let dict = self.dictionary!
                let copy = CouponBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
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
                    message = try container.decode(String.self, forKey: .message)
                
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
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encode(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encode(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        class RawBreakup: Codable {
            
            public var codCharge: Double?
            
            public var youSaved: Double?
            
            public var vog: Double?
            
            public var fyndCash: Double?
            
            public var total: Double?
            
            public var discount: Double?
            
            public var mrpTotal: Double?
            
            public var subtotal: Double?
            
            public var deliveryCharge: Double?
            
            public var gstCharges: Double?
            
            public var convenienceFee: Double?
            
            public var coupon: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case codCharge = "cod_charge"
                
                case youSaved = "you_saved"
                
                case vog = "vog"
                
                case fyndCash = "fynd_cash"
                
                case total = "total"
                
                case discount = "discount"
                
                case mrpTotal = "mrp_total"
                
                case subtotal = "subtotal"
                
                case deliveryCharge = "delivery_charge"
                
                case gstCharges = "gst_charges"
                
                case convenienceFee = "convenience_fee"
                
                case coupon = "coupon"
                
            }

            public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
                
                self.codCharge = codCharge
                
                self.youSaved = youSaved
                
                self.vog = vog
                
                self.fyndCash = fyndCash
                
                self.total = total
                
                self.discount = discount
                
                self.mrpTotal = mrpTotal
                
                self.subtotal = subtotal
                
                self.deliveryCharge = deliveryCharge
                
                self.gstCharges = gstCharges
                
                self.convenienceFee = convenienceFee
                
                self.coupon = coupon
                
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
                    vog = try container.decode(Double.self, forKey: .vog)
                
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
                    total = try container.decode(Double.self, forKey: .total)
                
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
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
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
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
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
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                
                
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                
                
                
                try? container.encodeIfPresent(vog, forKey: .vog)
                
                
                
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
                
                
                
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                
                
                
                try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
                
                
                
                
                try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
                
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        class CartBreakup: Codable {
            
            public var loyaltyPoints: LoyaltyPoints?
            
            public var display: [DisplayBreakup]?
            
            public var coupon: CouponBreakup?
            
            public var raw: RawBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case loyaltyPoints = "loyalty_points"
                
                case display = "display"
                
                case coupon = "coupon"
                
                case raw = "raw"
                
            }

            public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
                
                self.loyaltyPoints = loyaltyPoints
                
                self.display = display
                
                self.coupon = coupon
                
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
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
                
                
                try? container.encodeIfPresent(raw, forKey: .raw)
                
                
            }
            
        }
        
        /*
            Model: CartDetailResponse
            Used By: Cart
        */
        class CartDetailResponse: Codable {
            
            public var currency: CartCurrency?
            
            public var id: String?
            
            public var comment: String?
            
            public var gstin: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var message: String?
            
            public var checkoutMode: String?
            
            public var isValid: Bool?
            
            public var couponText: String?
            
            public var lastModified: String?
            
            public var restrictCheckout: Bool?
            
            public var items: [CartProductInfo]?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case id = "id"
                
                case comment = "comment"
                
                case gstin = "gstin"
                
                case deliveryPromise = "delivery_promise"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case message = "message"
                
                case checkoutMode = "checkout_mode"
                
                case isValid = "is_valid"
                
                case couponText = "coupon_text"
                
                case lastModified = "last_modified"
                
                case restrictCheckout = "restrict_checkout"
                
                case items = "items"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
            }

            public init(breakupValues: CartBreakup?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?) {
                
                self.currency = currency
                
                self.id = id
                
                self.comment = comment
                
                self.gstin = gstin
                
                self.deliveryPromise = deliveryPromise
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.message = message
                
                self.checkoutMode = checkoutMode
                
                self.isValid = isValid
                
                self.couponText = couponText
                
                self.lastModified = lastModified
                
                self.restrictCheckout = restrictCheckout
                
                self.items = items
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
            }

            public func duplicate() -> CartDetailResponse {
                let dict = self.dictionary!
                let copy = CartDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
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
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
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
                    message = try container.decode(String.self, forKey: .message)
                
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
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
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
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
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
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        class AddProductCart: Codable {
            
            public var itemId: Int?
            
            public var articleId: String?
            
            public var storeId: Int?
            
            public var pos: Bool?
            
            public var sellerId: Int?
            
            public var quantity: Int?
            
            public var extraMeta: [String: Any]?
            
            public var itemSize: String?
            
            public var display: String?
            
            public var articleAssignment: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemId = "item_id"
                
                case articleId = "article_id"
                
                case storeId = "store_id"
                
                case pos = "pos"
                
                case sellerId = "seller_id"
                
                case quantity = "quantity"
                
                case extraMeta = "extra_meta"
                
                case itemSize = "item_size"
                
                case display = "display"
                
                case articleAssignment = "article_assignment"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, extraMeta: [String: Any]?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
                
                self.itemId = itemId
                
                self.articleId = articleId
                
                self.storeId = storeId
                
                self.pos = pos
                
                self.sellerId = sellerId
                
                self.quantity = quantity
                
                self.extraMeta = extraMeta
                
                self.itemSize = itemSize
                
                self.display = display
                
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
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
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
                
                
                
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
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
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
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
                    display = try container.decode(String.self, forKey: .display)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                
                
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                
                
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
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
            
            public var partial: Bool?
            
            public var message: String?
            
            public var cart: CartDetailResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case partial = "partial"
                
                case message = "message"
                
                case cart = "cart"
                
            }

            public init(cart: CartDetailResponse?, message: String?, partial: Bool?, success: Bool?) {
                
                self.success = success
                
                self.partial = partial
                
                self.message = message
                
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
                } catch {
                    
                }
                
                
                
                do {
                    partial = try container.decode(Bool.self, forKey: .partial)
                
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
                
                
                
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
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
            
            public var articleId: String?
            
            public var itemIndex: Int?
            
            public var quantity: Int?
            
            public var extraMeta: [String: Any]?
            
            public var itemSize: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemId = "item_id"
                
                case identifiers = "identifiers"
                
                case articleId = "article_id"
                
                case itemIndex = "item_index"
                
                case quantity = "quantity"
                
                case extraMeta = "extra_meta"
                
                case itemSize = "item_size"
                
            }

            public init(articleId: String?, extraMeta: [String: Any]?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
                
                self.itemId = itemId
                
                self.identifiers = identifiers
                
                self.articleId = articleId
                
                self.itemIndex = itemIndex
                
                self.quantity = quantity
                
                self.extraMeta = extraMeta
                
                self.itemSize = itemSize
                
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
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemIndex = try container.decode(Int.self, forKey: .itemIndex)
                
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
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
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
            Model: PageCoupon
            Used By: Cart
        */
        class PageCoupon: Codable {
            
            public var hasPrevious: Bool?
            
            public var totalItemCount: Int?
            
            public var total: Int?
            
            public var hasNext: Bool?
            
            public var current: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case hasPrevious = "has_previous"
                
                case totalItemCount = "total_item_count"
                
                case total = "total"
                
                case hasNext = "has_next"
                
                case current = "current"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.hasPrevious = hasPrevious
                
                self.totalItemCount = totalItemCount
                
                self.total = total
                
                self.hasNext = hasNext
                
                self.current = current
                
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
                    totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)
                
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
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                
                
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                
                
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        class Coupon: Codable {
            
            public var couponType: String?
            
            public var subTitle: String?
            
            public var message: String?
            
            public var isApplied: Bool?
            
            public var couponValue: Double?
            
            public var couponCode: String?
            
            public var minimumCartValue: Double?
            
            public var description: String?
            
            public var maxDiscountValue: Double?
            
            public var expiresOn: String?
            
            public var title: String?
            
            public var isApplicable: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case couponType = "coupon_type"
                
                case subTitle = "sub_title"
                
                case message = "message"
                
                case isApplied = "is_applied"
                
                case couponValue = "coupon_value"
                
                case couponCode = "coupon_code"
                
                case minimumCartValue = "minimum_cart_value"
                
                case description = "description"
                
                case maxDiscountValue = "max_discount_value"
                
                case expiresOn = "expires_on"
                
                case title = "title"
                
                case isApplicable = "is_applicable"
                
            }

            public init(couponCode: String?, couponType: String?, couponValue: Double?, description: String?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
                
                self.couponType = couponType
                
                self.subTitle = subTitle
                
                self.message = message
                
                self.isApplied = isApplied
                
                self.couponValue = couponValue
                
                self.couponCode = couponCode
                
                self.minimumCartValue = minimumCartValue
                
                self.description = description
                
                self.maxDiscountValue = maxDiscountValue
                
                self.expiresOn = expiresOn
                
                self.title = title
                
                self.isApplicable = isApplicable
                
            }

            public func duplicate() -> Coupon {
                let dict = self.dictionary!
                let copy = Coupon(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
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
                    message = try container.decode(String.self, forKey: .message)
                
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
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expiresOn = try container.decode(String.self, forKey: .expiresOn)
                
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
                    isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                
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
                
                case page = "page"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var currencyCode: String?
            
            public var effective: Int?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            
            public var bulkEffective: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case effective = "effective"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case bulkEffective = "bulk_effective"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
                
                self.currencyCode = currencyCode
                
                self.effective = effective
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.bulkEffective = bulkEffective
                
            }

            public func duplicate() -> OfferPrice {
                let dict = self.dictionary!
                let copy = OfferPrice(dictionary: dict)!
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
                    effective = try container.decode(Int.self, forKey: .effective)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        class OfferItem: Codable {
            
            public var autoApplied: Bool?
            
            public var type: String?
            
            public var total: Double?
            
            public var quantity: Int?
            
            public var price: OfferPrice?
            
            public var best: Bool?
            
            public var margin: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case autoApplied = "auto_applied"
                
                case type = "type"
                
                case total = "total"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case best = "best"
                
                case margin = "margin"
                
            }

            public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
                
                self.autoApplied = autoApplied
                
                self.type = type
                
                self.total = total
                
                self.quantity = quantity
                
                self.price = price
                
                self.best = best
                
                self.margin = margin
                
            }

            public func duplicate() -> OfferItem {
                let dict = self.dictionary!
                let copy = OfferItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    autoApplied = try container.decode(Bool.self, forKey: .autoApplied)
                
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
                    total = try container.decode(Double.self, forKey: .total)
                
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
                    price = try container.decode(OfferPrice.self, forKey: .price)
                
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
                    margin = try container.decode(Int.self, forKey: .margin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(best, forKey: .best)
                
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
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
            
            public var latitude: Double?
            
            public var longitude: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case latitude = "latitude"
                
                case longitude = "longitude"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var tags: [String]?
            
            public var id: String?
            
            public var areaCode: String?
            
            public var landmark: String?
            
            public var addressType: String?
            
            public var city: String?
            
            public var googleMapPoint: [String: Any]?
            
            public var phone: String?
            
            public var address: String?
            
            public var countryCode: String?
            
            public var checkoutMode: String?
            
            public var isActive: Bool?
            
            public var state: String?
            
            public var userId: String?
            
            public var email: String?
            
            public var area: String?
            
            public var meta: [String: Any]?
            
            public var isDefaultAddress: Bool?
            
            public var country: String?
            
            public var name: String?
            
            public var areaCodeSlug: String?
            
            public var geoLocation: GeoLocation?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
                case id = "id"
                
                case areaCode = "area_code"
                
                case landmark = "landmark"
                
                case addressType = "address_type"
                
                case city = "city"
                
                case googleMapPoint = "google_map_point"
                
                case phone = "phone"
                
                case address = "address"
                
                case countryCode = "country_code"
                
                case checkoutMode = "checkout_mode"
                
                case isActive = "is_active"
                
                case state = "state"
                
                case userId = "user_id"
                
                case email = "email"
                
                case area = "area"
                
                case meta = "meta"
                
                case isDefaultAddress = "is_default_address"
                
                case country = "country"
                
                case name = "name"
                
                case areaCodeSlug = "area_code_slug"
                
                case geoLocation = "geo_location"
                
            }

            public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, googleMapPoint: [String: Any]?, id: String?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [String]?, userId: String?) {
                
                self.tags = tags
                
                self.id = id
                
                self.areaCode = areaCode
                
                self.landmark = landmark
                
                self.addressType = addressType
                
                self.city = city
                
                self.googleMapPoint = googleMapPoint
                
                self.phone = phone
                
                self.address = address
                
                self.countryCode = countryCode
                
                self.checkoutMode = checkoutMode
                
                self.isActive = isActive
                
                self.state = state
                
                self.userId = userId
                
                self.email = email
                
                self.area = area
                
                self.meta = meta
                
                self.isDefaultAddress = isDefaultAddress
                
                self.country = country
                
                self.name = name
                
                self.areaCodeSlug = areaCodeSlug
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
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
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
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
                    addressType = try container.decode(String.self, forKey: .addressType)
                
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
                    googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)
                
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
                    address = try container.decode(String.self, forKey: .address)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    area = try container.decode(String.self, forKey: .area)
                
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
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                
                
                
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
            
            public var success: Bool?
            
            public var isDefaultAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case success = "success"
                
                case isDefaultAddress = "is_default_address"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, success: Bool?) {
                
                self.id = id
                
                self.success = success
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        class UpdateAddressResponse: Codable {
            
            public var id: String?
            
            public var success: Bool?
            
            public var isUpdated: Bool?
            
            public var isDefaultAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case success = "success"
                
                case isUpdated = "is_updated"
                
                case isDefaultAddress = "is_default_address"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
                
                self.id = id
                
                self.success = success
                
                self.isUpdated = isUpdated
                
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
                    success = try container.decode(Bool.self, forKey: .success)
                
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
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
                
                
                
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
            
            public var paymentMode: String?
            
            public var id: String?
            
            public var addressId: String?
            
            public var merchantCode: String?
            
            public var aggregatorName: String?
            
            public var paymentIdentifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentMode = "payment_mode"
                
                case id = "id"
                
                case addressId = "address_id"
                
                case merchantCode = "merchant_code"
                
                case aggregatorName = "aggregator_name"
                
                case paymentIdentifier = "payment_identifier"
                
            }

            public init(addressId: String?, aggregatorName: String?, id: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?) {
                
                self.paymentMode = paymentMode
                
                self.id = id
                
                self.addressId = addressId
                
                self.merchantCode = merchantCode
                
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
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
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
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
            }
            
        }
        
        /*
            Model: CouponValidity
            Used By: Cart
        */
        class CouponValidity: Codable {
            
            public var valid: Bool?
            
            public var displayMessageEn: String?
            
            public var code: String?
            
            public var discount: Double?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case valid = "valid"
                
                case displayMessageEn = "display_message_en"
                
                case code = "code"
                
                case discount = "discount"
                
                case title = "title"
                
            }

            public init(code: String?, discount: Double?, displayMessageEn: String?, title: String?, valid: Bool?) {
                
                self.valid = valid
                
                self.displayMessageEn = displayMessageEn
                
                self.code = code
                
                self.discount = discount
                
                self.title = title
                
            }

            public func duplicate() -> CouponValidity {
                let dict = self.dictionary!
                let copy = CouponValidity(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(valid, forKey: .valid)
                
                
                
                
                try? container.encode(displayMessageEn, forKey: .displayMessageEn)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: PaymentCouponValidate
            Used By: Cart
        */
        class PaymentCouponValidate: Codable {
            
            public var success: Bool
            
            public var couponValidity: CouponValidity?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case couponValidity = "coupon_validity"
                
                case message = "message"
                
            }

            public init(couponValidity: CouponValidity?, message: String?, success: Bool) {
                
                self.success = success
                
                self.couponValidity = couponValidity
                
                self.message = message
                
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
                    couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)
                
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
                
                
                
                
                try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        class ShipmentResponse: Codable {
            
            public var shipments: Int?
            
            public var boxType: String?
            
            public var fulfillmentType: String?
            
            public var shipmentType: String?
            
            public var orderType: String?
            
            public var dpId: String?
            
            public var dpOptions: [String: Any]?
            
            public var promise: ShipmentPromise?
            
            public var fulfillmentId: Int?
            
            public var items: [CartProductInfo]?
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
                case boxType = "box_type"
                
                case fulfillmentType = "fulfillment_type"
                
                case shipmentType = "shipment_type"
                
                case orderType = "order_type"
                
                case dpId = "dp_id"
                
                case dpOptions = "dp_options"
                
                case promise = "promise"
                
                case fulfillmentId = "fulfillment_id"
                
                case items = "items"
                
            }

            public init(boxType: String?, dpId: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
                
                self.shipments = shipments
                
                self.boxType = boxType
                
                self.fulfillmentType = fulfillmentType
                
                self.shipmentType = shipmentType
                
                self.orderType = orderType
                
                self.dpId = dpId
                
                self.dpOptions = dpOptions
                
                self.promise = promise
                
                self.fulfillmentId = fulfillmentId
                
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
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
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
                    orderType = try container.decode(String.self, forKey: .orderType)
                
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
                
                
                
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(ShipmentPromise.self, forKey: .promise)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encode(boxType, forKey: .boxType)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                
                
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                
                
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                
                
                
                try? container.encode(dpId, forKey: .dpId)
                
                
                
                
                try? container.encode(dpOptions, forKey: .dpOptions)
                
                
                
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        class CartShipmentsResponse: Codable {
            
            public var currency: CartCurrency?
            
            public var id: String?
            
            public var comment: String?
            
            public var gstin: String?
            
            public var shipments: [ShipmentResponse]?
            
            public var restrictCheckout: Bool?
            
            public var uid: String?
            
            public var error: Bool?
            
            public var deliveryChargeInfo: String?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var message: String?
            
            public var checkoutMode: String?
            
            public var isValid: Bool?
            
            public var couponText: String?
            
            public var lastModified: String?
            
            public var cartId: Int?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case id = "id"
                
                case comment = "comment"
                
                case gstin = "gstin"
                
                case shipments = "shipments"
                
                case restrictCheckout = "restrict_checkout"
                
                case uid = "uid"
                
                case error = "error"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case deliveryPromise = "delivery_promise"
                
                case message = "message"
                
                case checkoutMode = "checkout_mode"
                
                case isValid = "is_valid"
                
                case couponText = "coupon_text"
                
                case lastModified = "last_modified"
                
                case cartId = "cart_id"
                
                case breakupValues = "breakup_values"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, error: Bool?, gstin: String?, id: String?, isValid: Bool?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
                
                self.currency = currency
                
                self.id = id
                
                self.comment = comment
                
                self.gstin = gstin
                
                self.shipments = shipments
                
                self.restrictCheckout = restrictCheckout
                
                self.uid = uid
                
                self.error = error
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.deliveryPromise = deliveryPromise
                
                self.message = message
                
                self.checkoutMode = checkoutMode
                
                self.isValid = isValid
                
                self.couponText = couponText
                
                self.lastModified = lastModified
                
                self.cartId = cartId
                
                self.breakupValues = breakupValues
                
            }

            public func duplicate() -> CartShipmentsResponse {
                let dict = self.dictionary!
                let copy = CartShipmentsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
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
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
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
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
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
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                    couponText = try container.decode(String.self, forKey: .couponText)
                
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
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
            }
            
        }
        
        /*
            Model: StaffCheckout
            Used By: Cart
        */
        class StaffCheckout: Codable {
            
            public var firstName: String
            
            public var lastName: String
            
            public var user: String
            
            public var id: String
            

            public enum CodingKeys: String, CodingKey {
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case user = "user"
                
                case id = "_id"
                
            }

            public init(firstName: String, lastName: String, user: String, id: String) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.user = user
                
                self.id = id
                
            }

            public func duplicate() -> StaffCheckout {
                let dict = self.dictionary!
                let copy = StaffCheckout(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                lastName = try container.decode(String.self, forKey: .lastName)
                
                
                
                
                user = try container.decode(String.self, forKey: .user)
                
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutDetailRequest
            Used By: Cart
        */
        class CartCheckoutDetailRequest: Codable {
            
            public var paymentMode: String
            
            public var paymentAutoConfirm: Bool?
            
            public var billingAddressId: String?
            
            public var deliveryAddress: [String: Any]?
            
            public var callbackUrl: String?
            
            public var meta: [String: Any]?
            
            public var addressId: String?
            
            public var orderingStore: Int?
            
            public var merchantCode: String?
            
            public var paymentParams: [String: Any]?
            
            public var billingAddress: [String: Any]?
            
            public var staff: StaffCheckout?
            
            public var aggregator: String?
            
            public var extraMeta: [String: Any]?
            
            public var paymentIdentifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentMode = "payment_mode"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case billingAddressId = "billing_address_id"
                
                case deliveryAddress = "delivery_address"
                
                case callbackUrl = "callback_url"
                
                case meta = "meta"
                
                case addressId = "address_id"
                
                case orderingStore = "ordering_store"
                
                case merchantCode = "merchant_code"
                
                case paymentParams = "payment_params"
                
                case billingAddress = "billing_address"
                
                case staff = "staff"
                
                case aggregator = "aggregator"
                
                case extraMeta = "extra_meta"
                
                case paymentIdentifier = "payment_identifier"
                
            }

            public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: StaffCheckout?) {
                
                self.paymentMode = paymentMode
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.billingAddressId = billingAddressId
                
                self.deliveryAddress = deliveryAddress
                
                self.callbackUrl = callbackUrl
                
                self.meta = meta
                
                self.addressId = addressId
                
                self.orderingStore = orderingStore
                
                self.merchantCode = merchantCode
                
                self.paymentParams = paymentParams
                
                self.billingAddress = billingAddress
                
                self.staff = staff
                
                self.aggregator = aggregator
                
                self.extraMeta = extraMeta
                
                self.paymentIdentifier = paymentIdentifier
                
            }

            public func duplicate() -> CartCheckoutDetailRequest {
                let dict = self.dictionary!
                let copy = CartCheckoutDetailRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
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
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
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
                    addressId = try container.decode(String.self, forKey: .addressId)
                
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
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
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
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
                
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                
                
                
                try? container.encode(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encode(orderingStore, forKey: .orderingStore)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(paymentParams, forKey: .paymentParams)
                
                
                
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                
                
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        class CheckCart: Codable {
            
            public var id: String?
            
            public var comment: String?
            
            public var userType: String?
            
            public var codAvailable: Bool?
            
            public var restrictCheckout: Bool?
            
            public var deliveryChargeOrderValue: Int?
            
            public var storeCode: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var message: String?
            
            public var checkoutMode: String?
            
            public var success: Bool?
            
            public var isValid: Bool?
            
            public var lastModified: String?
            
            public var codMessage: String?
            
            public var breakupValues: CartBreakup?
            
            public var currency: CartCurrency?
            
            public var gstin: String?
            
            public var storeEmps: [[String: Any]]?
            
            public var deliveryCharges: Int?
            
            public var uid: String?
            
            public var orderId: String?
            
            public var deliveryChargeInfo: String?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var couponText: String?
            
            public var codCharges: Int?
            
            public var cartId: Int?
            
            public var errorMessage: String?
            
            public var items: [CartProductInfo]?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case comment = "comment"
                
                case userType = "user_type"
                
                case codAvailable = "cod_available"
                
                case restrictCheckout = "restrict_checkout"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case storeCode = "store_code"
                
                case deliveryPromise = "delivery_promise"
                
                case message = "message"
                
                case checkoutMode = "checkout_mode"
                
                case success = "success"
                
                case isValid = "is_valid"
                
                case lastModified = "last_modified"
                
                case codMessage = "cod_message"
                
                case breakupValues = "breakup_values"
                
                case currency = "currency"
                
                case gstin = "gstin"
                
                case storeEmps = "store_emps"
                
                case deliveryCharges = "delivery_charges"
                
                case uid = "uid"
                
                case orderId = "order_id"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case couponText = "coupon_text"
                
                case codCharges = "cod_charges"
                
                case cartId = "cart_id"
                
                case errorMessage = "error_message"
                
                case items = "items"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
                
                self.id = id
                
                self.comment = comment
                
                self.userType = userType
                
                self.codAvailable = codAvailable
                
                self.restrictCheckout = restrictCheckout
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.storeCode = storeCode
                
                self.deliveryPromise = deliveryPromise
                
                self.message = message
                
                self.checkoutMode = checkoutMode
                
                self.success = success
                
                self.isValid = isValid
                
                self.lastModified = lastModified
                
                self.codMessage = codMessage
                
                self.breakupValues = breakupValues
                
                self.currency = currency
                
                self.gstin = gstin
                
                self.storeEmps = storeEmps
                
                self.deliveryCharges = deliveryCharges
                
                self.uid = uid
                
                self.orderId = orderId
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.couponText = couponText
                
                self.codCharges = codCharges
                
                self.cartId = cartId
                
                self.errorMessage = errorMessage
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    userType = try container.decode(String.self, forKey: .userType)
                
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
                    deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
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
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
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
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
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
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                
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
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
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
                    storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
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
                    couponText = try container.decode(String.self, forKey: .couponText)
                
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
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
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
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                
                
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutResponse
            Used By: Cart
        */
        class CartCheckoutResponse: Codable {
            
            public var paymentConfirmUrl: String?
            
            public var message: String?
            
            public var success: Bool?
            
            public var callbackUrl: String?
            
            public var appInterceptUrl: String?
            
            public var orderId: String?
            
            public var data: [String: Any]?
            
            public var cart: CheckCart?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentConfirmUrl = "payment_confirm_url"
                
                case message = "message"
                
                case success = "success"
                
                case callbackUrl = "callback_url"
                
                case appInterceptUrl = "app_intercept_url"
                
                case orderId = "order_id"
                
                case data = "data"
                
                case cart = "cart"
                
            }

            public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, paymentConfirmUrl: String?, success: Bool?) {
                
                self.paymentConfirmUrl = paymentConfirmUrl
                
                self.message = message
                
                self.success = success
                
                self.callbackUrl = callbackUrl
                
                self.appInterceptUrl = appInterceptUrl
                
                self.orderId = orderId
                
                self.data = data
                
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
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
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
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                
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
                    data = try container.decode([String: Any].self, forKey: .data)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        class CartMetaRequest: Codable {
            
            public var checkoutMode: String?
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var comment: String?
            
            public var gstin: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case checkoutMode = "checkout_mode"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case comment = "comment"
                
                case gstin = "gstin"
                
            }

            public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
                
                self.checkoutMode = checkoutMode
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.comment = comment
                
                self.gstin = gstin
                
            }

            public func duplicate() -> CartMetaRequest {
                let dict = self.dictionary!
                let copy = CartMetaRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
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
            
            public var source: [String: Any]?
            
            public var user: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var token: String?
            
            public var createdOn: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
                case user = "user"
                
                case meta = "meta"
                
                case token = "token"
                
                case createdOn = "created_on"
                
            }

            public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
                
                self.source = source
                
                self.user = user
                
                self.meta = meta
                
                self.token = token
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        class SharedCart: Codable {
            
            public var currency: CartCurrency?
            
            public var id: String?
            
            public var comment: String?
            
            public var gstin: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var message: String?
            
            public var checkoutMode: String?
            
            public var isValid: Bool?
            
            public var couponText: String?
            
            public var cartId: Int?
            
            public var lastModified: String?
            
            public var uid: String?
            
            public var restrictCheckout: Bool?
            
            public var items: [CartProductInfo]?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case id = "id"
                
                case comment = "comment"
                
                case gstin = "gstin"
                
                case deliveryPromise = "delivery_promise"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case sharedCartDetails = "shared_cart_details"
                
                case message = "message"
                
                case checkoutMode = "checkout_mode"
                
                case isValid = "is_valid"
                
                case couponText = "coupon_text"
                
                case cartId = "cart_id"
                
                case lastModified = "last_modified"
                
                case uid = "uid"
                
                case restrictCheckout = "restrict_checkout"
                
                case items = "items"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
                
                self.currency = currency
                
                self.id = id
                
                self.comment = comment
                
                self.gstin = gstin
                
                self.deliveryPromise = deliveryPromise
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.sharedCartDetails = sharedCartDetails
                
                self.message = message
                
                self.checkoutMode = checkoutMode
                
                self.isValid = isValid
                
                self.couponText = couponText
                
                self.cartId = cartId
                
                self.lastModified = lastModified
                
                self.uid = uid
                
                self.restrictCheckout = restrictCheckout
                
                self.items = items
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
            }

            public func duplicate() -> SharedCart {
                let dict = self.dictionary!
                let copy = SharedCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
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
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
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
                    sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
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
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                    couponText = try container.decode(String.self, forKey: .couponText)
                
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
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
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
                
                case error = "error"
                
                case cart = "cart"
                
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
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(SharedCart.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
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
            
            public var id: String?
            
            public var description: String?
            
            public var offerText: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case description = "description"
                
                case offerText = "offer_text"
                
            }

            public init(description: String?, id: String?, offerText: String?) {
                
                self.id = id
                
                self.description = description
                
                self.offerText = offerText
                
            }

            public func duplicate() -> PromotionOffer {
                let dict = self.dictionary!
                let copy = PromotionOffer(dictionary: dict)!
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
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
            Model: LadderPrice
            Used By: Cart
        */
        class LadderPrice: Codable {
            
            public var currencyCode: String?
            
            public var effective: Int?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            
            public var offerPrice: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencyCode = "currency_code"
                
                case effective = "effective"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case offerPrice = "offer_price"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?, offerPrice: Double?) {
                
                self.currencyCode = currencyCode
                
                self.effective = effective
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.offerPrice = offerPrice
                
            }

            public func duplicate() -> LadderPrice {
                let dict = self.dictionary!
                let copy = LadderPrice(dictionary: dict)!
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
                    effective = try container.decode(Int.self, forKey: .effective)
                
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
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerPrice = try container.decode(Double.self, forKey: .offerPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(offerPrice, forKey: .offerPrice)
                
                
            }
            
        }
        
        /*
            Model: LadderOfferItem
            Used By: Cart
        */
        class LadderOfferItem: Codable {
            
            public var minQuantity: Int?
            
            public var maxQuantity: Int?
            
            public var type: String?
            
            public var price: LadderPrice?
            
            public var margin: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case minQuantity = "min_quantity"
                
                case maxQuantity = "max_quantity"
                
                case type = "type"
                
                case price = "price"
                
                case margin = "margin"
                
            }

            public init(margin: Int?, maxQuantity: Int?, minQuantity: Int?, price: LadderPrice?, type: String?) {
                
                self.minQuantity = minQuantity
                
                self.maxQuantity = maxQuantity
                
                self.type = type
                
                self.price = price
                
                self.margin = margin
                
            }

            public func duplicate() -> LadderOfferItem {
                let dict = self.dictionary!
                let copy = LadderOfferItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
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
                    price = try container.decode(LadderPrice.self, forKey: .price)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
                
                
                
                
                try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
            }
            
        }
        
        /*
            Model: LadderPriceOffer
            Used By: Cart
        */
        class LadderPriceOffer: Codable {
            
            public var offerPrices: [LadderOfferItem]?
            
            public var id: String?
            
            public var description: String?
            
            public var offerText: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case offerPrices = "offer_prices"
                
                case id = "id"
                
                case description = "description"
                
                case offerText = "offer_text"
                
            }

            public init(description: String?, id: String?, offerPrices: [LadderOfferItem]?, offerText: String?) {
                
                self.offerPrices = offerPrices
                
                self.id = id
                
                self.description = description
                
                self.offerText = offerText
                
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
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
            }
            
        }
        
        /*
            Model: LadderPriceOffers
            Used By: Cart
        */
        class LadderPriceOffers: Codable {
            
            public var currency: CurrencyInfo?
            
            public var availableOffers: [LadderPriceOffer]?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case availableOffers = "available_offers"
                
            }

            public init(availableOffers: [LadderPriceOffer]?, currency: CurrencyInfo?) {
                
                self.currency = currency
                
                self.availableOffers = availableOffers
                
            }

            public func duplicate() -> LadderPriceOffers {
                let dict = self.dictionary!
                let copy = LadderPriceOffers(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currency = try container.decode(CurrencyInfo.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableOffers = try container.decode([LadderPriceOffer].self, forKey: .availableOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)
                
                
            }
            
        }
        
}
