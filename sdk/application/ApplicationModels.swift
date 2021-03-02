public extension ApplicationClient {
    
    
    
    
    /*
        Model: CartCurrency
        Used By: Cart
    */
    struct CartCurrency: Codable {
        
        public var code: String?
        
        public var symbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case symbol = "symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            symbol = try? container.decode(String.self, forKey: .symbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(symbol, forKey: .symbol)
            
        }
        
    }
    
    /*
        Model: PaymentFlow
        Used By: Cart
    */
    struct PaymentFlow: Codable {
        
        public var data: [String: Any]?
        
        public var paymentFlow: String?
        
        public var apiLink: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case paymentFlow = "payment_flow"
            
            case apiLink = "api_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
            paymentFlow = try? container.decode(String.self, forKey: .paymentFlow)
            
            apiLink = try? container.decode(String.self, forKey: .apiLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(paymentFlow, forKey: .paymentFlow)
            
            try? container.encodeIfPresent(apiLink, forKey: .apiLink)
            
        }
        
    }
    
    /*
        Model: PaymentFlows
        Used By: Cart
    */
    struct PaymentFlows: Codable {
        
        public var simpl: PaymentFlow?
        
        public var razorpay: PaymentFlow?
        
        public var fynd: PaymentFlow?
        
        public var upiRazorpay: PaymentFlow?
        
        public var juspay: PaymentFlow?
        

        public enum CodingKeys: String, CodingKey {
            
            case simpl = "Simpl"
            
            case razorpay = "Razorpay"
            
            case fynd = "Fynd"
            
            case upiRazorpay = "UPI_Razorpay"
            
            case juspay = "Juspay"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            simpl = try? container.decode(PaymentFlow.self, forKey: .simpl)
            
            razorpay = try? container.decode(PaymentFlow.self, forKey: .razorpay)
            
            fynd = try? container.decode(PaymentFlow.self, forKey: .fynd)
            
            upiRazorpay = try? container.decode(PaymentFlow.self, forKey: .upiRazorpay)
            
            juspay = try? container.decode(PaymentFlow.self, forKey: .juspay)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(fynd, forKey: .fynd)
            
            try? container.encodeIfPresent(upiRazorpay, forKey: .upiRazorpay)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
        }
        
    }
    
    /*
        Model: PaymentOption
        Used By: Cart
    */
    struct PaymentOption: Codable {
        
        public var displayPriority: Int?
        
        public var displayName: String?
        
        public var paymentModeId: Int?
        
        public var name: String?
        
        public var list: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayPriority = "display_priority"
            
            case displayName = "display_name"
            
            case paymentModeId = "payment_mode_id"
            
            case name = "name"
            
            case list = "list"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
            
            displayName = try? container.decode(String.self, forKey: .displayName)
            
            paymentModeId = try? container.decode(Int.self, forKey: .paymentModeId)
            
            name = try? container.decode(String.self, forKey: .name)
            
            list = try? container.decode([[String: Any]].self, forKey: .list)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(list, forKey: .list)
            
        }
        
    }
    
    /*
        Model: PaymentOptions
        Used By: Cart
    */
    struct PaymentOptions: Codable {
        
        public var paymentFlows: PaymentFlows?
        
        public var paymentOption: [PaymentOption]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentFlows = "payment_flows"
            
            case paymentOption = "payment_option"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentFlows = try? container.decode(PaymentFlows.self, forKey: .paymentFlows)
            
            paymentOption = try? container.decode([PaymentOption].self, forKey: .paymentOption)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Cart
    */
    struct CouponBreakup: Codable {
        
        public var isApplied: Bool?
        
        public var message: String?
        
        public var type: String?
        
        public var code: String?
        
        public var value: Double?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case message = "message"
            
            case type = "type"
            
            case code = "code"
            
            case value = "value"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
            type = try? container.decode(String.self, forKey: .type)
            
            code = try? container.decode(String.self, forKey: .code)
            
            value = try? container.decode(Double.self, forKey: .value)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: RawBreakup
        Used By: Cart
    */
    struct RawBreakup: Codable {
        
        public var coupon: Double?
        
        public var deliveryCharge: Double?
        
        public var total: Double?
        
        public var subtotal: Double?
        
        public var fyndCash: Double?
        
        public var youSaved: Double?
        
        public var codCharge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case coupon = "coupon"
            
            case deliveryCharge = "delivery_charge"
            
            case total = "total"
            
            case subtotal = "subtotal"
            
            case fyndCash = "fynd_cash"
            
            case youSaved = "you_saved"
            
            case codCharge = "cod_charge"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
        }
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: Cart
    */
    struct DisplayBreakup: Codable {
        
        public var value: Int?
        
        public var display: String?
        
        public var key: String?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case display = "display"
            
            case key = "key"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            display = try? container.decode(String.self, forKey: .display)
            
            key = try? container.decode(String.self, forKey: .key)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */
    struct LoyaltyPoints: Codable {
        
        public var isApplied: Bool?
        
        public var total: Double?
        
        public var applicable: Double?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case total = "total"
            
            case applicable = "applicable"
            
            case description = "description"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            applicable = try? container.decode(Double.self, forKey: .applicable)
            
            description = try? container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Cart
    */
    struct CartBreakup: Codable {
        
        public var coupon: CouponBreakup?
        
        public var raw: RawBreakup?
        
        public var display: DisplayBreakup?
        
        public var loyaltyPoints: LoyaltyPoints?
        

        public enum CodingKeys: String, CodingKey {
            
            case coupon = "coupon"
            
            case raw = "raw"
            
            case display = "display"
            
            case loyaltyPoints = "loyalty_points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            coupon = try? container.decode(CouponBreakup.self, forKey: .coupon)
            
            raw = try? container.decode(RawBreakup.self, forKey: .raw)
            
            display = try? container.decode(DisplayBreakup.self, forKey: .display)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
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
        Model: BaseInfo
        Used By: Cart
    */
    struct BaseInfo: Codable {
        
        public var name: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: Image
        Used By: Cart
    */
    struct Image: Codable {
        
        public var secureUrl: String?
        
        public var aspectRatio: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case secureUrl = "secure_url"
            
            case aspectRatio = "aspect_ratio"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            secureUrl = try? container.decode(String.self, forKey: .secureUrl)
            
            aspectRatio = try? container.decode(String.self, forKey: .aspectRatio)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Cart
    */
    struct CategoryInfo: Codable {
        
        public var name: Int?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(Int.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
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
    struct ActionQuery: Codable {
        
        public var productSlug: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case productSlug = "product_slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            productSlug = try? container.decode([String].self, forKey: .productSlug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
            
        }
        
    }
    
    /*
        Model: Action
        Used By: Cart
    */
    struct Action: Codable {
        
        public var query: ActionQuery?
        
        public var url: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case url = "url"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            query = try? container.decode(ActionQuery.self, forKey: .query)
            
            url = try? container.decode(String.self, forKey: .url)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Product
        Used By: Cart
    */
    struct Product: Codable {
        
        public var brand: BaseInfo?
        
        public var type: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var images: [Image]?
        
        public var categories: [CategoryInfo]?
        
        public var action: Action?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case type = "type"
            
            case name = "name"
            
            case slug = "slug"
            
            case images = "images"
            
            case categories = "categories"
            
            case action = "action"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            brand = try? container.decode(BaseInfo.self, forKey: .brand)
            
            type = try? container.decode(String.self, forKey: .type)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            images = try? container.decode([Image].self, forKey: .images)
            
            categories = try? container.decode([CategoryInfo].self, forKey: .categories)
            
            action = try? container.decode(Action.self, forKey: .action)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ProductAvailability
        Used By: Cart
    */
    struct ProductAvailability: Codable {
        
        public var sizes: [String]?
        
        public var isValid: Bool?
        
        public var otherStoreQuantity: Int?
        
        public var outOfStock: Bool?
        
        public var deliverable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case isValid = "is_valid"
            
            case otherStoreQuantity = "other_store_quantity"
            
            case outOfStock = "out_of_stock"
            
            case deliverable = "deliverable"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sizes = try? container.decode([String].self, forKey: .sizes)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            otherStoreQuantity = try? container.decode(Int.self, forKey: .otherStoreQuantity)
            
            outOfStock = try? container.decode(Bool.self, forKey: .outOfStock)
            
            deliverable = try? container.decode(Bool.self, forKey: .deliverable)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Cart
    */
    struct ProductPrice: Codable {
        
        public var effective: Double?
        
        public var addOn: Double?
        
        public var marked: Double?
        
        public var currencyCode: String?
        
        public var selling: Double?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case addOn = "add_on"
            
            case marked = "marked"
            
            case currencyCode = "currency_code"
            
            case selling = "selling"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            effective = try? container.decode(Double.self, forKey: .effective)
            
            addOn = try? container.decode(Double.self, forKey: .addOn)
            
            marked = try? container.decode(Double.self, forKey: .marked)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            selling = try? container.decode(Double.self, forKey: .selling)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Cart
    */
    struct ProductPriceInfo: Codable {
        
        public var converted: ProductPrice?
        
        public var base: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            converted = try? container.decode(ProductPrice.self, forKey: .converted)
            
            base = try? container.decode(ProductPrice.self, forKey: .base)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            try? container.encodeIfPresent(base, forKey: .base)
            
        }
        
    }
    
    /*
        Model: CartProductInfo
        Used By: Cart
    */
    struct CartProductInfo: Codable {
        
        public var message: String?
        
        public var bulkOffer: String?
        
        public var article: String?
        
        public var key: String?
        
        public var quantity: Int?
        
        public var product: Product?
        
        public var discount: String?
        
        public var availability: ProductAvailability?
        
        public var couponMessage: String?
        
        public var price: ProductPriceInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case bulkOffer = "bulk_offer"
            
            case article = "article"
            
            case key = "key"
            
            case quantity = "quantity"
            
            case product = "product"
            
            case discount = "discount"
            
            case availability = "availability"
            
            case couponMessage = "coupon_message"
            
            case price = "price"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            bulkOffer = try? container.decode(String.self, forKey: .bulkOffer)
            
            article = try? container.decode(String.self, forKey: .article)
            
            key = try? container.decode(String.self, forKey: .key)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            product = try? container.decode(Product.self, forKey: .product)
            
            discount = try? container.decode(String.self, forKey: .discount)
            
            availability = try? container.decode(ProductAvailability.self, forKey: .availability)
            
            couponMessage = try? container.decode(String.self, forKey: .couponMessage)
            
            price = try? container.decode(ProductPriceInfo.self, forKey: .price)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
        }
        
    }
    
    /*
        Model: CartResponse
        Used By: Cart
    */
    struct CartResponse: Codable {
        
        public var couponText: String?
        
        public var uid: String?
        
        public var currency: CartCurrency?
        
        public var isValid: Bool?
        
        public var deliveryChargeInfo: [String]?
        
        public var restrictCheckout: Bool?
        
        public var gstin: String?
        
        public var cartId: Int?
        
        public var paymentOptions: PaymentOptions?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var items: [CartProductInfo]?
        
        public var checkoutMode: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponText = "coupon_text"
            
            case uid = "uid"
            
            case currency = "currency"
            
            case isValid = "is_valid"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case cartId = "cart_id"
            
            case paymentOptions = "payment_options"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case items = "items"
            
            case checkoutMode = "checkout_mode"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddProductCart
        Used By: Cart
    */
    struct AddProductCart: Codable {
        
        public var storeId: Int?
        
        public var articleId: String?
        
        public var itemId: Int?
        
        public var display: String?
        
        public var itemSize: String?
        
        public var quantity: Int?
        
        public var sellerId: Int?
        
        public var pos: Bool?
        
        public var articleAssignment: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case articleId = "article_id"
            
            case itemId = "item_id"
            
            case display = "display"
            
            case itemSize = "item_size"
            
            case quantity = "quantity"
            
            case sellerId = "seller_id"
            
            case pos = "pos"
            
            case articleAssignment = "article_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            storeId = try? container.decode(Int.self, forKey: .storeId)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            display = try? container.decode(String.self, forKey: .display)
            
            itemSize = try? container.decode(String.self, forKey: .itemSize)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            sellerId = try? container.decode(Int.self, forKey: .sellerId)
            
            pos = try? container.decode(Bool.self, forKey: .pos)
            
            articleAssignment = try? container.decode([String: Any].self, forKey: .articleAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
        }
        
    }
    
    /*
        Model: AddCartRequest
        Used By: Cart
    */
    struct AddCartRequest: Codable {
        
        public var items: [AddProductCart]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AddProductCart].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: AddCartResponse
        Used By: Cart
    */
    struct AddCartResponse: Codable {
        
        public var partial: Bool?
        
        public var success: String?
        
        public var cart: CartResponse?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case partial = "partial"
            
            case success = "success"
            
            case cart = "cart"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            partial = try? container.decode(Bool.self, forKey: .partial)
            
            success = try? container.decode(String.self, forKey: .success)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: UpdateProductCart
        Used By: Cart
    */
    struct UpdateProductCart: Codable {
        
        public var articleId: String?
        
        public var itemId: Int?
        
        public var itemSize: Int?
        
        public var quantity: Int?
        
        public var itemIndex: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleId = "article_id"
            
            case itemId = "item_id"
            
            case itemSize = "item_size"
            
            case quantity = "quantity"
            
            case itemIndex = "item_index"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articleId = try? container.decode(String.self, forKey: .articleId)
            
            itemId = try? container.decode(Int.self, forKey: .itemId)
            
            itemSize = try? container.decode(Int.self, forKey: .itemSize)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            itemIndex = try? container.decode(Int.self, forKey: .itemIndex)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
            
        }
        
    }
    
    /*
        Model: UpdateCartRequest
        Used By: Cart
    */
    struct UpdateCartRequest: Codable {
        
        public var items: [UpdateProductCart]?
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case operation = "operation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([UpdateProductCart].self, forKey: .items)
            
            operation = try container.decode(String.self, forKey: .operation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
        }
        
    }
    
    /*
        Model: UpdateCartResponse
        Used By: Cart
    */
    struct UpdateCartResponse: Codable {
        
        public var success: String?
        
        public var cart: CartResponse?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case cart = "cart"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(String.self, forKey: .success)
            
            cart = try? container.decode(CartResponse.self, forKey: .cart)
            
            message = try? container.decode(String.self, forKey: .message)
            
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
    struct CartItemCountResponse: Codable {
        
        public var userCartItemsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case userCartItemsCount = "user_cart_items_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userCartItemsCount = try? container.decode(Int.self, forKey: .userCartItemsCount)
            
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
    struct PageCoupon: Codable {
        
        public var hasNext: Bool?
        
        public var current: Int?
        
        public var hasPrevious: Bool?
        
        public var total: Int?
        
        public var totalItemCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case current = "current"
            
            case hasPrevious = "has_previous"
            
            case total = "total"
            
            case totalItemCount = "total_item_count"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            total = try? container.decode(Int.self, forKey: .total)
            
            totalItemCount = try? container.decode(Int.self, forKey: .totalItemCount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
            
        }
        
    }
    
    /*
        Model: Coupon
        Used By: Cart
    */
    struct Coupon: Codable {
        
        public var title: String?
        
        public var uid: Int?
        
        public var isApplied: Bool?
        
        public var couponValue: Double?
        
        public var isApplicable: Bool?
        
        public var maxDiscountValue: Double?
        
        public var minimumCartValue: Double?
        
        public var expiresOn: String?
        
        public var couponCode: String?
        
        public var subTitle: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case uid = "uid"
            
            case isApplied = "is_applied"
            
            case couponValue = "coupon_value"
            
            case isApplicable = "is_applicable"
            
            case maxDiscountValue = "max_discount_value"
            
            case minimumCartValue = "minimum_cart_value"
            
            case expiresOn = "expires_on"
            
            case couponCode = "coupon_code"
            
            case subTitle = "sub_title"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            couponValue = try? container.decode(Double.self, forKey: .couponValue)
            
            isApplicable = try? container.decode(Bool.self, forKey: .isApplicable)
            
            maxDiscountValue = try? container.decode(Double.self, forKey: .maxDiscountValue)
            
            minimumCartValue = try? container.decode(Double.self, forKey: .minimumCartValue)
            
            expiresOn = try? container.decode(String.self, forKey: .expiresOn)
            
            couponCode = try? container.decode(String.self, forKey: .couponCode)
            
            subTitle = try? container.decode(String.self, forKey: .subTitle)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: GetCouponResponse
        Used By: Cart
    */
    struct GetCouponResponse: Codable {
        
        public var page: PageCoupon?
        
        public var availableCouponList: [Coupon]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case availableCouponList = "available_coupon_list"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            page = try? container.decode(PageCoupon.self, forKey: .page)
            
            availableCouponList = try? container.decode([Coupon].self, forKey: .availableCouponList)
            
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
    struct ApplyCouponRequest: Codable {
        
        public var couponCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case couponCode = "coupon_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponCode = try container.decode(String.self, forKey: .couponCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
        }
        
    }
    
    /*
        Model: RawCartCoupon
        Used By: Cart
    */
    struct RawCartCoupon: Codable {
        
        public var mrpTotal: Double?
        
        public var vog: Double?
        
        public var convenienceFee: Double?
        
        public var gstCharges: Double?
        
        public var coupon: Double?
        
        public var deliveryCharge: Double?
        
        public var discount: Double?
        
        public var total: Double?
        
        public var subtotal: Double?
        
        public var fyndCash: Double?
        
        public var youSaved: Double?
        
        public var codCharge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case mrpTotal = "mrp_total"
            
            case vog = "vog"
            
            case convenienceFee = "convenience_fee"
            
            case gstCharges = "gst_charges"
            
            case coupon = "coupon"
            
            case deliveryCharge = "delivery_charge"
            
            case discount = "discount"
            
            case total = "total"
            
            case subtotal = "subtotal"
            
            case fyndCash = "fynd_cash"
            
            case youSaved = "you_saved"
            
            case codCharge = "cod_charge"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mrpTotal = try? container.decode(Double.self, forKey: .mrpTotal)
            
            vog = try? container.decode(Double.self, forKey: .vog)
            
            convenienceFee = try? container.decode(Double.self, forKey: .convenienceFee)
            
            gstCharges = try? container.decode(Double.self, forKey: .gstCharges)
            
            coupon = try? container.decode(Double.self, forKey: .coupon)
            
            deliveryCharge = try? container.decode(Double.self, forKey: .deliveryCharge)
            
            discount = try? container.decode(Double.self, forKey: .discount)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            subtotal = try? container.decode(Double.self, forKey: .subtotal)
            
            fyndCash = try? container.decode(Double.self, forKey: .fyndCash)
            
            youSaved = try? container.decode(Double.self, forKey: .youSaved)
            
            codCharge = try? container.decode(Double.self, forKey: .codCharge)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
        }
        
    }
    
    /*
        Model: CartCoupon
        Used By: Cart
    */
    struct CartCoupon: Codable {
        
        public var isApplied: Bool?
        
        public var message: String?
        
        public var type: String?
        
        public var code: String?
        
        public var value: Int?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case message = "message"
            
            case type = "type"
            
            case code = "code"
            
            case value = "value"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isApplied = try? container.decode(Bool.self, forKey: .isApplied)
            
            message = try? container.decode(String.self, forKey: .message)
            
            type = try? container.decode(String.self, forKey: .type)
            
            code = try? container.decode(String.self, forKey: .code)
            
            value = try? container.decode(Int.self, forKey: .value)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: SaveCoupon
        Used By: Cart
    */
    struct SaveCoupon: Codable {
        
        public var raw: RawCartCoupon?
        
        public var coupon: CartCoupon?
        
        public var display: [String]?
        
        public var loyaltyPoints: LoyaltyPoints?
        

        public enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case coupon = "coupon"
            
            case display = "display"
            
            case loyaltyPoints = "loyalty_points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            raw = try? container.decode(RawCartCoupon.self, forKey: .raw)
            
            coupon = try? container.decode(CartCoupon.self, forKey: .coupon)
            
            display = try? container.decode([String].self, forKey: .display)
            
            loyaltyPoints = try? container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
        }
        
    }
    
    /*
        Model: SaveCouponResponse
        Used By: Cart
    */
    struct SaveCouponResponse: Codable {
        
        public var couponText: String?
        
        public var uid: Int?
        
        public var isValid: Bool?
        
        public var deliveryChargeInfo: String?
        
        public var restrictCheckout: Bool?
        
        public var gstin: String?
        
        public var cartId: Int?
        
        public var lastModified: String?
        
        public var breakupValues: SaveCoupon?
        
        public var items: [String]?
        
        public var checkoutMode: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponText = "coupon_text"
            
            case uid = "uid"
            
            case isValid = "is_valid"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case cartId = "cart_id"
            
            case lastModified = "last_modified"
            
            case breakupValues = "breakup_values"
            
            case items = "items"
            
            case checkoutMode = "checkout_mode"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            deliveryChargeInfo = try? container.decode(String.self, forKey: .deliveryChargeInfo)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            breakupValues = try? container.decode(SaveCoupon.self, forKey: .breakupValues)
            
            items = try? container.decode([String].self, forKey: .items)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: OfferPrice
        Used By: Cart
    */
    struct OfferPrice: Codable {
        
        public var effective: Int?
        
        public var bulkEffective: Double?
        
        public var marked: Int?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case bulkEffective = "bulk_effective"
            
            case marked = "marked"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            effective = try? container.decode(Int.self, forKey: .effective)
            
            bulkEffective = try? container.decode(Double.self, forKey: .bulkEffective)
            
            marked = try? container.decode(Int.self, forKey: .marked)
            
            currencyCode = try? container.decode(String.self, forKey: .currencyCode)
            
            currencySymbol = try? container.decode(String.self, forKey: .currencySymbol)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
        }
        
    }
    
    /*
        Model: OfferItem
        Used By: Cart
    */
    struct OfferItem: Codable {
        
        public var autoApplied: Bool?
        
        public var quantity: Int?
        
        public var margin: Int?
        
        public var total: Double?
        
        public var price: OfferPrice?
        
        public var best: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case autoApplied = "auto_applied"
            
            case quantity = "quantity"
            
            case margin = "margin"
            
            case total = "total"
            
            case price = "price"
            
            case best = "best"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            autoApplied = try? container.decode(Bool.self, forKey: .autoApplied)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
            margin = try? container.decode(Int.self, forKey: .margin)
            
            total = try? container.decode(Double.self, forKey: .total)
            
            price = try? container.decode(OfferPrice.self, forKey: .price)
            
            best = try? container.decode(Bool.self, forKey: .best)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            try? container.encodeIfPresent(margin, forKey: .margin)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            try? container.encodeIfPresent(best, forKey: .best)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: OfferSeller
        Used By: Cart
    */
    struct OfferSeller: Codable {
        
        public var name: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
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
    struct BulkPriceOffer: Codable {
        
        public var offers: [OfferItem]?
        
        public var seller: OfferSeller?
        

        public enum CodingKeys: String, CodingKey {
            
            case offers = "offers"
            
            case seller = "seller"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            offers = try? container.decode([OfferItem].self, forKey: .offers)
            
            seller = try? container.decode(OfferSeller.self, forKey: .seller)
            
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
    struct BulkPriceResponse: Codable {
        
        public var data: [BulkPriceOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([BulkPriceOffer].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: GeoLocation
        Used By: Cart
    */
    struct GeoLocation: Codable {
        
        public var longitude: Double?
        
        public var latitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case longitude = "longitude"
            
            case latitude = "latitude"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
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
    struct Address: Codable {
        
        public var name: String?
        
        public var areaCode: String?
        
        public var email: String?
        
        public var address: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var countryCode: String?
        
        public var addressId: Int?
        
        public var checkoutMode: String?
        
        public var state: String?
        
        public var userId: String?
        
        public var geoLocation: GeoLocation?
        
        public var addressType: String?
        
        public var isDefaultAddress: Bool?
        
        public var city: String?
        
        public var isActive: Bool?
        
        public var uid: Int?
        
        public var country: String?
        
        public var meta: [String: Any]?
        
        public var phone: Int?
        
        public var areaCodeSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case areaCode = "area_code"
            
            case email = "email"
            
            case address = "address"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case countryCode = "country_code"
            
            case addressId = "address_id"
            
            case checkoutMode = "checkout_mode"
            
            case state = "state"
            
            case userId = "user_id"
            
            case geoLocation = "geo_location"
            
            case addressType = "address_type"
            
            case isDefaultAddress = "is_default_address"
            
            case city = "city"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
            case country = "country"
            
            case meta = "meta"
            
            case phone = "phone"
            
            case areaCodeSlug = "area_code_slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            areaCode = try? container.decode(String.self, forKey: .areaCode)
            
            email = try? container.decode(String.self, forKey: .email)
            
            address = try? container.decode(String.self, forKey: .address)
            
            area = try? container.decode(String.self, forKey: .area)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            state = try? container.decode(String.self, forKey: .state)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            geoLocation = try? container.decode(GeoLocation.self, forKey: .geoLocation)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            city = try? container.decode(String.self, forKey: .city)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            country = try? container.decode(String.self, forKey: .country)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            areaCodeSlug = try? container.decode(String.self, forKey: .areaCodeSlug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
        }
        
    }
    
    /*
        Model: GetAddressResponse
        Used By: Cart
    */
    struct GetAddressResponse: Codable {
        
        public var address: [Address]?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            address = try? container.decode([Address].self, forKey: .address)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
        }
        
    }
    
    /*
        Model: SaveAddressRequest
        Used By: Cart
    */
    struct SaveAddressRequest: Codable {
        
        public var phone: Int?
        
        public var area: String?
        
        public var name: String?
        
        public var addressType: String?
        
        public var email: String?
        
        public var landmark: String?
        
        public var isDefaultAddress: Bool?
        
        public var address: String?
        
        public var pincode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case area = "area"
            
            case name = "name"
            
            case addressType = "address_type"
            
            case email = "email"
            
            case landmark = "landmark"
            
            case isDefaultAddress = "is_default_address"
            
            case address = "address"
            
            case pincode = "pincode"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            area = try? container.decode(String.self, forKey: .area)
            
            name = try? container.decode(String.self, forKey: .name)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            email = try? container.decode(String.self, forKey: .email)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            address = try? container.decode(String.self, forKey: .address)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
        }
        
    }
    
    /*
        Model: SaveAddressResponse
        Used By: Cart
    */
    struct SaveAddressResponse: Codable {
        
        public var isDefaultAddress: Bool?
        
        public var addressId: Int?
        
        public var success: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefaultAddress = "is_default_address"
            
            case addressId = "address_id"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            success = try? container.decode(String.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: UpdateAddressRequest
        Used By: Cart
    */
    struct UpdateAddressRequest: Codable {
        
        public var phone: Int?
        
        public var area: String?
        
        public var name: String?
        
        public var addressType: String?
        
        public var email: String?
        
        public var landmark: String?
        
        public var isDefaultAddress: Bool?
        
        public var address: String?
        
        public var pincode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case area = "area"
            
            case name = "name"
            
            case addressType = "address_type"
            
            case email = "email"
            
            case landmark = "landmark"
            
            case isDefaultAddress = "is_default_address"
            
            case address = "address"
            
            case pincode = "pincode"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            phone = try? container.decode(Int.self, forKey: .phone)
            
            area = try? container.decode(String.self, forKey: .area)
            
            name = try? container.decode(String.self, forKey: .name)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            email = try? container.decode(String.self, forKey: .email)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            address = try? container.decode(String.self, forKey: .address)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
        }
        
    }
    
    /*
        Model: UpdateAddressResponse
        Used By: Cart
    */
    struct UpdateAddressResponse: Codable {
        
        public var isDefaultAddress: Bool?
        
        public var addressId: Int?
        
        public var success: Bool?
        
        public var isUpdated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefaultAddress = "is_default_address"
            
            case addressId = "address_id"
            
            case success = "success"
            
            case isUpdated = "is_updated"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isDefaultAddress = try? container.decode(Bool.self, forKey: .isDefaultAddress)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            isUpdated = try? container.decode(Bool.self, forKey: .isUpdated)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
            
        }
        
    }
    
    /*
        Model: DeleteAddressResponse
        Used By: Cart
    */
    struct DeleteAddressResponse: Codable {
        
        public var addressId: Int?
        
        public var isDeleted: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressId = "address_id"
            
            case isDeleted = "is_deleted"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            isDeleted = try? container.decode(Bool.self, forKey: .isDeleted)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
        }
        
    }
    
    /*
        Model: SelectCartAddressRequest
        Used By: Cart
    */
    struct SelectCartAddressRequest: Codable {
        
        public var addressId: String?
        
        public var billingAddressId: Int?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressId = "address_id"
            
            case billingAddressId = "billing_address_id"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            addressId = try? container.decode(String.self, forKey: .addressId)
            
            billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: UpdateCartPaymentRequest
        Used By: Cart
    */
    struct UpdateCartPaymentRequest: Codable {
        
        public var uid: Int?
        
        public var aggregatorName: String?
        
        public var paymentMode: String?
        
        public var paymentIdentifier: String?
        
        public var addressId: Int?
        
        public var merchantCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case aggregatorName = "aggregator_name"
            
            case paymentMode = "payment_mode"
            
            case paymentIdentifier = "payment_identifier"
            
            case addressId = "address_id"
            
            case merchantCode = "merchant_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
            
            paymentMode = try? container.decode(String.self, forKey: .paymentMode)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
        }
        
    }
    
    /*
        Model: ShipmentResponse
        Used By: Cart
    */
    struct ShipmentResponse: Codable {
        
        public var dpOptions: [String: Any]?
        
        public var boxType: String?
        
        public var promise: String?
        
        public var shipments: Int?
        
        public var dpId: Int?
        
        public var shipmentType: String?
        
        public var items: [CartProductInfo]?
        
        public var fulfillmentId: Int?
        
        public var fulfillmentType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpOptions = "dp_options"
            
            case boxType = "box_type"
            
            case promise = "promise"
            
            case shipments = "shipments"
            
            case dpId = "dp_id"
            
            case shipmentType = "shipment_type"
            
            case items = "items"
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentType = "fulfillment_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            dpOptions = try? container.decode([String: Any].self, forKey: .dpOptions)
            
            boxType = try? container.decode(String.self, forKey: .boxType)
            
            promise = try? container.decode(String.self, forKey: .promise)
            
            shipments = try? container.decode(Int.self, forKey: .shipments)
            
            dpId = try? container.decode(Int.self, forKey: .dpId)
            
            shipmentType = try? container.decode(String.self, forKey: .shipmentType)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            fulfillmentId = try? container.decode(Int.self, forKey: .fulfillmentId)
            
            fulfillmentType = try? container.decode(String.self, forKey: .fulfillmentType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            try? container.encodeIfPresent(boxType, forKey: .boxType)
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
        }
        
    }
    
    /*
        Model: CartShipmentsResponse
        Used By: Cart
    */
    struct CartShipmentsResponse: Codable {
        
        public var couponText: String?
        
        public var uid: String?
        
        public var currency: CartCurrency?
        
        public var isValid: Bool?
        
        public var deliveryChargeInfo: [String]?
        
        public var restrictCheckout: Bool?
        
        public var gstin: String?
        
        public var cartId: Int?
        
        public var shipments: [ShipmentResponse]?
        
        public var paymentOptions: PaymentOptions?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var checkoutMode: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponText = "coupon_text"
            
            case uid = "uid"
            
            case currency = "currency"
            
            case isValid = "is_valid"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case cartId = "cart_id"
            
            case shipments = "shipments"
            
            case paymentOptions = "payment_options"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case checkoutMode = "checkout_mode"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            shipments = try? container.decode([ShipmentResponse].self, forKey: .shipments)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartCheckoutRequest
        Used By: Cart
    */
    struct CartCheckoutRequest: Codable {
        
        public var staff: [String: Any]?
        
        public var orderingStore: Int?
        
        public var paymentMode: String
        
        public var extraMeta: [String: Any]?
        
        public var paymentParams: [String: Any]?
        
        public var paymentIdentifier: String?
        
        public var paymentAutoConfirm: Bool?
        
        public var aggregator: String?
        
        public var fyndstoreEmpId: String?
        
        public var meta: [String: Any]?
        
        public var callbackUrl: String?
        
        public var billingAddressId: Int?
        
        public var addressId: Int?
        
        public var billingAddress: [String: Any]?
        
        public var merchantCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case staff = "staff"
            
            case orderingStore = "ordering_store"
            
            case paymentMode = "payment_mode"
            
            case extraMeta = "extra_meta"
            
            case paymentParams = "payment_params"
            
            case paymentIdentifier = "payment_identifier"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case aggregator = "aggregator"
            
            case fyndstoreEmpId = "fyndstore_emp_id"
            
            case meta = "meta"
            
            case callbackUrl = "callback_url"
            
            case billingAddressId = "billing_address_id"
            
            case addressId = "address_id"
            
            case billingAddress = "billing_address"
            
            case merchantCode = "merchant_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            staff = try? container.decode([String: Any].self, forKey: .staff)
            
            orderingStore = try? container.decode(Int.self, forKey: .orderingStore)
            
            paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            extraMeta = try? container.decode([String: Any].self, forKey: .extraMeta)
            
            paymentParams = try? container.decode([String: Any].self, forKey: .paymentParams)
            
            paymentIdentifier = try? container.decode(String.self, forKey: .paymentIdentifier)
            
            paymentAutoConfirm = try? container.decode(Bool.self, forKey: .paymentAutoConfirm)
            
            aggregator = try? container.decode(String.self, forKey: .aggregator)
            
            fyndstoreEmpId = try? container.decode(String.self, forKey: .fyndstoreEmpId)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            billingAddressId = try? container.decode(Int.self, forKey: .billingAddressId)
            
            addressId = try? container.decode(Int.self, forKey: .addressId)
            
            billingAddress = try? container.decode([String: Any].self, forKey: .billingAddress)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(fyndstoreEmpId, forKey: .fyndstoreEmpId)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
        }
        
    }
    
    /*
        Model: CheckCart
        Used By: Cart
    */
    struct CheckCart: Codable {
        
        public var couponText: String?
        
        public var currency: CartCurrency?
        
        public var success: Bool?
        
        public var message: String?
        
        public var isValid: Bool?
        
        public var codMessage: String?
        
        public var deliveryCharges: Int?
        
        public var paymentOptions: PaymentOptions?
        
        public var breakupValues: CartBreakup?
        
        public var checkoutMode: String?
        
        public var orderId: String?
        
        public var userType: String?
        
        public var storeEmps: [[String: Any]]?
        
        public var restrictCheckout: Bool?
        
        public var gstin: String?
        
        public var codAvailable: Bool?
        
        public var uid: String?
        
        public var lastModified: String?
        
        public var deliveryChargeOrderValue: Int?
        
        public var errorMessage: String?
        
        public var deliveryChargeInfo: [String]?
        
        public var codCharges: Int?
        
        public var cartId: Int?
        
        public var items: [CartProductInfo]?
        
        public var storeCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponText = "coupon_text"
            
            case currency = "currency"
            
            case success = "success"
            
            case message = "message"
            
            case isValid = "is_valid"
            
            case codMessage = "cod_message"
            
            case deliveryCharges = "delivery_charges"
            
            case paymentOptions = "payment_options"
            
            case breakupValues = "breakup_values"
            
            case checkoutMode = "checkout_mode"
            
            case orderId = "order_id"
            
            case userType = "user_type"
            
            case storeEmps = "store_emps"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case codAvailable = "cod_available"
            
            case uid = "uid"
            
            case lastModified = "last_modified"
            
            case deliveryChargeOrderValue = "delivery_charge_order_value"
            
            case errorMessage = "error_message"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case codCharges = "cod_charges"
            
            case cartId = "cart_id"
            
            case items = "items"
            
            case storeCode = "store_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            message = try? container.decode(String.self, forKey: .message)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            codMessage = try? container.decode(String.self, forKey: .codMessage)
            
            deliveryCharges = try? container.decode(Int.self, forKey: .deliveryCharges)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            userType = try? container.decode(String.self, forKey: .userType)
            
            storeEmps = try? container.decode([[String: Any]].self, forKey: .storeEmps)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            codAvailable = try? container.decode(Bool.self, forKey: .codAvailable)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            deliveryChargeOrderValue = try? container.decode(Int.self, forKey: .deliveryChargeOrderValue)
            
            errorMessage = try? container.decode(String.self, forKey: .errorMessage)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            codCharges = try? container.decode(Int.self, forKey: .codCharges)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            storeCode = try? container.decode(String.self, forKey: .storeCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(codMessage, forKey: .codMessage)
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
        }
        
    }
    
    /*
        Model: OrderData
        Used By: Cart
    */
    struct OrderData: Codable {
        
        public var orderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
        }
        
    }
    
    /*
        Model: CartCheckoutResponse
        Used By: Cart
    */
    struct CartCheckoutResponse: Codable {
        
        public var success: Bool?
        
        public var cart: CheckCart?
        
        public var appInterceptUrl: String?
        
        public var callbackUrl: String?
        
        public var data: OrderData?
        
        public var orderId: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case cart = "cart"
            
            case appInterceptUrl = "app_intercept_url"
            
            case callbackUrl = "callback_url"
            
            case data = "data"
            
            case orderId = "order_id"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            cart = try? container.decode(CheckCart.self, forKey: .cart)
            
            appInterceptUrl = try? container.decode(String.self, forKey: .appInterceptUrl)
            
            callbackUrl = try? container.decode(String.self, forKey: .callbackUrl)
            
            data = try? container.decode(OrderData.self, forKey: .data)
            
            orderId = try? container.decode(String.self, forKey: .orderId)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CartMetaRequest
        Used By: Cart
    */
    struct CartMetaRequest: Codable {
        
        public var pickUpCustomerDetails: [String: Any]?
        
        public var checkoutMode: String?
        
        public var comment: String?
        
        public var gstin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case checkoutMode = "checkout_mode"
            
            case comment = "comment"
            
            case gstin = "gstin"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pickUpCustomerDetails = try? container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
        }
        
    }
    
    /*
        Model: CartMetaResponse
        Used By: Cart
    */
    struct CartMetaResponse: Codable {
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
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
    struct CartMetaMissingResponse: Codable {
        
        public var errors: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            errors = try? container.decode([String].self, forKey: .errors)
            
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
    struct GetShareCartLinkRequest: Codable {
        
        public var meta: [String: Any]?
        
        public var uid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case uid = "uid"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            uid = try container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: GetShareCartLinkResponse
        Used By: Cart
    */
    struct GetShareCartLinkResponse: Codable {
        
        public var token: String?
        
        public var shareUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case shareUrl = "share_url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            token = try? container.decode(String.self, forKey: .token)
            
            shareUrl = try? container.decode(String.self, forKey: .shareUrl)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)
            
        }
        
    }
    
    /*
        Model: SharedCartDetails
        Used By: Cart
    */
    struct SharedCartDetails: Codable {
        
        public var createdOn: String?
        
        public var token: String?
        
        public var user: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var source: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case token = "token"
            
            case user = "user"
            
            case meta = "meta"
            
            case source = "source"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            token = try? container.decode(String.self, forKey: .token)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            source = try? container.decode([String: Any].self, forKey: .source)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
        }
        
    }
    
    /*
        Model: SharedCart
        Used By: Cart
    */
    struct SharedCart: Codable {
        
        public var couponText: String?
        
        public var uid: String?
        
        public var sharedCartDetails: SharedCartDetails?
        
        public var currency: CartCurrency?
        
        public var isValid: Bool?
        
        public var deliveryChargeInfo: [String]?
        
        public var restrictCheckout: Bool?
        
        public var gstin: String?
        
        public var cartId: Int?
        
        public var paymentOptions: PaymentOptions?
        
        public var breakupValues: CartBreakup?
        
        public var lastModified: String?
        
        public var items: [CartProductInfo]?
        
        public var checkoutMode: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponText = "coupon_text"
            
            case uid = "uid"
            
            case sharedCartDetails = "shared_cart_details"
            
            case currency = "currency"
            
            case isValid = "is_valid"
            
            case deliveryChargeInfo = "delivery_charge_info"
            
            case restrictCheckout = "restrict_checkout"
            
            case gstin = "gstin"
            
            case cartId = "cart_id"
            
            case paymentOptions = "payment_options"
            
            case breakupValues = "breakup_values"
            
            case lastModified = "last_modified"
            
            case items = "items"
            
            case checkoutMode = "checkout_mode"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            couponText = try? container.decode(String.self, forKey: .couponText)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            sharedCartDetails = try? container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
            
            currency = try? container.decode(CartCurrency.self, forKey: .currency)
            
            isValid = try? container.decode(Bool.self, forKey: .isValid)
            
            deliveryChargeInfo = try? container.decode([String].self, forKey: .deliveryChargeInfo)
            
            restrictCheckout = try? container.decode(Bool.self, forKey: .restrictCheckout)
            
            gstin = try? container.decode(String.self, forKey: .gstin)
            
            cartId = try? container.decode(Int.self, forKey: .cartId)
            
            paymentOptions = try? container.decode(PaymentOptions.self, forKey: .paymentOptions)
            
            breakupValues = try? container.decode(CartBreakup.self, forKey: .breakupValues)
            
            lastModified = try? container.decode(String.self, forKey: .lastModified)
            
            items = try? container.decode([CartProductInfo].self, forKey: .items)
            
            checkoutMode = try? container.decode(String.self, forKey: .checkoutMode)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(couponText, forKey: .couponText)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
            
            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: SharedCartResponse
        Used By: Cart
    */
    struct SharedCartResponse: Codable {
        
        public var error: String?
        
        public var cart: SharedCart?
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case cart = "cart"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            error = try? container.decode(String.self, forKey: .error)
            
            cart = try? container.decode(SharedCart.self, forKey: .cart)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
        }
        
    }
    
    
    
    /*
        Model: TicketList
        Used By: Lead
    */
    struct TicketList: Codable {
        
        public var docs: [Ticket]?
        
        public var filters: Filter?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case filters = "filters"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Ticket].self, forKey: .docs)
            
            filters = try? container.decode(Filter.self, forKey: .filters)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: TicketHistoryList
        Used By: Lead
    */
    struct TicketHistoryList: Codable {
        
        public var docs: [TicketHistory]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([TicketHistory].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CustomFormList
        Used By: Lead
    */
    struct CustomFormList: Codable {
        
        public var docs: [CustomForm]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([CustomForm].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CreateCustomFormPayload
        Used By: Lead
    */
    struct CreateCustomFormPayload: Codable {
        
        public var slug: String
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditCustomFormPayload
        Used By: Lead
    */
    struct EditCustomFormPayload: Codable {
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var loginRequired: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case loginRequired = "login_required"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditTicketPayload
        Used By: Lead
    */
    struct EditTicketPayload: Codable {
        
        public var content: TicketContent?
        
        public var category: String?
        
        public var source: String?
        
        public var status: String?
        
        public var priority: String?
        
        public var assignedTo: AgentChangePayload?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case content = "content"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
            category = try? container.decode(String.self, forKey: .category)
            
            source = try? container.decode(String.self, forKey: .source)
            
            status = try? container.decode(String.self, forKey: .status)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            assignedTo = try? container.decode(AgentChangePayload.self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AgentChangePayload
        Used By: Lead
    */
    struct AgentChangePayload: Codable {
        
        public var agentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case agentId = "agent_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            agentId = try container.decode(String.self, forKey: .agentId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(agentId, forKey: .agentId)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomResponse
        Used By: Lead
    */
    struct CreateVideoRoomResponse: Codable {
        
        public var uniqueName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
        }
        
    }
    
    /*
        Model: CloseVideoRoomResponse
        Used By: Lead
    */
    struct CloseVideoRoomResponse: Codable {
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
        Used By: Lead
    */
    struct CreateVideoRoomPayload: Codable {
        
        public var uniqueName: String
        
        public var notify: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
            case notify = "notify"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
            notify = try? container.decode([[String: Any]].self, forKey: .notify)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            try? container.encodeIfPresent(notify, forKey: .notify)
            
        }
        
    }
    
    /*
        Model: Filter
        Used By: Lead
    */
    struct Filter: Codable {
        
        public var priorities: Priority
        
        public var categories: Category?
        
        public var statuses: Status
        
        public var assignees: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            priorities = try container.decode(Priority.self, forKey: .priorities)
            
            categories = try? container.decode(Category.self, forKey: .categories)
            
            statuses = try container.decode(Status.self, forKey: .statuses)
            
            assignees = try container.decode([[String: Any]].self, forKey: .assignees)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
        }
        
    }
    
    /*
        Model: TicketHistoryPayload
        Used By: Lead
    */
    struct TicketHistoryPayload: Codable {
        
        public var value: [String: Any]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: CustomFormSubmissionPayload
        Used By: Lead
    */
    struct CustomFormSubmissionPayload: Codable {
        
        public var response: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try container.decode([[String: Any]].self, forKey: .response)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
        }
        
    }
    
    /*
        Model: GetTokenForVideoRoomResponse
        Used By: Lead
    */
    struct GetTokenForVideoRoomResponse: Codable {
        
        public var accessToken: String
        

        public enum CodingKeys: String, CodingKey {
            
            case accessToken = "access_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            accessToken = try container.decode(String.self, forKey: .accessToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(accessToken, forKey: .accessToken)
            
        }
        
    }
    
    /*
        Model: GetParticipantsInsideVideoRoomResponse
        Used By: Lead
    */
    struct GetParticipantsInsideVideoRoomResponse: Codable {
        
        public var participants: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            participants = try container.decode([[String: Any]].self, forKey: .participants)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(participants, forKey: .participants)
            
        }
        
    }
    
    /*
        Model: SubmitCustomFormResponse
        Used By: Lead
    */
    struct SubmitCustomFormResponse: Codable {
        
        public var ticket: Ticket
        

        public enum CodingKeys: String, CodingKey {
            
            case ticket = "ticket"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ticket = try container.decode(Ticket.self, forKey: .ticket)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ticket, forKey: .ticket)
            
        }
        
    }
    
    /*
        Model: TicketContext
        Used By: Lead
    */
    struct TicketContext: Codable {
        
        public var applicationId: String?
        
        public var companyId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            companyId = try container.decode(String.self, forKey: .companyId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
        }
        
    }
    
    /*
        Model: CreatedOn
        Used By: Lead
    */
    struct CreatedOn: Codable {
        
        public var userAgent: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userAgent = try container.decode(String.self, forKey: .userAgent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
        }
        
    }
    
    /*
        Model: Asset
        Used By: Lead
    */
    struct Asset: Codable {
        
        public var display: String?
        
        public var value: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            value = try container.decode(String.self, forKey: .value)
            
            type = try container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: TicketContent
        Used By: Lead
    */
    struct TicketContent: Codable {
        
        public var title: String
        
        public var description: String?
        
        public var attachments: [Asset]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case attachments = "attachments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            attachments = try? container.decode([Asset].self, forKey: .attachments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
        }
        
    }
    
    /*
        Model: APIError
        Used By: Lead
    */
    struct APIError: Codable {
        
        public var code: Double?
        
        public var error: [String: Any]?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Double.self, forKey: .code)
            
            error = try? container.decode([String: Any].self, forKey: .error)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddTicketPayload
        Used By: Lead
    */
    struct AddTicketPayload: Codable {
        
        public var status: String
        
        public var priority: String
        
        public var category: String
        
        public var content: TicketContent
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case priority = "priority"
            
            case category = "category"
            
            case content = "content"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            priority = try container.decode(String.self, forKey: .priority)
            
            category = try container.decode(String.self, forKey: .category)
            
            content = try container.decode(TicketContent.self, forKey: .content)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
        }
        
    }
    
    /*
        Model: Priority
        Used By: Lead
    */
    struct Priority: Codable {
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Status
        Used By: Lead
    */
    struct Status: Codable {
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Category
        Used By: Lead
    */
    struct Category: Codable {
        
        public var key: String
        
        public var display: String
        
        public var form: CustomForm?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case form = "form"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            form = try? container.decode(CustomForm.self, forKey: .form)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(form, forKey: .form)
            
        }
        
    }
    
    /*
        Model: SubmitButton
        Used By: Lead
    */
    struct SubmitButton: Codable {
        
        public var title: String
        
        public var titleColor: String
        
        public var backgroundColor: String
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case titleColor = "title_color"
            
            case backgroundColor = "background_color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            titleColor = try container.decode(String.self, forKey: .titleColor)
            
            backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(titleColor, forKey: .titleColor)
            
            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
            
        }
        
    }
    
    /*
        Model: PollForAssignment
        Used By: Lead
    */
    struct PollForAssignment: Codable {
        
        public var duration: Double
        
        public var message: String
        
        public var successMessage: String
        
        public var failureMessage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case message = "message"
            
            case successMessage = "success_message"
            
            case failureMessage = "failure_message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            duration = try container.decode(Double.self, forKey: .duration)
            
            message = try container.decode(String.self, forKey: .message)
            
            successMessage = try container.decode(String.self, forKey: .successMessage)
            
            failureMessage = try container.decode(String.self, forKey: .failureMessage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
            
        }
        
    }
    
    /*
        Model: CustomForm
        Used By: Lead
    */
    struct CustomForm: Codable {
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var pollForAssignment: PollForAssignment?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case pollForAssignment = "poll_for_assignment"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try container.decode(String.self, forKey: .applicationId)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
            
            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: TicketHistory
        Used By: Lead
    */
    struct TicketHistory: Codable {
        
        public var type: String
        
        public var value: [String: Any]
        
        public var ticketId: String
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case ticketId = "ticket_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode([String: Any].self, forKey: .value)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: Ticket
        Used By: Lead
    */
    struct Ticket: Codable {
        
        public var context: TicketContext?
        
        public var createdOn: CreatedOn?
        
        public var responseId: String?
        
        public var content: TicketContent?
        
        public var ticketId: String
        
        public var category: Category
        
        public var source: String
        
        public var status: Status
        
        public var priority: Priority
        
        public var createdBy: [String: Any]?
        
        public var assignedTo: [String: Any]?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case context = "context"
            
            case createdOn = "created_on"
            
            case responseId = "response_id"
            
            case content = "content"
            
            case ticketId = "ticket_id"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            context = try? container.decode(TicketContext.self, forKey: .context)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            responseId = try? container.decode(String.self, forKey: .responseId)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            category = try container.decode(Category.self, forKey: .category)
            
            source = try container.decode(String.self, forKey: .source)
            
            status = try container.decode(Status.self, forKey: .status)
            
            priority = try container.decode(Priority.self, forKey: .priority)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(context, forKey: .context)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(responseId, forKey: .responseId)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    
    
    /*
        Model: PaginationSchema
        Used By: Theme
    */
    struct PaginationSchema: Codable {
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var hasNext: Bool?
        
        public var type: String?
        
        public var current: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            type = try? container.decode(String.self, forKey: .type)
            
            current = try? container.decode(Int.self, forKey: .current)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
        }
        
    }
    
    /*
        Model: ThemesListingResponseSchema
        Used By: Theme
    */
    struct ThemesListingResponseSchema: Codable {
        
        public var items: [ThemesSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ThemesSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AddThemeRequestSchema
        Used By: Theme
    */
    struct AddThemeRequestSchema: Codable {
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeId = "theme_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            themeId = try? container.decode(String.self, forKey: .themeId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
        }
        
    }
    
    /*
        Model: UpgradableThemeSchema
        Used By: Theme
    */
    struct UpgradableThemeSchema: Codable {
        
        public var parentTheme: String?
        
        public var appliedTheme: String?
        
        public var upgrade: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentTheme = "parent_theme"
            
            case appliedTheme = "applied_theme"
            
            case upgrade = "upgrade"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            appliedTheme = try? container.decode(String.self, forKey: .appliedTheme)
            
            upgrade = try? container.decode(Bool.self, forKey: .upgrade)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)
            
            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
            
        }
        
    }
    
    /*
        Model: FontsSchema
        Used By: Theme
    */
    struct FontsSchema: Codable {
        
        public var items: [[String: Any]]?
        
        public var kind: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case kind = "kind"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ThemesSchema
        Used By: Theme
    */
    struct ThemesSchema: Codable {
        
        public var application: String?
        
        public var applied: Bool?
        
        public var customized: Bool?
        
        public var published: Bool?
        
        public var archived: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var version: String?
        
        public var parentThemeVersion: String?
        
        public var parentTheme: String?
        
        public var information: [String: Any]?
        
        public var tags: [String]?
        
        public var src: [String: Any]?
        
        public var assets: [String: Any]?
        
        public var availablePages: [[String: Any]]?
        
        public var pages: [String: Any]?
        
        public var availableSections: [availableSectionSchema]?
        
        public var sections: [sectionSchema]?
        
        public var constants: [String: Any]?
        
        public var styles: [String: Any]?
        
        public var config: [String: Any]?
        
        public var settings: [String: Any]?
        
        public var font: [String: Any]?
        
        public var id: String?
        
        public var v: Int?
        
        public var colors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case applied = "applied"
            
            case customized = "customized"
            
            case published = "published"
            
            case archived = "archived"
            
            case createdAt = "createdAt"
            
            case updatedAt = "updatedAt"
            
            case version = "version"
            
            case parentThemeVersion = "parentThemeVersion"
            
            case parentTheme = "parentTheme"
            
            case information = "information"
            
            case tags = "tags"
            
            case src = "src"
            
            case assets = "assets"
            
            case availablePages = "available_pages"
            
            case pages = "pages"
            
            case availableSections = "available_sections"
            
            case sections = "sections"
            
            case constants = "constants"
            
            case styles = "styles"
            
            case config = "config"
            
            case settings = "settings"
            
            case font = "font"
            
            case id = "_id"
            
            case v = "__v"
            
            case colors = "colors"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            applied = try? container.decode(Bool.self, forKey: .applied)
            
            customized = try? container.decode(Bool.self, forKey: .customized)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            version = try? container.decode(String.self, forKey: .version)
            
            parentThemeVersion = try? container.decode(String.self, forKey: .parentThemeVersion)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            information = try? container.decode([String: Any].self, forKey: .information)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            src = try? container.decode([String: Any].self, forKey: .src)
            
            assets = try? container.decode([String: Any].self, forKey: .assets)
            
            availablePages = try? container.decode([[String: Any]].self, forKey: .availablePages)
            
            pages = try? container.decode([String: Any].self, forKey: .pages)
            
            availableSections = try? container.decode([availableSectionSchema].self, forKey: .availableSections)
            
            sections = try? container.decode([sectionSchema].self, forKey: .sections)
            
            constants = try? container.decode([String: Any].self, forKey: .constants)
            
            styles = try? container.decode([String: Any].self, forKey: .styles)
            
            config = try? container.decode([String: Any].self, forKey: .config)
            
            settings = try? container.decode([String: Any].self, forKey: .settings)
            
            font = try? container.decode([String: Any].self, forKey: .font)
            
            id = try? container.decode(String.self, forKey: .id)
            
            v = try? container.decode(Int.self, forKey: .v)
            
            colors = try? container.decode([String: Any].self, forKey: .colors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            try? container.encodeIfPresent(customized, forKey: .customized)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(parentThemeVersion, forKey: .parentThemeVersion)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(information, forKey: .information)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            try? container.encodeIfPresent(availablePages, forKey: .availablePages)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
        }
        
    }
    
    /*
        Model: pagesSchema
        Used By: Theme
    */
    struct pagesSchema: Codable {
        
        public var text: String?
        
        public var path: String?
        
        public var type: String?
        
        public var value: String?
        
        public var sections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case path = "path"
            
            case type = "type"
            
            case value = "value"
            
            case sections = "sections"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            path = try? container.decode(String.self, forKey: .path)
            
            type = try? container.decode(String.self, forKey: .type)
            
            value = try? container.decode(String.self, forKey: .value)
            
            sections = try? container.decode([[String: Any]].self, forKey: .sections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
        }
        
    }
    
    /*
        Model: availableSectionSchema
        Used By: Theme
    */
    struct availableSectionSchema: Codable {
        
        public var blocks: [[String: Any]]?
        
        public var name: String?
        
        public var label: String?
        
        public var props: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case blocks = "blocks"
            
            case name = "name"
            
            case label = "label"
            
            case props = "props"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            blocks = try? container.decode([[String: Any]].self, forKey: .blocks)
            
            name = try? container.decode(String.self, forKey: .name)
            
            label = try? container.decode(String.self, forKey: .label)
            
            props = try? container.decode([[String: Any]].self, forKey: .props)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            try? container.encodeIfPresent(props, forKey: .props)
            
        }
        
    }
    
    /*
        Model: sectionSchema
        Used By: Theme
    */
    struct sectionSchema: Codable {
        
        public var pageKey: String?
        
        public var pageSections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageKey = "page_key"
            
            case pageSections = "page_sections"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pageKey = try? container.decode(String.self, forKey: .pageKey)
            
            pageSections = try? container.decode([[String: Any]].self, forKey: .pageSections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pageKey, forKey: .pageKey)
            
            try? container.encodeIfPresent(pageSections, forKey: .pageSections)
            
        }
        
    }
    
    
    
    /*
        Model: EditEmailRequestSchema
        Used By: User
    */
    struct EditEmailRequestSchema: Codable {
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: SendVerificationLinkMobileRequestSchema
        Used By: User
    */
    struct SendVerificationLinkMobileRequestSchema: Codable {
        
        public var verified: Bool?
        
        public var active: Bool?
        
        public var countryCode: String?
        
        public var phone: String?
        
        public var primary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case active = "active"
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
            case primary = "primary"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
            primary = try? container.decode(Bool.self, forKey: .primary)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(primary, forKey: .primary)
            
        }
        
    }
    
    /*
        Model: EditMobileRequestSchema
        Used By: User
    */
    struct EditMobileRequestSchema: Codable {
        
        public var countryCode: String?
        
        public var phone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case phone = "phone"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            phone = try? container.decode(String.self, forKey: .phone)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: EditProfileRequestSchema
        Used By: User
    */
    struct EditProfileRequestSchema: Codable {
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var gender: String?
        
        public var dob: String?
        
        public var profilePicUrl: String?
        
        public var androidHash: String?
        
        public var sender: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case profilePicUrl = "profile_pic_url"
            
            case androidHash = "androidHash"
            
            case sender = "sender"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            dob = try? container.decode(String.self, forKey: .dob)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            sender = try? container.decode(String.self, forKey: .sender)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(dob, forKey: .dob)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: SendEmailOtpRequestSchema
        Used By: User
    */
    struct SendEmailOtpRequestSchema: Codable {
        
        public var email: String?
        
        public var action: String?
        
        public var token: String?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case action = "action"
            
            case token = "token"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: VerifyOtpRequestSchema
        Used By: User
    */
    struct VerifyOtpRequestSchema: Codable {
        
        public var requestId: String?
        
        public var registerToken: String?
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case registerToken = "register_token"
            
            case otp = "otp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            otp = try? container.decode(String.self, forKey: .otp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
        }
        
    }
    
    /*
        Model: SendMobileOtpRequestSchema
        Used By: User
    */
    struct SendMobileOtpRequestSchema: Codable {
        
        public var mobile: String?
        
        public var countryCode: String?
        
        public var action: String?
        
        public var token: String?
        
        public var androidHash: String?
        
        public var force: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case action = "action"
            
            case token = "token"
            
            case androidHash = "androidHash"
            
            case force = "force"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            action = try? container.decode(String.self, forKey: .action)
            
            token = try? container.decode(String.self, forKey: .token)
            
            androidHash = try? container.decode(String.self, forKey: .androidHash)
            
            force = try? container.decode(String.self, forKey: .force)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(androidHash, forKey: .androidHash)
            
            try? container.encodeIfPresent(force, forKey: .force)
            
        }
        
    }
    
    /*
        Model: UpdatePasswordRequestSchema
        Used By: User
    */
    struct UpdatePasswordRequestSchema: Codable {
        
        public var oldPassword: String?
        
        public var newPassword: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case oldPassword = "old_password"
            
            case newPassword = "new_password"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            oldPassword = try? container.decode(String.self, forKey: .oldPassword)
            
            newPassword = try? container.decode(String.self, forKey: .newPassword)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(oldPassword, forKey: .oldPassword)
            
            try? container.encodeIfPresent(newPassword, forKey: .newPassword)
            
        }
        
    }
    
    /*
        Model: FormRegisterRequestSchema
        Used By: User
    */
    struct FormRegisterRequestSchema: Codable {
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var email: String?
        
        public var password: String?
        
        public var phone: [String: Any]?
        
        public var registerToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case email = "email"
            
            case password = "password"
            
            case phone = "phone"
            
            case registerToken = "register_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            email = try? container.decode(String.self, forKey: .email)
            
            password = try? container.decode(String.self, forKey: .password)
            
            phone = try? container.decode([String: Any].self, forKey: .phone)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
        }
        
    }
    
    /*
        Model: TokenRequestBodySchema
        Used By: User
    */
    struct TokenRequestBodySchema: Codable {
        
        public var token: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            token = try? container.decode(String.self, forKey: .token)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
        }
        
    }
    
    /*
        Model: ForgotPasswordRequestSchema
        Used By: User
    */
    struct ForgotPasswordRequestSchema: Codable {
        
        public var code: String?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case password = "password"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            password = try? container.decode(String.self, forKey: .password)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
        }
        
    }
    
    /*
        Model: CodeRequestBodySchema
        Used By: User
    */
    struct CodeRequestBodySchema: Codable {
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: SendResetPasswordEmailRequestSchema
        Used By: User
    */
    struct SendResetPasswordEmailRequestSchema: Codable {
        
        public var email: String?
        
        public var gRecaptchaResponse: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
        }
        
    }
    
    /*
        Model: PasswordLoginRequestSchema
        Used By: User
    */
    struct PasswordLoginRequestSchema: Codable {
        
        public var gRecaptchaResponse: String?
        
        public var password: String?
        
        public var username: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case password = "password"
            
            case username = "username"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            password = try? container.decode(String.self, forKey: .password)
            
            username = try? container.decode(String.self, forKey: .username)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
        }
        
    }
    
    /*
        Model: SendOtpRequestSchema
        Used By: User
    */
    struct SendOtpRequestSchema: Codable {
        
        public var countryCode: String?
        
        public var gRecaptchaResponse: String?
        
        public var mobile: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case gRecaptchaResponse = "g-recaptcha-response"
            
            case mobile = "mobile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            gRecaptchaResponse = try? container.decode(String.self, forKey: .gRecaptchaResponse)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(gRecaptchaResponse, forKey: .gRecaptchaResponse)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
        }
        
    }
    
    /*
        Model: OAuthRequestSchema
        Used By: User
    */
    struct OAuthRequestSchema: Codable {
        
        public var isSignedIn: Bool?
        
        public var oauth2: [String: Any]?
        
        public var profile: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isSignedIn = "is_signed_in"
            
            case oauth2 = "oauth2"
            
            case profile = "profile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isSignedIn = try? container.decode(Bool.self, forKey: .isSignedIn)
            
            oauth2 = try? container.decode([String: Any].self, forKey: .oauth2)
            
            profile = try? container.decode([String: Any].self, forKey: .profile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isSignedIn, forKey: .isSignedIn)
            
            try? container.encodeIfPresent(oauth2, forKey: .oauth2)
            
            try? container.encodeIfPresent(profile, forKey: .profile)
            
        }
        
    }
    
    /*
        Model: AuthSuccess
        Used By: User
    */
    struct AuthSuccess: Codable {
        
        public var registerToken: String?
        
        public var userExists: Bool?
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case registerToken = "register_token"
            
            case userExists = "user_exists"
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            registerToken = try? container.decode(String.self, forKey: .registerToken)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: SendOtpResponse
        Used By: User
    */
    struct SendOtpResponse: Codable {
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: LoginSuccess
        Used By: User
    */
    struct LoginSuccess: Codable {
        
        public var user: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: VerifyOtpSuccess
        Used By: User
    */
    struct VerifyOtpSuccess: Codable {
        
        public var user: UserSchema?
        
        public var userExists: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case userExists = "userExists"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            userExists = try? container.decode(Bool.self, forKey: .userExists)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
        }
        
    }
    
    /*
        Model: ResetPasswordSuccess
        Used By: User
    */
    struct ResetPasswordSuccess: Codable {
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try? container.decode(String.self, forKey: .status)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
        }
        
    }
    
    /*
        Model: RegisterFormSuccess
        Used By: User
    */
    struct RegisterFormSuccess: Codable {
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: VerifyEmailSuccess
        Used By: User
    */
    struct VerifyEmailSuccess: Codable {
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: HasPasswordSuccess
        Used By: User
    */
    struct HasPasswordSuccess: Codable {
        
        public var result: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case result = "result"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            result = try? container.decode(Bool.self, forKey: .result)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(result, forKey: .result)
            
        }
        
    }
    
    /*
        Model: LogoutSuccess
        Used By: User
    */
    struct LogoutSuccess: Codable {
        
        public var logout: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case logout = "logout"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            logout = try? container.decode(Bool.self, forKey: .logout)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(logout, forKey: .logout)
            
        }
        
    }
    
    /*
        Model: OtpSuccess
        Used By: User
    */
    struct OtpSuccess: Codable {
        
        public var resendTimer: Int?
        
        public var resendToken: String?
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var countryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendTimer = try? container.decode(Int.self, forKey: .resendTimer)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            requestId = try? container.decode(String.self, forKey: .requestId)
            
            message = try? container.decode(String.self, forKey: .message)
            
            mobile = try? container.decode(String.self, forKey: .mobile)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
        }
        
    }
    
    /*
        Model: EmailOtpSuccess
        Used By: User
    */
    struct EmailOtpSuccess: Codable {
        
        public var resendToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case resendToken = "resend_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            resendToken = try? container.decode(String.self, forKey: .resendToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
        }
        
    }
    
    /*
        Model: SessionListSuccess
        Used By: User
    */
    struct SessionListSuccess: Codable {
        
        public var sessions: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sessions = "sessions"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sessions = try? container.decode([String].self, forKey: .sessions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sessions, forKey: .sessions)
            
        }
        
    }
    
    /*
        Model: VerifyMobileOTPSuccess
        Used By: User
    */
    struct VerifyMobileOTPSuccess: Codable {
        
        public var user: UserSchema?
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: VerifyEmailOTPSuccess
        Used By: User
    */
    struct VerifyEmailOTPSuccess: Codable {
        
        public var user: UserSchema?
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            user = try? container.decode(UserSchema.self, forKey: .user)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: SendMobileVerifyLinkSuccess
        Used By: User
    */
    struct SendMobileVerifyLinkSuccess: Codable {
        
        public var verifyMobileLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifyMobileLink = "verify_mobile_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyMobileLink = try? container.decode(Bool.self, forKey: .verifyMobileLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
        }
        
    }
    
    /*
        Model: SendEmailVerifyLinkSuccess
        Used By: User
    */
    struct SendEmailVerifyLinkSuccess: Codable {
        
        public var verifyEmailLink: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifyEmailLink = "verify_email_link"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifyEmailLink = try? container.decode(Bool.self, forKey: .verifyEmailLink)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
            
        }
        
    }
    
    /*
        Model: UserSearchResponseSchema
        Used By: User
    */
    struct UserSearchResponseSchema: Codable {
        
    }
    
    /*
        Model: CustomerListResponseSchema
        Used By: User
    */
    struct CustomerListResponseSchema: Codable {
        
        public var items: [UserSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([UserSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: PaginationSchema
        Used By: User
    */
    struct PaginationSchema: Codable {
        
    }
    
    /*
        Model: PlatformSchema
        Used By: User
    */
    struct PlatformSchema: Codable {
        
        public var display: String?
        
        public var lookAndFeel: [String: Any]?
        
        public var updatedAt: String?
        
        public var active: Bool?
        
        public var forgotPassword: Bool?
        
        public var login: [String: Any]?
        
        public var skipCaptcha: Bool?
        
        public var name: String?
        
        public var meta: [String: Any]?
        
        public var id: String?
        
        public var social: [String: Any]?
        
        public var requiredFields: [String: Any]?
        
        public var registerRequiredFields: [String: Any]?
        
        public var skipLogin: Bool?
        
        public var flashCard: [String: Any]?
        
        public var subtext: String?
        
        public var socialTokens: [String: Any]?
        
        public var createdAt: String?
        
        public var register: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case lookAndFeel = "look_and_feel"
            
            case updatedAt = "updated_at"
            
            case active = "active"
            
            case forgotPassword = "forgot_password"
            
            case login = "login"
            
            case skipCaptcha = "skip_captcha"
            
            case name = "name"
            
            case meta = "meta"
            
            case id = "_id"
            
            case social = "social"
            
            case requiredFields = "required_fields"
            
            case registerRequiredFields = "register_required_fields"
            
            case skipLogin = "skip_login"
            
            case flashCard = "flash_card"
            
            case subtext = "subtext"
            
            case socialTokens = "social_tokens"
            
            case createdAt = "created_at"
            
            case register = "register"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            lookAndFeel = try? container.decode([String: Any].self, forKey: .lookAndFeel)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            forgotPassword = try? container.decode(Bool.self, forKey: .forgotPassword)
            
            login = try? container.decode([String: Any].self, forKey: .login)
            
            skipCaptcha = try? container.decode(Bool.self, forKey: .skipCaptcha)
            
            name = try? container.decode(String.self, forKey: .name)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            social = try? container.decode([String: Any].self, forKey: .social)
            
            requiredFields = try? container.decode([String: Any].self, forKey: .requiredFields)
            
            registerRequiredFields = try? container.decode([String: Any].self, forKey: .registerRequiredFields)
            
            skipLogin = try? container.decode(Bool.self, forKey: .skipLogin)
            
            flashCard = try? container.decode([String: Any].self, forKey: .flashCard)
            
            subtext = try? container.decode(String.self, forKey: .subtext)
            
            socialTokens = try? container.decode([String: Any].self, forKey: .socialTokens)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            register = try? container.decode(Bool.self, forKey: .register)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(lookAndFeel, forKey: .lookAndFeel)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(forgotPassword, forKey: .forgotPassword)
            
            try? container.encodeIfPresent(login, forKey: .login)
            
            try? container.encodeIfPresent(skipCaptcha, forKey: .skipCaptcha)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(social, forKey: .social)
            
            try? container.encodeIfPresent(requiredFields, forKey: .requiredFields)
            
            try? container.encodeIfPresent(registerRequiredFields, forKey: .registerRequiredFields)
            
            try? container.encodeIfPresent(skipLogin, forKey: .skipLogin)
            
            try? container.encodeIfPresent(flashCard, forKey: .flashCard)
            
            try? container.encodeIfPresent(subtext, forKey: .subtext)
            
            try? container.encodeIfPresent(socialTokens, forKey: .socialTokens)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(register, forKey: .register)
            
        }
        
    }
    
    /*
        Model: UserSchema
        Used By: User
    */
    struct UserSchema: Codable {
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var phoneNumbers: [[String: Any]]?
        
        public var emails: [[String: Any]]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var uid: String?
        
        public var debug: [String: Any]?
        
        public var hasOldPasswordHash: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case uid = "uid"
            
            case debug = "debug"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            firstName = try? container.decode(String.self, forKey: .firstName)
            
            lastName = try? container.decode(String.self, forKey: .lastName)
            
            phoneNumbers = try? container.decode([[String: Any]].self, forKey: .phoneNumbers)
            
            emails = try? container.decode([[String: Any]].self, forKey: .emails)
            
            gender = try? container.decode(String.self, forKey: .gender)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            profilePicUrl = try? container.decode(String.self, forKey: .profilePicUrl)
            
            username = try? container.decode(String.self, forKey: .username)
            
            accountType = try? container.decode(String.self, forKey: .accountType)
            
            uid = try? container.decode(String.self, forKey: .uid)
            
            debug = try? container.decode([String: Any].self, forKey: .debug)
            
            hasOldPasswordHash = try? container.decode(Bool.self, forKey: .hasOldPasswordHash)
            
            id = try? container.decode(String.self, forKey: .id)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
        }
        
    }
    
    
    
    /*
        Model: ApplicationLegal
        Used By: Content
    */
    struct ApplicationLegal: Codable {
        
        public var application: String?
        
        public var tnc: String?
        
        public var policy: String?
        
        public var faq: [[String: Any]]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case tnc = "tnc"
            
            case policy = "policy"
            
            case faq = "faq"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
            case v = "__v"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            tnc = try? container.decode(String.self, forKey: .tnc)
            
            policy = try? container.decode(String.self, forKey: .policy)
            
            faq = try? container.decode([[String: Any]].self, forKey: .faq)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            v = try? container.decode(Double.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(tnc, forKey: .tnc)
            
            try? container.encodeIfPresent(policy, forKey: .policy)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: Seo
        Used By: Content
    */
    struct Seo: Codable {
        
        public var app: String
        
        public var robotsTxt: String?
        
        public var sitemapEnabled: Bool?
        
        public var customMetaTags: [[String: Any]]?
        
        public var details: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case robotsTxt = "robots_txt"
            
            case sitemapEnabled = "sitemap_enabled"
            
            case customMetaTags = "custom_meta_tags"
            
            case details = "details"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            app = try container.decode(String.self, forKey: .app)
            
            robotsTxt = try? container.decode(String.self, forKey: .robotsTxt)
            
            sitemapEnabled = try? container.decode(Bool.self, forKey: .sitemapEnabled)
            
            customMetaTags = try? container.decode([[String: Any]].self, forKey: .customMetaTags)
            
            details = try? container.decode([String: Any].self, forKey: .details)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)
            
            try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)
            
            try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
        }
        
    }
    
    /*
        Model: StorefrontAnnouncement
        Used By: Content
    */
    struct StorefrontAnnouncement: Codable {
        
        public var announcements: [String: Any]?
        
        public var refreshRate: Int?
        
        public var refreshPages: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
            case refreshRate = "refresh_rate"
            
            case refreshPages = "refresh_pages"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([String: Any].self, forKey: .announcements)
            
            refreshRate = try? container.decode(Int.self, forKey: .refreshRate)
            
            refreshPages = try? container.decode([String].self, forKey: .refreshPages)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
            try? container.encodeIfPresent(refreshRate, forKey: .refreshRate)
            
            try? container.encodeIfPresent(refreshPages, forKey: .refreshPages)
            
        }
        
    }
    
    /*
        Model: AdminAnnouncementSchema
        Used By: Content
    */
    struct AdminAnnouncementSchema: Codable {
        
        public var id: String?
        
        public var platform: [String]?
        
        public var title: String?
        
        public var announcement: String?
        
        public var pages: [[String: Any]]?
        
        public var editorMeta: [String: Any]?
        
        public var author: [String: Any]?
        
        public var createdAt: String?
        
        public var app: String?
        
        public var modifiedAt: String?
        
        public var schedule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case platform = "platform"
            
            case title = "title"
            
            case announcement = "announcement"
            
            case pages = "pages"
            
            case editorMeta = "editor_meta"
            
            case author = "author"
            
            case createdAt = "created_at"
            
            case app = "app"
            
            case modifiedAt = "modified_at"
            
            case schedule = "_schedule"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            platform = try? container.decode([String].self, forKey: .platform)
            
            title = try? container.decode(String.self, forKey: .title)
            
            announcement = try? container.decode(String.self, forKey: .announcement)
            
            pages = try? container.decode([[String: Any]].self, forKey: .pages)
            
            editorMeta = try? container.decode([String: Any].self, forKey: .editorMeta)
            
            author = try? container.decode([String: Any].self, forKey: .author)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            app = try? container.decode(String.self, forKey: .app)
            
            modifiedAt = try? container.decode(String.self, forKey: .modifiedAt)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(announcement, forKey: .announcement)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
        }
        
    }
    
    /*
        Model: ScheduleSchema
        Used By: Content
    */
    struct ScheduleSchema: Codable {
        
        public var schedule: [String: Any]?
        
        public var published: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case published = "published"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            schedule = try? container.decode([String: Any].self, forKey: .schedule)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
        }
        
    }
    
    /*
        Model: GetAnnouncementListSchema
        Used By: Content
    */
    struct GetAnnouncementListSchema: Codable {
        
        public var items: [AdminAnnouncementSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([AdminAnnouncementSchema].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: CreateAnnouncementSchema
        Used By: Content
    */
    struct CreateAnnouncementSchema: Codable {
        
        public var message: String?
        
        public var data: AdminAnnouncementSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            data = try? container.decode(AdminAnnouncementSchema.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CreateFaqResponseSchema
        Used By: Content
    */
    struct CreateFaqResponseSchema: Codable {
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: CreateFaqSchema
        Used By: Content
    */
    struct CreateFaqSchema: Codable {
        
        public var faq: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faq = "faq"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faq = try? container.decode([String: Any].self, forKey: .faq)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faq, forKey: .faq)
            
        }
        
    }
    
    /*
        Model: GetFaqSchema
        Used By: Content
    */
    struct GetFaqSchema: Codable {
        
        public var faqs: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([[String: Any]].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateFaqCategoryRequestSchema
        Used By: Content
    */
    struct UpdateFaqCategoryRequestSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategoryRequestSchema
        Used By: Content
    */
    struct CreateFaqCategoryRequestSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: CreateFaqCategorySchema
        Used By: Content
    */
    struct CreateFaqCategorySchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoriesSchema
        Used By: Content
    */
    struct GetFaqCategoriesSchema: Codable {
        
        public var categories: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case categories = "categories"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            categories = try? container.decode([[String: Any]].self, forKey: .categories)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
        }
        
    }
    
    /*
        Model: GetFaqCategoryByIdOrSlugSchema
        Used By: Content
    */
    struct GetFaqCategoryByIdOrSlugSchema: Codable {
        
        public var category: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            category = try? container.decode([String: Any].self, forKey: .category)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
        }
        
    }
    
    /*
        Model: Navigation
        Used By: Content
    */
    struct Navigation: Codable {
        
        public var name: String?
        
        public var slug: String?
        
        public var orientation: String?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var position: String?
        
        public var application: String?
        
        public var platform: String?
        
        public var navigation: NavigationRef?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case orientation = "orientation"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case position = "position"
            
            case application = "application"
            
            case platform = "platform"
            
            case navigation = "navigation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            orientation = try? container.decode(String.self, forKey: .orientation)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            position = try? container.decode(String.self, forKey: .position)
            
            application = try? container.decode(String.self, forKey: .application)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            navigation = try? container.decode(NavigationRef.self, forKey: .navigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(orientation, forKey: .orientation)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(navigation, forKey: .navigation)
            
        }
        
    }
    
    /*
        Model: NavigationRef
        Used By: Content
    */
    struct NavigationRef: Codable {
        
        public var acl: [[String: Any]]?
        
        public var localeLanguage: [String: Any]?
        
        public var image: String?
        
        public var type: String?
        
        public var action: [String: Any]?
        
        public var active: Bool?
        
        public var display: String?
        
        public var sortOrder: Int?
        
        public var subNavigation: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case acl = "acl"
            
            case localeLanguage = "_locale_language"
            
            case image = "image"
            
            case type = "type"
            
            case action = "action"
            
            case active = "active"
            
            case display = "display"
            
            case sortOrder = "sort_order"
            
            case subNavigation = "sub_navigation"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            acl = try? container.decode([[String: Any]].self, forKey: .acl)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
            image = try? container.decode(String.self, forKey: .image)
            
            type = try? container.decode(String.self, forKey: .type)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            display = try? container.decode(String.self, forKey: .display)
            
            sortOrder = try? container.decode(Int.self, forKey: .sortOrder)
            
            subNavigation = try? container.decode([String: Any].self, forKey: .subNavigation)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(acl, forKey: .acl)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(sortOrder, forKey: .sortOrder)
            
            try? container.encodeIfPresent(subNavigation, forKey: .subNavigation)
            
        }
        
    }
    
    /*
        Model: LandingPage
        Used By: Content
    */
    struct LandingPage: Codable {
        
        public var slug: String?
        
        public var action: [String: Any]?
        
        public var platform: [[String: Any]]?
        
        public var createdBy: [String: Any]?
        
        public var dateMeta: [String: Any]?
        
        public var id: String?
        
        public var application: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case action = "action"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case application = "application"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            action = try? container.decode([String: Any].self, forKey: .action)
            
            platform = try? container.decode([[String: Any]].self, forKey: .platform)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            id = try? container.decode(String.self, forKey: .id)
            
            application = try? container.decode(String.self, forKey: .application)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
        }
        
    }
    
    /*
        Model: Slideshow
        Used By: Content
    */
    struct Slideshow: Codable {
        
        public var id: String?
        
        public var slug: String?
        
        public var dateMeta: [String: Any]?
        
        public var application: String?
        
        public var name: String?
        
        public var platform: String?
        
        public var configuration: [String: Any]?
        
        public var media: [[String: Any]]?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case slug = "slug"
            
            case dateMeta = "date_meta"
            
            case application = "application"
            
            case name = "name"
            
            case platform = "platform"
            
            case configuration = "configuration"
            
            case media = "media"
            
            case active = "active"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            dateMeta = try? container.decode([String: Any].self, forKey: .dateMeta)
            
            application = try? container.decode(String.self, forKey: .application)
            
            name = try? container.decode(String.self, forKey: .name)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            configuration = try? container.decode([String: Any].self, forKey: .configuration)
            
            media = try? container.decode([[String: Any]].self, forKey: .media)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
        }
        
    }
    
    /*
        Model: AnnouncementsResponseSchema
        Used By: Content
    */
    struct AnnouncementsResponseSchema: Codable {
        
        public var announcements: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            announcements = try? container.decode([[String: Any]].self, forKey: .announcements)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
        }
        
    }
    
    /*
        Model: FaqResponseSchema
        Used By: Content
    */
    struct FaqResponseSchema: Codable {
        
        public var faqs: [Faq]?
        

        public enum CodingKeys: String, CodingKey {
            
            case faqs = "faqs"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            faqs = try? container.decode([Faq].self, forKey: .faqs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(faqs, forKey: .faqs)
            
        }
        
    }
    
    /*
        Model: UpdateHandpickedSchema
        Used By: Content
    */
    struct UpdateHandpickedSchema: Codable {
        
        public var tag: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tag = "tag"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tag = try? container.decode([String: Any].self, forKey: .tag)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
        }
        
    }
    
    /*
        Model: RemoveHandpickedSchema
        Used By: Content
    */
    struct RemoveHandpickedSchema: Codable {
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: TagsSchema
        Used By: Content
    */
    struct TagsSchema: Codable {
        
        public var application: String?
        
        public var id: String?
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case id = "_id"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            id = try? container.decode(String.self, forKey: .id)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: CreateTagRequestSchema
        Used By: Content
    */
    struct CreateTagRequestSchema: Codable {
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            tags = try? container.decode([[String: Any]].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: Faq
        Used By: Content
    */
    struct Faq: Codable {
        
        public var id: String?
        
        public var question: String?
        
        public var answer: String?
        
        public var slug: String?
        
        public var application: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case question = "question"
            
            case answer = "answer"
            
            case slug = "slug"
            
            case application = "application"
            
            case v = "__v"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            question = try? container.decode(String.self, forKey: .question)
            
            answer = try? container.decode(String.self, forKey: .answer)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            application = try? container.decode(String.self, forKey: .application)
            
            v = try? container.decode(Int.self, forKey: .v)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(question, forKey: .question)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
        }
        
    }
    
    /*
        Model: CustomPage
        Used By: Content
    */
    struct CustomPage: Codable {
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CustomBlog
        Used By: Content
    */
    struct CustomBlog: Codable {
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: Support
        Used By: Content
    */
    struct Support: Codable {
        
        public var created: Bool?
        
        public var id: String?
        
        public var configType: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var contact: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case id = "_id"
            
            case configType = "config_type"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case contact = "contact"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            created = try? container.decode(Bool.self, forKey: .created)
            
            id = try? container.decode(String.self, forKey: .id)
            
            configType = try? container.decode(String.self, forKey: .configType)
            
            application = try? container.decode(String.self, forKey: .application)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            contact = try? container.decode([String: Any].self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    
    
    /*
        Model: CommunicationConsentReq
        Used By: Communication
    */
    struct CommunicationConsentReq: Codable {
        
        public var response: String?
        
        public var action: String?
        
        public var channel: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
            case action = "action"
            
            case channel = "channel"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try? container.decode(String.self, forKey: .response)
            
            action = try? container.decode(String.self, forKey: .action)
            
            channel = try? container.decode(String.self, forKey: .channel)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
        }
        
    }
    
    /*
        Model: CommunicationConsentRes
        Used By: Communication
    */
    struct CommunicationConsentRes: Codable {
        
        public var appId: String?
        
        public var userId: String?
        
        public var channels: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "appId"
            
            case userId = "userId"
            
            case channels = "channels"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            channels = try? container.decode([String: Any].self, forKey: .channels)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
        }
        
    }
    
    /*
        Model: CommunicationConsent
        Used By: Communication
    */
    struct CommunicationConsent: Codable {
        
        public var appId: String?
        
        public var userId: String?
        
        public var channels: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "appId"
            
            case userId = "userId"
            
            case channels = "channels"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try? container.decode(String.self, forKey: .appId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            channels = try? container.decode([String: Any].self, forKey: .channels)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
        }
        
    }
    
    /*
        Model: PushtokenReq
        Used By: Communication
    */
    struct PushtokenReq: Codable {
        
        public var action: String?
        
        public var bundleIdentifier: String?
        
        public var pushToken: String?
        
        public var uniqueDeviceId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case bundleIdentifier = "bundle_identifier"
            
            case pushToken = "push_token"
            
            case uniqueDeviceId = "unique_device_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            bundleIdentifier = try? container.decode(String.self, forKey: .bundleIdentifier)
            
            pushToken = try? container.decode(String.self, forKey: .pushToken)
            
            uniqueDeviceId = try? container.decode(String.self, forKey: .uniqueDeviceId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
            
            try? container.encodeIfPresent(pushToken, forKey: .pushToken)
            
            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: PushtokenRes
        Used By: Communication
    */
    struct PushtokenRes: Codable {
        
        public var id: String?
        
        public var bundleIdentifier: String?
        
        public var pushToken: String?
        
        public var uniqueDeviceId: String?
        
        public var type: String?
        
        public var platform: String?
        
        public var applicationId: String?
        
        public var userId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var expiredAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case bundleIdentifier = "bundle_identifier"
            
            case pushToken = "push_token"
            
            case uniqueDeviceId = "unique_device_id"
            
            case type = "type"
            
            case platform = "platform"
            
            case applicationId = "application_id"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case expiredAt = "expired_at"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            bundleIdentifier = try? container.decode(String.self, forKey: .bundleIdentifier)
            
            pushToken = try? container.decode(String.self, forKey: .pushToken)
            
            uniqueDeviceId = try? container.decode(String.self, forKey: .uniqueDeviceId)
            
            type = try? container.decode(String.self, forKey: .type)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            expiredAt = try? container.decode(String.self, forKey: .expiredAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
            
            try? container.encodeIfPresent(pushToken, forKey: .pushToken)
            
            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(expiredAt, forKey: .expiredAt)
            
        }
        
    }
    
    
    
    /*
        Model: QRCodeResp
        Used By: Share
    */
    struct QRCodeResp: Codable {
        
        public var link: String?
        
        public var svg: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case svg = "svg"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            link = try? container.decode(String.self, forKey: .link)
            
            svg = try? container.decode(String.self, forKey: .svg)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            try? container.encodeIfPresent(svg, forKey: .svg)
            
        }
        
    }
    
    /*
        Model: RedirectDevice
        Used By: Share
    */
    struct RedirectDevice: Codable {
        
        public var link: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            link = try container.decode(String.self, forKey: .link)
            
            type = try container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Redirects
        Used By: Share
    */
    struct Redirects: Codable {
        
        public var ios: RedirectDevice?
        
        public var android: RedirectDevice?
        
        public var web: [String: Any]?
        
        public var forceWeb: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ios = "ios"
            
            case android = "android"
            
            case web = "web"
            
            case forceWeb = "force_web"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ios = try? container.decode(RedirectDevice.self, forKey: .ios)
            
            android = try? container.decode(RedirectDevice.self, forKey: .android)
            
            web = try? container.decode([String: Any].self, forKey: .web)
            
            forceWeb = try? container.decode(Bool.self, forKey: .forceWeb)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            try? container.encodeIfPresent(web, forKey: .web)
            
            try? container.encodeIfPresent(forceWeb, forKey: .forceWeb)
            
        }
        
    }
    
    /*
        Model: ShortLinkReq
        Used By: Share
    */
    struct ShortLinkReq: Codable {
        
        public var title: String
        
        public var url: String
        
        public var hash: String?
        
        public var active: String?
        
        public var type: String?
        
        public var expireAt: String?
        
        public var enableTracking: Bool?
        
        public var redirects: Redirects?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case url = "url"
            
            case hash = "hash"
            
            case active = "active"
            
            case type = "type"
            
            case expireAt = "expire_at"
            
            case enableTracking = "enable_tracking"
            
            case redirects = "redirects"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            url = try container.decode(String.self, forKey: .url)
            
            hash = try? container.decode(String.self, forKey: .hash)
            
            active = try? container.decode(String.self, forKey: .active)
            
            type = try? container.decode(String.self, forKey: .type)
            
            expireAt = try? container.decode(String.self, forKey: .expireAt)
            
            enableTracking = try? container.decode(Bool.self, forKey: .enableTracking)
            
            redirects = try? container.decode(Redirects.self, forKey: .redirects)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            try? container.encodeIfPresent(redirects, forKey: .redirects)
            
        }
        
    }
    
    /*
        Model: ShortLinkRes
        Used By: Share
    */
    struct ShortLinkRes: Codable {
        
        public var title: String?
        
        public var url: [String: Any]?
        
        public var createdBy: String?
        
        public var personalized: String?
        
        public var appRedirect: String?
        
        public var fallback: String?
        
        public var active: Bool?
        
        public var id: String?
        
        public var enableTracking: Bool?
        
        public var expireAt: Bool?
        
        public var application: String?
        
        public var userId: Bool?
        
        public var createdAt: Bool?
        
        public var updatedAt: Bool?
        
        public var redirects: Redirects?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case url = "url"
            
            case createdBy = "created_by"
            
            case personalized = "personalized"
            
            case appRedirect = "app_redirect"
            
            case fallback = "fallback"
            
            case active = "active"
            
            case id = "_id"
            
            case enableTracking = "enable_tracking"
            
            case expireAt = "expire_at"
            
            case application = "application"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case redirects = "redirects"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try? container.decode(String.self, forKey: .title)
            
            url = try? container.decode([String: Any].self, forKey: .url)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            personalized = try? container.decode(String.self, forKey: .personalized)
            
            appRedirect = try? container.decode(String.self, forKey: .appRedirect)
            
            fallback = try? container.decode(String.self, forKey: .fallback)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            id = try? container.decode(String.self, forKey: .id)
            
            enableTracking = try? container.decode(Bool.self, forKey: .enableTracking)
            
            expireAt = try? container.decode(Bool.self, forKey: .expireAt)
            
            application = try? container.decode(String.self, forKey: .application)
            
            userId = try? container.decode(Bool.self, forKey: .userId)
            
            createdAt = try? container.decode(Bool.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(Bool.self, forKey: .updatedAt)
            
            redirects = try? container.decode(Redirects.self, forKey: .redirects)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(personalized, forKey: .personalized)
            
            try? container.encodeIfPresent(appRedirect, forKey: .appRedirect)
            
            try? container.encodeIfPresent(fallback, forKey: .fallback)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(redirects, forKey: .redirects)
            
        }
        
    }
    
    
    
    /*
        Model: FailedResponse
        Used By: FileStorage
    */
    struct FailedResponse: Codable {
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CDN
        Used By: FileStorage
    */
    struct CDN: Codable {
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: Upload
        Used By: FileStorage
    */
    struct Upload: Codable {
        
        public var expiry: Int
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case expiry = "expiry"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            expiry = try container.decode(Int.self, forKey: .expiry)
            
            url = try container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: StartResponse
        Used By: FileStorage
    */
    struct StartResponse: Codable {
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            filePath = try container.decode(String.self, forKey: .filePath)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            method = try container.decode(String.self, forKey: .method)
            
            namespace = try container.decode(String.self, forKey: .namespace)
            
            operation = try container.decode(String.self, forKey: .operation)
            
            size = try container.decode(Int.self, forKey: .size)
            
            upload = try container.decode(Upload.self, forKey: .upload)
            
            cdn = try container.decode(CDN.self, forKey: .cdn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
        }
        
    }
    
    /*
        Model: StartRequest
        Used By: FileStorage
    */
    struct StartRequest: Codable {
        
        public var fileName: String
        
        public var contentType: String
        
        public var size: Int
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case contentType = "content_type"
            
            case size = "size"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            size = try container.decode(Int.self, forKey: .size)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: CompleteResponse
        Used By: FileStorage
    */
    struct CompleteResponse: Codable {
        
        public var id: String
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        
        public var success: String
        
        public var tags: [String]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
            case success = "success"
            
            case tags = "tags"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try container.decode(String.self, forKey: .id)
            
            fileName = try container.decode(String.self, forKey: .fileName)
            
            filePath = try container.decode(String.self, forKey: .filePath)
            
            contentType = try container.decode(String.self, forKey: .contentType)
            
            method = try container.decode(String.self, forKey: .method)
            
            namespace = try container.decode(String.self, forKey: .namespace)
            
            operation = try container.decode(String.self, forKey: .operation)
            
            size = try container.decode(Int.self, forKey: .size)
            
            upload = try container.decode(Upload.self, forKey: .upload)
            
            cdn = try container.decode(CDN.self, forKey: .cdn)
            
            success = try container.decode(String.self, forKey: .success)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    
    
    /*
        Model: AggregatorConfigDetail
        Used By: Payment
    */
    struct AggregatorConfigDetail: Codable {
        
        public var pin: String?
        
        public var key: String
        
        public var userId: String?
        
        public var merchantKey: String?
        
        public var secret: String
        
        public var sdk: Bool?
        
        public var merchantId: String?
        
        public var verifyApi: String?
        
        public var configType: String
        
        public var api: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pin = "pin"
            
            case key = "key"
            
            case userId = "user_id"
            
            case merchantKey = "merchant_key"
            
            case secret = "secret"
            
            case sdk = "sdk"
            
            case merchantId = "merchant_id"
            
            case verifyApi = "verify_api"
            
            case configType = "config_type"
            
            case api = "api"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pin = try? container.decode(String.self, forKey: .pin)
            
            key = try container.decode(String.self, forKey: .key)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
            merchantKey = try? container.decode(String.self, forKey: .merchantKey)
            
            secret = try container.decode(String.self, forKey: .secret)
            
            sdk = try? container.decode(Bool.self, forKey: .sdk)
            
            merchantId = try? container.decode(String.self, forKey: .merchantId)
            
            verifyApi = try? container.decode(String.self, forKey: .verifyApi)
            
            configType = try container.decode(String.self, forKey: .configType)
            
            api = try? container.decode(String.self, forKey: .api)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pin, forKey: .pin)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            try? container.encodeIfPresent(sdk, forKey: .sdk)
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            try? container.encodeIfPresent(api, forKey: .api)
            
        }
        
    }
    
    /*
        Model: AggregatorsConfigDetailResponse
        Used By: Payment
    */
    struct AggregatorsConfigDetailResponse: Codable {
        
        public var rupifi: AggregatorConfigDetail?
        
        public var juspay: AggregatorConfigDetail?
        
        public var razorpay: AggregatorConfigDetail?
        
        public var success: Bool
        
        public var env: String
        
        public var stripe: AggregatorConfigDetail?
        
        public var mswipe: AggregatorConfigDetail?
        
        public var simpl: AggregatorConfigDetail?
        
        public var payumoney: AggregatorConfigDetail?
        
        public var ccavenue: AggregatorConfigDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case rupifi = "rupifi"
            
            case juspay = "juspay"
            
            case razorpay = "razorpay"
            
            case success = "success"
            
            case env = "env"
            
            case stripe = "stripe"
            
            case mswipe = "mswipe"
            
            case simpl = "simpl"
            
            case payumoney = "payumoney"
            
            case ccavenue = "ccavenue"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            rupifi = try? container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
            
            juspay = try? container.decode(AggregatorConfigDetail.self, forKey: .juspay)
            
            razorpay = try? container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            env = try container.decode(String.self, forKey: .env)
            
            stripe = try? container.decode(AggregatorConfigDetail.self, forKey: .stripe)
            
            mswipe = try? container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
            
            simpl = try? container.decode(AggregatorConfigDetail.self, forKey: .simpl)
            
            payumoney = try? container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
            
            ccavenue = try? container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(rupifi, forKey: .rupifi)
            
            try? container.encodeIfPresent(juspay, forKey: .juspay)
            
            try? container.encodeIfPresent(razorpay, forKey: .razorpay)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(env, forKey: .env)
            
            try? container.encodeIfPresent(stripe, forKey: .stripe)
            
            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
            
            try? container.encodeIfPresent(simpl, forKey: .simpl)
            
            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
            
            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
            
        }
        
    }
    
    /*
        Model: ErrorCodeAndDescription
        Used By: Payment
    */
    struct ErrorCodeAndDescription: Codable {
        
        public var description: String
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case code = "code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try container.decode(String.self, forKey: .description)
            
            code = try container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: HttpErrorCodeAndResponse
        Used By: Payment
    */
    struct HttpErrorCodeAndResponse: Codable {
        
        public var success: Bool
        
        public var error: ErrorCodeAndDescription
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
        }
        
    }
    
    /*
        Model: AttachCardRequest
        Used By: Payment
    */
    struct AttachCardRequest: Codable {
        
        public var cardId: String
        
        public var refresh: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cardId = "card_id"
            
            case refresh = "refresh"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cardId = try container.decode(String.self, forKey: .cardId)
            
            refresh = try? container.decode(Bool.self, forKey: .refresh)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            try? container.encodeIfPresent(refresh, forKey: .refresh)
            
        }
        
    }
    
    /*
        Model: AttachCardsResponse
        Used By: Payment
    */
    struct AttachCardsResponse: Codable {
        
        public var message: String?
        
        public var success: Bool
        
        public var data: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: CardPaymentGateway
        Used By: Payment
    */
    struct CardPaymentGateway: Codable {
        
        public var customerId: String?
        
        public var aggregator: String
        
        public var api: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerId = "customer_id"
            
            case aggregator = "aggregator"
            
            case api = "api"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            customerId = try? container.decode(String.self, forKey: .customerId)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            api = try? container.decode(String.self, forKey: .api)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(api, forKey: .api)
            
        }
        
    }
    
    /*
        Model: ActiveCardPaymentGatewayResponse
        Used By: Payment
    */
    struct ActiveCardPaymentGatewayResponse: Codable {
        
        public var message: String
        
        public var success: Bool
        
        public var cards: CardPaymentGateway
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case cards = "cards"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(cards, forKey: .cards)
            
        }
        
    }
    
    /*
        Model: ListCardsResponse
        Used By: Payment
    */
    struct ListCardsResponse: Codable {
        
        public var message: String
        
        public var success: Bool
        
        public var data: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try? container.decode([[String: Any]].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: DeletehCardRequest
        Used By: Payment
    */
    struct DeletehCardRequest: Codable {
        
        public var cardId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case cardId = "card_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cardId = try container.decode(String.self, forKey: .cardId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
        }
        
    }
    
    /*
        Model: DeleteCardsResponse
        Used By: Payment
    */
    struct DeleteCardsResponse: Codable {
        
        public var message: String?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ValidateCustomerRequest
        Used By: Payment
    */
    struct ValidateCustomerRequest: Codable {
        
        public var transactionAmountInPaise: Int
        
        public var aggregator: String
        
        public var merchantParams: [String: Any]
        
        public var phoneNumber: String
        
        public var payload: String
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
            case aggregator = "aggregator"
            
            case merchantParams = "merchant_params"
            
            case phoneNumber = "phone_number"
            
            case payload = "payload"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
            
            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            payload = try container.decode(String.self, forKey: .payload)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
        }
        
    }
    
    /*
        Model: ValidateCustomerResponse
        Used By: Payment
    */
    struct ValidateCustomerResponse: Codable {
        
        public var message: String
        
        public var success: Bool
        
        public var data: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerRequest
        Used By: Payment
    */
    struct ChargeCustomerRequest: Codable {
        
        public var amount: Int
        
        public var aggregator: String
        
        public var verified: Bool?
        
        public var orderId: String
        
        public var transactionToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case aggregator = "aggregator"
            
            case verified = "verified"
            
            case orderId = "order_id"
            
            case transactionToken = "transaction_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            transactionToken = try? container.decode(String.self, forKey: .transactionToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(transactionToken, forKey: .transactionToken)
            
        }
        
    }
    
    /*
        Model: ChargeCustomerResponse
        Used By: Payment
    */
    struct ChargeCustomerResponse: Codable {
        
        public var cartId: String?
        
        public var message: String
        
        public var aggregator: String
        
        public var success: Bool
        
        public var deliveryAddressId: String?
        
        public var status: String
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case cartId = "cart_id"
            
            case message = "message"
            
            case aggregator = "aggregator"
            
            case success = "success"
            
            case deliveryAddressId = "delivery_address_id"
            
            case status = "status"
            
            case orderId = "order_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cartId = try? container.decode(String.self, forKey: .cartId)
            
            message = try container.decode(String.self, forKey: .message)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            deliveryAddressId = try? container.decode(String.self, forKey: .deliveryAddressId)
            
            status = try container.decode(String.self, forKey: .status)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationRequest
        Used By: Payment
    */
    struct PaymentInitializationRequest: Codable {
        
        public var aggregator: String
        
        public var merchantOrderId: String
        
        public var aggregatorOrderId: String
        
        public var timeout: Int
        
        public var method: String
        
        public var razorpayPaymentId: String
        
        public var virtualId: String?
        
        public var pollingUrl: String
        
        public var customerId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case merchantOrderId = "merchant_order_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case timeout = "timeout"
            
            case method = "method"
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case virtualId = "virtual_id"
            
            case pollingUrl = "polling_url"
            
            case customerId = "customer_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
            
            timeout = try container.decode(Int.self, forKey: .timeout)
            
            method = try container.decode(String.self, forKey: .method)
            
            razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
            
            virtualId = try? container.decode(String.self, forKey: .virtualId)
            
            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            try? container.encodeIfPresent(virtualId, forKey: .virtualId)
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
        }
        
    }
    
    /*
        Model: PaymentInitializationResponse
        Used By: Payment
    */
    struct PaymentInitializationResponse: Codable {
        
        public var customerId: String
        
        public var email: String
        
        public var message: String?
        
        public var amount: Int
        
        public var aggregator: String
        
        public var success: Bool
        
        public var merchantOrderId: String
        
        public var vpa: String
        
        public var currency: String
        
        public var status: String
        
        public var method: String
        
        public var orderId: String
        
        public var contact: String
        

        public enum CodingKeys: String, CodingKey {
            
            case customerId = "customer_id"
            
            case email = "email"
            
            case message = "message"
            
            case amount = "amount"
            
            case aggregator = "aggregator"
            
            case success = "success"
            
            case merchantOrderId = "merchant_order_id"
            
            case vpa = "vpa"
            
            case currency = "currency"
            
            case status = "status"
            
            case method = "method"
            
            case orderId = "order_id"
            
            case contact = "contact"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            email = try container.decode(String.self, forKey: .email)
            
            message = try? container.decode(String.self, forKey: .message)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            currency = try container.decode(String.self, forKey: .currency)
            
            status = try container.decode(String.self, forKey: .status)
            
            method = try container.decode(String.self, forKey: .method)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            contact = try container.decode(String.self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateRequest
        Used By: Payment
    */
    struct PaymentStatusUpdateRequest: Codable {
        
        public var customerId: String
        
        public var email: String
        
        public var amount: Int
        
        public var aggregator: String
        
        public var merchantOrderId: String
        
        public var vpa: String
        
        public var currency: String
        
        public var status: String
        
        public var method: String
        
        public var orderId: String
        
        public var contact: String
        

        public enum CodingKeys: String, CodingKey {
            
            case customerId = "customer_id"
            
            case email = "email"
            
            case amount = "amount"
            
            case aggregator = "aggregator"
            
            case merchantOrderId = "merchant_order_id"
            
            case vpa = "vpa"
            
            case currency = "currency"
            
            case status = "status"
            
            case method = "method"
            
            case orderId = "order_id"
            
            case contact = "contact"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            email = try container.decode(String.self, forKey: .email)
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            vpa = try container.decode(String.self, forKey: .vpa)
            
            currency = try container.decode(String.self, forKey: .currency)
            
            status = try container.decode(String.self, forKey: .status)
            
            method = try container.decode(String.self, forKey: .method)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            contact = try container.decode(String.self, forKey: .contact)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: PaymentStatusUpdateResponse
        Used By: Payment
    */
    struct PaymentStatusUpdateResponse: Codable {
        
        public var aggregatorName: String
        
        public var retry: Bool
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case retry = "retry"
            
            case status = "status"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            retry = try container.decode(Bool.self, forKey: .retry)
            
            status = try container.decode(String.self, forKey: .status)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(retry, forKey: .retry)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsDetails
        Used By: Payment
    */
    struct PaymentOptionsDetails: Codable {
        
        public var paymentOption: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOption = "payment_option"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            paymentOption = try? container.decode([[String: Any]].self, forKey: .paymentOption)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsResponse
        Used By: Payment
    */
    struct PaymentOptionsResponse: Codable {
        
        public var success: Bool
        
        public var paymentOptions: PaymentOptionsDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case paymentOptions = "payment_options"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            paymentOptions = try container.decode(PaymentOptionsDetails.self, forKey: .paymentOptions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */
    struct OrderBeneficiaryDetails: Codable {
        
        public var subtitle: String
        
        public var address: String
        
        public var branchName: Bool?
        
        public var email: String
        
        public var beneficiaryId: String
        
        public var delightsUserName: String
        
        public var modifiedOn: String
        
        public var comment: Bool?
        
        public var accountHolder: String
        
        public var transferMode: String
        
        public var ifscCode: String
        
        public var title: String
        
        public var displayName: String
        
        public var id: Int
        
        public var mobile: Bool?
        
        public var createdOn: String
        
        public var accountNo: String
        
        public var isActive: Bool
        
        public var bankName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case address = "address"
            
            case branchName = "branch_name"
            
            case email = "email"
            
            case beneficiaryId = "beneficiary_id"
            
            case delightsUserName = "delights_user_name"
            
            case modifiedOn = "modified_on"
            
            case comment = "comment"
            
            case accountHolder = "account_holder"
            
            case transferMode = "transfer_mode"
            
            case ifscCode = "ifsc_code"
            
            case title = "title"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case mobile = "mobile"
            
            case createdOn = "created_on"
            
            case accountNo = "account_no"
            
            case isActive = "is_active"
            
            case bankName = "bank_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            subtitle = try container.decode(String.self, forKey: .subtitle)
            
            address = try container.decode(String.self, forKey: .address)
            
            branchName = try? container.decode(Bool.self, forKey: .branchName)
            
            email = try container.decode(String.self, forKey: .email)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            comment = try? container.decode(Bool.self, forKey: .comment)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            title = try container.decode(String.self, forKey: .title)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            id = try container.decode(Int.self, forKey: .id)
            
            mobile = try? container.decode(Bool.self, forKey: .mobile)
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryResponse
        Used By: Payment
    */
    struct OrderBeneficiaryResponse: Codable {
        
        public var beneficiaries: [OrderBeneficiaryDetails]
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaries = "beneficiaries"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(beneficiaries, forKey: .beneficiaries)
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Payment
    */
    struct NotFoundResourceError: Codable {
        
        public var description: String
        
        public var success: Bool
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case success = "success"
            
            case code = "code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try container.decode(String.self, forKey: .description)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            code = try container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: IfscCodeResponse
        Used By: Payment
    */
    struct IfscCodeResponse: Codable {
        
        public var branchName: String
        
        public var success: Bool?
        
        public var bankName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case success = "success"
            
            case bankName = "bank_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Payment
    */
    struct ErrorCodeDescription: Codable {
        
        public var description: String
        
        public var success: Bool
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case success = "success"
            
            case code = "code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try container.decode(String.self, forKey: .description)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            code = try container.decode(String.self, forKey: .code)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryViaOtpVerificationRequest
        Used By: Payment
    */
    struct AddBeneficiaryViaOtpVerificationRequest: Codable {
        
        public var requestId: String
        
        public var hashKey: String
        
        public var otp: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case hashKey = "hash_key"
            
            case otp = "otp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
            otp = try container.decode(String.self, forKey: .otp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryViaOtpVerificationResponse
        Used By: Payment
    */
    struct AddBeneficiaryViaOtpVerificationResponse: Codable {
        
        public var requestId: String
        
        public var hashKey: String
        
        public var otp: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case hashKey = "hash_key"
            
            case otp = "otp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            hashKey = try container.decode(String.self, forKey: .hashKey)
            
            otp = try container.decode(String.self, forKey: .otp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
        }
        
    }
    
    /*
        Model: WrongOtpError
        Used By: Payment
    */
    struct WrongOtpError: Codable {
        
        public var success: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case description = "description"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(String.self, forKey: .success)
            
            description = try container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: BankDetails
        Used By: Payment
    */
    struct BankDetails: Codable {
        
        public var email: String
        
        public var branchName: String
        
        public var ifscCode: String
        
        public var mobile: String
        
        public var accountNo: String
        
        public var address: String
        
        public var comment: String?
        
        public var accountHolder: String
        
        public var bankName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case branchName = "branch_name"
            
            case ifscCode = "ifsc_code"
            
            case mobile = "mobile"
            
            case accountNo = "account_no"
            
            case address = "address"
            
            case comment = "comment"
            
            case accountHolder = "account_holder"
            
            case bankName = "bank_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try container.decode(String.self, forKey: .email)
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            address = try container.decode(String.self, forKey: .address)
            
            comment = try? container.decode(String.self, forKey: .comment)
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */
    struct AddBeneficiaryDetailsRequest: Codable {
        
        public var delights: Bool
        
        public var transferMode: String
        
        public var shipmentId: String
        
        public var orderId: String
        
        public var details: BankDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case delights = "delights"
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case details = "details"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            delights = try container.decode(Bool.self, forKey: .delights)
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            details = try container.decode(BankDetails.self, forKey: .details)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(details, forKey: .details)
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Payment
    */
    struct RefundAccountResponse: Codable {
        
        public var message: String
        
        public var success: Bool
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try container.decode(String.self, forKey: .message)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try? container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: WalletOtpRequest
        Used By: Payment
    */
    struct WalletOtpRequest: Codable {
        
        public var countryCode: String
        
        public var mobile: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case mobile = "mobile"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try container.decode(String.self, forKey: .countryCode)
            
            mobile = try container.decode(Bool.self, forKey: .mobile)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
        }
        
    }
    
    /*
        Model: WalletOtpResponse
        Used By: Payment
    */
    struct WalletOtpResponse: Codable {
        
        public var requestId: String
        
        public var isVerifiedFlag: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case success = "success"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryRequest
        Used By: Payment
    */
    struct SetDefaultBeneficiaryRequest: Codable {
        
        public var orderId: String
        
        public var beneficiaryId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
        }
        
    }
    
    /*
        Model: SetDefaultBeneficiaryResponse
        Used By: Payment
    */
    struct SetDefaultBeneficiaryResponse: Codable {
        
        public var success: Bool?
        
        public var isBeneficiarySet: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isBeneficiarySet = "is_beneficiary_set"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
            
        }
        
    }
    
    
    
    /*
        Model: ApefaceApiError
        Used By: Order
    */
    struct ApefaceApiError: Codable {
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: OrderById
        Used By: Order
    */
    struct OrderById: Codable {
        
        public var order: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            order = try container.decode([String: Any].self, forKey: .order)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(order, forKey: .order)
            
        }
        
    }
    
    /*
        Model: OrderList
        Used By: Order
    */
    struct OrderList: Codable {
        
        public var orders: [[String: Any]]
        
        public var page: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case orders = "orders"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            orders = try container.decode([[String: Any]].self, forKey: .orders)
            
            page = try container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(orders, forKey: .orders)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ShipmentById
        Used By: Order
    */
    struct ShipmentById: Codable {
        
        public var shipment: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipment = "shipment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipment = try container.decode([String: Any].self, forKey: .shipment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
        }
        
    }
    
    /*
        Model: ShipmentReasons
        Used By: Order
    */
    struct ShipmentReasons: Codable {
        
        public var reasons: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            reasons = try container.decode([[String: Any]].self, forKey: .reasons)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
        }
        
    }
    
    /*
        Model: ShipmentStatusUpdateBody
        Used By: Order
    */
    struct ShipmentStatusUpdateBody: Codable {
        
        public var shipments: [String: Any]
        
        public var forceTransition: Bool
        
        public var task: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case forceTransition = "force_transition"
            
            case task = "task"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([String: Any].self, forKey: .shipments)
            
            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
            
            task = try container.decode(Bool.self, forKey: .task)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
            
            try? container.encodeIfPresent(task, forKey: .task)
            
        }
        
    }
    
    /*
        Model: ShipmentStatusUpdate
        Used By: Order
    */
    struct ShipmentStatusUpdate: Codable {
        
        public var shipments: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([String: Any].self, forKey: .shipments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
        }
        
    }
    
    /*
        Model: ShipmentTrack
        Used By: Order
    */
    struct ShipmentTrack: Codable {
        
        public var results: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            results = try container.decode([[String: Any]].self, forKey: .results)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(results, forKey: .results)
            
        }
        
    }
    
    
    
    /*
        Model: Action
        Used By: Rewards
    */
    struct Action: Codable {
        
    }
    
    /*
        Model: Article
        Used By: Rewards
    */
    struct Article: Codable {
        
        public var id: String?
        
        public var points: Double?
        
        public var price: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case points = "points"
            
            case price = "price"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            price = try? container.decode(Double.self, forKey: .price)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(price, forKey: .price)
            
        }
        
    }
    
    /*
        Model: Asset
        Used By: Rewards
    */
    struct Asset: Codable {
        
    }
    
    /*
        Model: CatalogueOrderRequest
        Used By: Rewards
    */
    struct CatalogueOrderRequest: Codable {
        
        public var articles: [Article]?
        

        public enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articles = try? container.decode([Article].self, forKey: .articles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
        }
        
    }
    
    /*
        Model: CatalogueOrderResponse
        Used By: Rewards
    */
    struct CatalogueOrderResponse: Codable {
        
        public var articles: [Article]?
        

        public enum CodingKeys: String, CodingKey {
            
            case articles = "articles"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articles = try? container.decode([Article].self, forKey: .articles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
        }
        
    }
    
    /*
        Model: CursorPage
        Used By: Rewards
    */
    struct CursorPage: Codable {
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Discount
        Used By: Rewards
    */
    struct Discount: Codable {
        
        public var absolute: Double?
        
        public var currency: String?
        
        public var displayAbsolute: String?
        
        public var displayPercent: String?
        
        public var percent: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case absolute = "absolute"
            
            case currency = "currency"
            
            case displayAbsolute = "display_absolute"
            
            case displayPercent = "display_percent"
            
            case percent = "percent"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            absolute = try? container.decode(Double.self, forKey: .absolute)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            displayAbsolute = try? container.decode(String.self, forKey: .displayAbsolute)
            
            displayPercent = try? container.decode(String.self, forKey: .displayPercent)
            
            percent = try? container.decode(Double.self, forKey: .percent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(absolute, forKey: .absolute)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(displayAbsolute, forKey: .displayAbsolute)
            
            try? container.encodeIfPresent(displayPercent, forKey: .displayPercent)
            
            try? container.encodeIfPresent(percent, forKey: .percent)
            
        }
        
    }
    
    /*
        Model: Error
        Used By: Rewards
    */
    struct Error: Codable {
        
        public var code: Int?
        
        public var exception: String?
        
        public var info: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case exception = "exception"
            
            case info = "info"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Int.self, forKey: .code)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            info = try? container.decode(String.self, forKey: .info)
            
            message = try? container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(info, forKey: .info)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: Offer
        Used By: Rewards
    */
    struct Offer: Codable {
        
        public var schedule: String?
        
        public var active: Bool?
        
        public var applicationId: String?
        
        public var bannerImage: Asset?
        
        public var createdAt: String?
        
        public var infoAction: Action?
        
        public var name: String?
        
        public var rule: [String: Any]?
        
        public var share: ShareMessages?
        
        public var subText: String?
        
        public var text: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var updatedBy: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case active = "active"
            
            case applicationId = "application_id"
            
            case bannerImage = "banner_image"
            
            case createdAt = "created_at"
            
            case infoAction = "info_action"
            
            case name = "name"
            
            case rule = "rule"
            
            case share = "share"
            
            case subText = "sub_text"
            
            case text = "text"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            schedule = try? container.decode(String.self, forKey: .schedule)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            bannerImage = try? container.decode(Asset.self, forKey: .bannerImage)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            infoAction = try? container.decode(Action.self, forKey: .infoAction)
            
            name = try? container.decode(String.self, forKey: .name)
            
            rule = try? container.decode([String: Any].self, forKey: .rule)
            
            share = try? container.decode(ShareMessages.self, forKey: .share)
            
            subText = try? container.decode(String.self, forKey: .subText)
            
            text = try? container.decode(String.self, forKey: .text)
            
            type = try? container.decode(String.self, forKey: .type)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            updatedBy = try? container.decode(String.self, forKey: .updatedBy)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(infoAction, forKey: .infoAction)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            try? container.encodeIfPresent(share, forKey: .share)
            
            try? container.encodeIfPresent(subText, forKey: .subText)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: OrderDiscountRequest
        Used By: Rewards
    */
    struct OrderDiscountRequest: Codable {
        
        public var currency: String?
        
        public var orderAmount: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case orderAmount = "order_amount"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            currency = try? container.decode(String.self, forKey: .currency)
            
            orderAmount = try container.decode(Double.self, forKey: .orderAmount)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
        }
        
    }
    
    /*
        Model: OrderDiscountResponse
        Used By: Rewards
    */
    struct OrderDiscountResponse: Codable {
        
        public var appliedRuleBucket: OrderDiscountRuleBucket?
        
        public var baseDiscount: Discount?
        
        public var discount: Discount?
        
        public var orderAmount: Double?
        
        public var points: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case appliedRuleBucket = "applied_rule_bucket"
            
            case baseDiscount = "base_discount"
            
            case discount = "discount"
            
            case orderAmount = "order_amount"
            
            case points = "points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appliedRuleBucket = try? container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)
            
            baseDiscount = try? container.decode(Discount.self, forKey: .baseDiscount)
            
            discount = try? container.decode(Discount.self, forKey: .discount)
            
            orderAmount = try? container.decode(Double.self, forKey: .orderAmount)
            
            points = try? container.decode(Double.self, forKey: .points)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appliedRuleBucket, forKey: .appliedRuleBucket)
            
            try? container.encodeIfPresent(baseDiscount, forKey: .baseDiscount)
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
        }
        
    }
    
    /*
        Model: OrderDiscountRuleBucket
        Used By: Rewards
    */
    struct OrderDiscountRuleBucket: Codable {
        
        public var high: Double?
        
        public var low: Double?
        
        public var max: Double?
        
        public var value: Double?
        
        public var valueType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case high = "high"
            
            case low = "low"
            
            case max = "max"
            
            case value = "value"
            
            case valueType = "value_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            high = try? container.decode(Double.self, forKey: .high)
            
            low = try? container.decode(Double.self, forKey: .low)
            
            max = try? container.decode(Double.self, forKey: .max)
            
            value = try? container.decode(Double.self, forKey: .value)
            
            valueType = try? container.decode(String.self, forKey: .valueType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(high, forKey: .high)
            
            try? container.encodeIfPresent(low, forKey: .low)
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
        }
        
    }
    
    /*
        Model: PointsHistory
        Used By: Rewards
    */
    struct PointsHistory: Codable {
        
        public var id: String?
        
        public var applicationId: String?
        
        public var claimed: Bool?
        
        public var createdAt: String?
        
        public var expiresOn: String?
        
        public var meta: String?
        
        public var points: Double?
        
        public var remainingPoints: Double?
        
        public var text1: String?
        
        public var text2: String?
        
        public var text3: String?
        
        public var txnName: String?
        
        public var updatedAt: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case claimed = "claimed"
            
            case createdAt = "created_at"
            
            case expiresOn = "expires_on"
            
            case meta = "meta"
            
            case points = "points"
            
            case remainingPoints = "remaining_points"
            
            case text1 = "text_1"
            
            case text2 = "text_2"
            
            case text3 = "text_3"
            
            case txnName = "txn_name"
            
            case updatedAt = "updated_at"
            
            case userId = "user_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            claimed = try? container.decode(Bool.self, forKey: .claimed)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            expiresOn = try? container.decode(String.self, forKey: .expiresOn)
            
            meta = try? container.decode(String.self, forKey: .meta)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            remainingPoints = try? container.decode(Double.self, forKey: .remainingPoints)
            
            text1 = try? container.decode(String.self, forKey: .text1)
            
            text2 = try? container.decode(String.self, forKey: .text2)
            
            text3 = try? container.decode(String.self, forKey: .text3)
            
            txnName = try? container.decode(String.self, forKey: .txnName)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(claimed, forKey: .claimed)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(remainingPoints, forKey: .remainingPoints)
            
            try? container.encodeIfPresent(text1, forKey: .text1)
            
            try? container.encodeIfPresent(text2, forKey: .text2)
            
            try? container.encodeIfPresent(text3, forKey: .text3)
            
            try? container.encodeIfPresent(txnName, forKey: .txnName)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
        }
        
    }
    
    /*
        Model: PointsHistoryResponse
        Used By: Rewards
    */
    struct PointsHistoryResponse: Codable {
        
        public var history: [PointsHistory]?
        
        public var page: CursorPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case history = "history"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            history = try? container.decode([PointsHistory].self, forKey: .history)
            
            page = try? container.decode(CursorPage.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(history, forKey: .history)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: PointsResponse
        Used By: Rewards
    */
    struct PointsResponse: Codable {
        
        public var points: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case points = "points"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            points = try? container.decode(Double.self, forKey: .points)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
        }
        
    }
    
    /*
        Model: RedeemReferralCodeRequest
        Used By: Rewards
    */
    struct RedeemReferralCodeRequest: Codable {
        
        public var deviceId: String
        
        public var referralCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case deviceId = "device_id"
            
            case referralCode = "referral_code"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            deviceId = try container.decode(String.self, forKey: .deviceId)
            
            referralCode = try container.decode(String.self, forKey: .referralCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
            
        }
        
    }
    
    /*
        Model: RedeemReferralCodeResponse
        Used By: Rewards
    */
    struct RedeemReferralCodeResponse: Codable {
        
        public var message: String?
        
        public var points: Double?
        
        public var redeemed: Bool?
        
        public var referrerId: String?
        
        public var referrerInfo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case points = "points"
            
            case redeemed = "redeemed"
            
            case referrerId = "referrer_id"
            
            case referrerInfo = "referrer_info"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            message = try? container.decode(String.self, forKey: .message)
            
            points = try? container.decode(Double.self, forKey: .points)
            
            redeemed = try? container.decode(Bool.self, forKey: .redeemed)
            
            referrerId = try? container.decode(String.self, forKey: .referrerId)
            
            referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(points, forKey: .points)
            
            try? container.encodeIfPresent(redeemed, forKey: .redeemed)
            
            try? container.encodeIfPresent(referrerId, forKey: .referrerId)
            
            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
            
        }
        
    }
    
    /*
        Model: ReferralDetailsResponse
        Used By: Rewards
    */
    struct ReferralDetailsResponse: Codable {
        
        public var referral: Offer?
        
        public var referrerInfo: String?
        
        public var share: ShareMessages?
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case referral = "referral"
            
            case referrerInfo = "referrer_info"
            
            case share = "share"
            
            case user = "user"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            referral = try? container.decode(Offer.self, forKey: .referral)
            
            referrerInfo = try? container.decode(String.self, forKey: .referrerInfo)
            
            share = try? container.decode(ShareMessages.self, forKey: .share)
            
            user = try? container.decode([String: Any].self, forKey: .user)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(referral, forKey: .referral)
            
            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
            
            try? container.encodeIfPresent(share, forKey: .share)
            
            try? container.encodeIfPresent(user, forKey: .user)
            
        }
        
    }
    
    /*
        Model: ShareMessages
        Used By: Rewards
    */
    struct ShareMessages: Codable {
        
        public var email: String?
        
        public var facebook: String?
        
        public var fallback: String?
        
        public var message: String?
        
        public var messenger: String?
        
        public var sms: String?
        
        public var text: String?
        
        public var twitter: String?
        
        public var whatsapp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case facebook = "facebook"
            
            case fallback = "fallback"
            
            case message = "message"
            
            case messenger = "messenger"
            
            case sms = "sms"
            
            case text = "text"
            
            case twitter = "twitter"
            
            case whatsapp = "whatsapp"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            email = try? container.decode(String.self, forKey: .email)
            
            facebook = try? container.decode(String.self, forKey: .facebook)
            
            fallback = try? container.decode(String.self, forKey: .fallback)
            
            message = try? container.decode(String.self, forKey: .message)
            
            messenger = try? container.decode(String.self, forKey: .messenger)
            
            sms = try? container.decode(String.self, forKey: .sms)
            
            text = try? container.decode(String.self, forKey: .text)
            
            twitter = try? container.decode(String.self, forKey: .twitter)
            
            whatsapp = try? container.decode(String.self, forKey: .whatsapp)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            try? container.encodeIfPresent(facebook, forKey: .facebook)
            
            try? container.encodeIfPresent(fallback, forKey: .fallback)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(messenger, forKey: .messenger)
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(twitter, forKey: .twitter)
            
            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
            
        }
        
    }
    
    
    
    /*
        Model: Access
        Used By: Feedback
    */
    struct Access: Codable {
        
        public var answer: Bool?
        
        public var askQuestion: Bool?
        
        public var comment: Bool?
        
        public var rnr: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case answer = "answer"
            
            case askQuestion = "ask_question"
            
            case comment = "comment"
            
            case rnr = "rnr"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            answer = try? container.decode(Bool.self, forKey: .answer)
            
            askQuestion = try? container.decode(Bool.self, forKey: .askQuestion)
            
            comment = try? container.decode(Bool.self, forKey: .comment)
            
            rnr = try? container.decode(Bool.self, forKey: .rnr)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(answer, forKey: .answer)
            
            try? container.encodeIfPresent(askQuestion, forKey: .askQuestion)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(rnr, forKey: .rnr)
            
        }
        
    }
    
    /*
        Model: AddMediaListRequest
        Used By: Feedback
    */
    struct AddMediaListRequest: Codable {
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaList: [AddMediaRequest]?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaList = "media_list"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaList = try? container.decode([AddMediaRequest].self, forKey: .mediaList)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaList, forKey: .mediaList)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: AddMediaRequest
        Used By: Feedback
    */
    struct AddMediaRequest: Codable {
        
        public var cloudId: String?
        
        public var cloudName: String?
        
        public var cloudProvider: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaUrl: String?
        
        public var refId: String?
        
        public var refType: String?
        
        public var tags: [String]?
        
        public var thumbnailUrl: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cloudId = "cloud_id"
            
            case cloudName = "cloud_name"
            
            case cloudProvider = "cloud_provider"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaUrl = "media_url"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
            case tags = "tags"
            
            case thumbnailUrl = "thumbnail_url"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cloudId = try? container.decode(String.self, forKey: .cloudId)
            
            cloudName = try? container.decode(String.self, forKey: .cloudName)
            
            cloudProvider = try? container.decode(String.self, forKey: .cloudProvider)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaUrl = try? container.decode(String.self, forKey: .mediaUrl)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            thumbnailUrl = try? container.decode(String.self, forKey: .thumbnailUrl)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cloudId, forKey: .cloudId)
            
            try? container.encodeIfPresent(cloudName, forKey: .cloudName)
            
            try? container.encodeIfPresent(cloudProvider, forKey: .cloudProvider)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaUrl, forKey: .mediaUrl)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Attribute
        Used By: Feedback
    */
    struct Attribute: Codable {
        
        public var createdOn: String?
        
        public var description: String?
        
        public var id: String?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var tags: [TagMeta]?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case description = "description"
            
            case id = "id"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case slug = "slug"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            description = try? container.decode(String.self, forKey: .description)
            
            id = try? container.decode(String.self, forKey: .id)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            name = try? container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            tags = try? container.decode([TagMeta].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AttributeObject
        Used By: Feedback
    */
    struct AttributeObject: Codable {
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        
        public var title: String?
        
        public var type: String
        
        public var value: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
            case title = "title"
            
            case type = "type"
            
            case value = "value"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
            title = try? container.decode(String.self, forKey: .title)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode(Double.self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: CheckEligibilityResponse
        Used By: Feedback
    */
    struct CheckEligibilityResponse: Codable {
        
        public var access: Access?
        
        public var mediaCloud: MediaCloud?
        

        public enum CodingKeys: String, CodingKey {
            
            case access = "access"
            
            case mediaCloud = "media_cloud"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            access = try? container.decode(Access.self, forKey: .access)
            
            mediaCloud = try? container.decode(MediaCloud.self, forKey: .mediaCloud)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(access, forKey: .access)
            
            try? container.encodeIfPresent(mediaCloud, forKey: .mediaCloud)
            
        }
        
    }
    
    /*
        Model: Cloud
        Used By: Feedback
    */
    struct Cloud: Codable {
        
        public var id: String?
        
        public var name: String?
        
        public var provider: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case provider = "provider"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
            name = try? container.decode(String.self, forKey: .name)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
        }
        
    }
    
    /*
        Model: CommentRequest
        Used By: Feedback
    */
    struct CommentRequest: Codable {
        
        public var comment: [String]
        
        public var entityId: String
        
        public var entityType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            comment = try container.decode([String].self, forKey: .comment)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
        }
        
    }
    
    /*
        Model: CreateQNARequest
        Used By: Feedback
    */
    struct CreateQNARequest: Codable {
        
        public var choices: [String]?
        
        public var entityId: String
        
        public var entityType: String
        
        public var maxLen: Int?
        
        public var sortPriority: Int?
        
        public var tags: [String]?
        
        public var text: String
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case choices = "choices"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case maxLen = "max_len"
            
            case sortPriority = "sort_priority"
            
            case tags = "tags"
            
            case text = "text"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            choices = try? container.decode([String].self, forKey: .choices)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
            maxLen = try? container.decode(Int.self, forKey: .maxLen)
            
            sortPriority = try? container.decode(Int.self, forKey: .sortPriority)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            text = try container.decode(String.self, forKey: .text)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(choices, forKey: .choices)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(maxLen, forKey: .maxLen)
            
            try? container.encodeIfPresent(sortPriority, forKey: .sortPriority)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: DeviceMeta
        Used By: Feedback
    */
    struct DeviceMeta: Codable {
        
        public var appVersion: String?
        
        public var platform: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appVersion = "app_version"
            
            case platform = "platform"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appVersion = try? container.decode(String.self, forKey: .appVersion)
            
            platform = try? container.decode(String.self, forKey: .platform)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appVersion, forKey: .appVersion)
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
        Used By: Feedback
    */
    struct ErrorResponse: Codable {
        
    }
    
    /*
        Model: MediaCloud
        Used By: Feedback
    */
    struct MediaCloud: Codable {
        
        public var key: String?
        
        public var name: String?
        
        public var namespace: String?
        
        public var path: String?
        
        public var provider: String?
        
        public var secret: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case name = "name"
            
            case namespace = "namespace"
            
            case path = "path"
            
            case provider = "provider"
            
            case secret = "secret"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try? container.decode(String.self, forKey: .key)
            
            name = try? container.decode(String.self, forKey: .name)
            
            namespace = try? container.decode(String.self, forKey: .namespace)
            
            path = try? container.decode(String.self, forKey: .path)
            
            provider = try? container.decode(String.self, forKey: .provider)
            
            secret = try? container.decode(String.self, forKey: .secret)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
        }
        
    }
    
    /*
        Model: MediaMeta
        Used By: Feedback
    */
    struct MediaMeta: Codable {
        
        public var cloud: Cloud?
        
        public var comment: [String]?
        
        public var description: String?
        
        public var id: String?
        
        public var type: String?
        
        public var url: Url?
        

        public enum CodingKeys: String, CodingKey {
            
            case cloud = "cloud"
            
            case comment = "comment"
            
            case description = "description"
            
            case id = "id"
            
            case type = "type"
            
            case url = "url"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            cloud = try? container.decode(Cloud.self, forKey: .cloud)
            
            comment = try? container.decode([String].self, forKey: .comment)
            
            description = try? container.decode(String.self, forKey: .description)
            
            id = try? container.decode(String.self, forKey: .id)
            
            type = try? container.decode(String.self, forKey: .type)
            
            url = try? container.decode(Url.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(cloud, forKey: .cloud)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: PageCursor
        Used By: Feedback
    */
    struct PageCursor: Codable {
        
        public var hasNext: Bool?
        
        public var hasPrevious: Bool?
        
        public var itemTotal: Int?
        
        public var nextId: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case hasNext = "has_next"
            
            case hasPrevious = "has_previous"
            
            case itemTotal = "item_total"
            
            case nextId = "next_id"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            hasPrevious = try? container.decode(Bool.self, forKey: .hasPrevious)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            nextId = try? container.decode(String.self, forKey: .nextId)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(nextId, forKey: .nextId)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: PageNumber
        Used By: Feedback
    */
    struct PageNumber: Codable {
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        
        public var size: Int?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
            case size = "size"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ReportAbuseRequest
        Used By: Feedback
    */
    struct ReportAbuseRequest: Codable {
        
        public var description: String?
        
        public var entityId: String
        
        public var entityType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            entityId = try container.decode(String.self, forKey: .entityId)
            
            entityType = try container.decode(String.self, forKey: .entityType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
        }
        
    }
    
    /*
        Model: SaveAttributeRequest
        Used By: Feedback
    */
    struct SaveAttributeRequest: Codable {
        
        public var description: String?
        
        public var name: String
        
        public var slug: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: TagMeta
        Used By: Feedback
    */
    struct TagMeta: Codable {
        
        public var media: [MediaMeta]?
        
        public var name: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case media = "media"
            
            case name = "name"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            media = try? container.decode([MediaMeta].self, forKey: .media)
            
            name = try? container.decode(String.self, forKey: .name)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: UpdateAbuseStatusRequest
        Used By: Feedback
    */
    struct UpdateAbuseStatusRequest: Codable {
        
        public var abusive: Bool?
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var description: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case abusive = "abusive"
            
            case active = "active"
            
            case approve = "approve"
            
            case description = "description"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            abusive = try? container.decode(Bool.self, forKey: .abusive)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            description = try? container.decode(String.self, forKey: .description)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            id = try? container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(abusive, forKey: .abusive)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: UpdateAttributeRequest
        Used By: Feedback
    */
    struct UpdateAttributeRequest: Codable {
        
        public var description: String?
        
        public var name: String
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case name = "name"
            
            case slug = "slug"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            description = try? container.decode(String.self, forKey: .description)
            
            name = try container.decode(String.self, forKey: .name)
            
            slug = try? container.decode(String.self, forKey: .slug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
        }
        
    }
    
    /*
        Model: UpdateCommentRequest
        Used By: Feedback
    */
    struct UpdateCommentRequest: Codable {
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var comment: [String]
        
        public var id: String
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case approve = "approve"
            
            case comment = "comment"
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            comment = try container.decode([String].self, forKey: .comment)
            
            id = try container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    /*
        Model: UpdateMediaListRequest
        Used By: Feedback
    */
    struct UpdateMediaListRequest: Codable {
        
        public var approve: Bool?
        
        public var archive: Bool?
        
        public var entityType: String?
        
        public var ids: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case approve = "approve"
            
            case archive = "archive"
            
            case entityType = "entity_type"
            
            case ids = "ids"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            ids = try? container.decode([String].self, forKey: .ids)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
        }
        
    }
    
    /*
        Model: UpdateQNARequest
        Used By: Feedback
    */
    struct UpdateQNARequest: Codable {
        
        public var active: Bool?
        
        public var approve: Bool?
        
        public var choices: [String]?
        
        public var id: String?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case approve = "approve"
            
            case choices = "choices"
            
            case id = "id"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            choices = try? container.decode([String].self, forKey: .choices)
            
            id = try? container.decode(String.self, forKey: .id)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(choices, forKey: .choices)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: UpdateReviewRequest
        Used By: Feedback
    */
    struct UpdateReviewRequest: Codable {
        
        public var active: Bool?
        
        public var application: String?
        
        public var approve: Bool?
        
        public var archive: Bool?
        
        public var attributesRating: [AttributeObject]?
        
        public var description: String?
        
        public var deviceMeta: DeviceMeta?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var mediaResource: [MediaMeta]?
        
        public var rating: Double?
        
        public var reviewId: String?
        
        public var templateId: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case application = "application"
            
            case approve = "approve"
            
            case archive = "archive"
            
            case attributesRating = "attributes_rating"
            
            case description = "description"
            
            case deviceMeta = "device_meta"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case mediaResource = "media_resource"
            
            case rating = "rating"
            
            case reviewId = "review_id"
            
            case templateId = "template_id"
            
            case title = "title"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            application = try? container.decode(String.self, forKey: .application)
            
            approve = try? container.decode(Bool.self, forKey: .approve)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            attributesRating = try? container.decode([AttributeObject].self, forKey: .attributesRating)
            
            description = try? container.decode(String.self, forKey: .description)
            
            deviceMeta = try? container.decode(DeviceMeta.self, forKey: .deviceMeta)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            mediaResource = try? container.decode([MediaMeta].self, forKey: .mediaResource)
            
            rating = try? container.decode(Double.self, forKey: .rating)
            
            reviewId = try? container.decode(String.self, forKey: .reviewId)
            
            templateId = try? container.decode(String.self, forKey: .templateId)
            
            title = try? container.decode(String.self, forKey: .title)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(approve, forKey: .approve)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(attributesRating, forKey: .attributesRating)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(deviceMeta, forKey: .deviceMeta)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(mediaResource, forKey: .mediaResource)
            
            try? container.encodeIfPresent(rating, forKey: .rating)
            
            try? container.encodeIfPresent(reviewId, forKey: .reviewId)
            
            try? container.encodeIfPresent(templateId, forKey: .templateId)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
        }
        
    }
    
    /*
        Model: UpdateVoteRequest
        Used By: Feedback
    */
    struct UpdateVoteRequest: Codable {
        
        public var action: String?
        
        public var active: Bool?
        
        public var id: String?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case active = "active"
            
            case id = "id"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            id = try? container.decode(String.self, forKey: .id)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: Url
        Used By: Feedback
    */
    struct Url: Codable {
        
        public var main: String?
        
        public var thumbnail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case main = "main"
            
            case thumbnail = "thumbnail"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            main = try? container.decode(String.self, forKey: .main)
            
            thumbnail = try? container.decode(String.self, forKey: .thumbnail)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(main, forKey: .main)
            
            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
            
        }
        
    }
    
    /*
        Model: VoteRequest
        Used By: Feedback
    */
    struct VoteRequest: Codable {
        
        public var action: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var refId: String?
        
        public var refType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case refId = "ref_id"
            
            case refType = "ref_type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            action = try? container.decode(String.self, forKey: .action)
            
            entityId = try? container.decode(String.self, forKey: .entityId)
            
            entityType = try? container.decode(String.self, forKey: .entityType)
            
            refId = try? container.decode(String.self, forKey: .refId)
            
            refType = try? container.decode(String.self, forKey: .refType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            try? container.encodeIfPresent(refId, forKey: .refId)
            
            try? container.encodeIfPresent(refType, forKey: .refType)
            
        }
        
    }
    
    /*
        Model: XCursorGetResponse
        Used By: Feedback
    */
    struct XCursorGetResponse: Codable {
        
        public var items: [String: Any]?
        
        public var page: PageCursor?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([String: Any].self, forKey: .items)
            
            page = try? container.decode(PageCursor.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: XInsertResponse
        Used By: Feedback
    */
    struct XInsertResponse: Codable {
        
        public var ids: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ids = "ids"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ids = try? container.decode(String.self, forKey: .ids)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ids, forKey: .ids)
            
        }
        
    }
    
    /*
        Model: XNumberGetResponse
        Used By: Feedback
    */
    struct XNumberGetResponse: Codable {
        
        public var items: [String: Any]?
        
        public var page: PageNumber?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([String: Any].self, forKey: .items)
            
            page = try? container.decode(PageNumber.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: XUpdateResponse
        Used By: Feedback
    */
    struct XUpdateResponse: Codable {
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            id = try? container.decode(String.self, forKey: .id)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
        }
        
    }
    
    
    
    /*
        Model: CouponBreakup
        Used By: PosCart
    */
    struct CouponBreakup: Codable {
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: PosCart
    */
    struct LoyaltyPoints: Codable {
        
    }
    
    /*
        Model: RawBreakup
        Used By: PosCart
    */
    struct RawBreakup: Codable {
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: PosCart
    */
    struct DisplayBreakup: Codable {
        
    }
    
    /*
        Model: CartBreakup
        Used By: PosCart
    */
    struct CartBreakup: Codable {
        
    }
    
    /*
        Model: PaymentOption
        Used By: PosCart
    */
    struct PaymentOption: Codable {
        
    }
    
    /*
        Model: PaymentFlow
        Used By: PosCart
    */
    struct PaymentFlow: Codable {
        
    }
    
    /*
        Model: PaymentFlows
        Used By: PosCart
    */
    struct PaymentFlows: Codable {
        
    }
    
    /*
        Model: PaymentOptions
        Used By: PosCart
    */
    struct PaymentOptions: Codable {
        
    }
    
    /*
        Model: CartCurrency
        Used By: PosCart
    */
    struct CartCurrency: Codable {
        
    }
    
    /*
        Model: BaseInfo
        Used By: PosCart
    */
    struct BaseInfo: Codable {
        
    }
    
    /*
        Model: Image
        Used By: PosCart
    */
    struct Image: Codable {
        
    }
    
    /*
        Model: CategoryInfo
        Used By: PosCart
    */
    struct CategoryInfo: Codable {
        
    }
    
    /*
        Model: ActionQuery
        Used By: PosCart
    */
    struct ActionQuery: Codable {
        
    }
    
    /*
        Model: Action
        Used By: PosCart
    */
    struct Action: Codable {
        
    }
    
    /*
        Model: Product
        Used By: PosCart
    */
    struct Product: Codable {
        
    }
    
    /*
        Model: ProductPrice
        Used By: PosCart
    */
    struct ProductPrice: Codable {
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: PosCart
    */
    struct ProductPriceInfo: Codable {
        
    }
    
    /*
        Model: ProductAvailability
        Used By: PosCart
    */
    struct ProductAvailability: Codable {
        
    }
    
    /*
        Model: CartProductInfo
        Used By: PosCart
    */
    struct CartProductInfo: Codable {
        
    }
    
    /*
        Model: CartResponse
        Used By: PosCart
    */
    struct CartResponse: Codable {
        
    }
    
    /*
        Model: AddProductCart
        Used By: PosCart
    */
    struct AddProductCart: Codable {
        
    }
    
    /*
        Model: AddCartRequest
        Used By: PosCart
    */
    struct AddCartRequest: Codable {
        
    }
    
    /*
        Model: AddCartResponse
        Used By: PosCart
    */
    struct AddCartResponse: Codable {
        
    }
    
    /*
        Model: UpdateProductCart
        Used By: PosCart
    */
    struct UpdateProductCart: Codable {
        
    }
    
    /*
        Model: UpdateCartRequest
        Used By: PosCart
    */
    struct UpdateCartRequest: Codable {
        
    }
    
    /*
        Model: UpdateCartResponse
        Used By: PosCart
    */
    struct UpdateCartResponse: Codable {
        
    }
    
    /*
        Model: CartItemCountResponse
        Used By: PosCart
    */
    struct CartItemCountResponse: Codable {
        
    }
    
    /*
        Model: PageCoupon
        Used By: PosCart
    */
    struct PageCoupon: Codable {
        
    }
    
    /*
        Model: Coupon
        Used By: PosCart
    */
    struct Coupon: Codable {
        
    }
    
    /*
        Model: GetCouponResponse
        Used By: PosCart
    */
    struct GetCouponResponse: Codable {
        
    }
    
    /*
        Model: ApplyCouponRequest
        Used By: PosCart
    */
    struct ApplyCouponRequest: Codable {
        
    }
    
    /*
        Model: CartCoupon
        Used By: PosCart
    */
    struct CartCoupon: Codable {
        
    }
    
    /*
        Model: RawCartCoupon
        Used By: PosCart
    */
    struct RawCartCoupon: Codable {
        
    }
    
    /*
        Model: SaveCoupon
        Used By: PosCart
    */
    struct SaveCoupon: Codable {
        
    }
    
    /*
        Model: SaveCouponResponse
        Used By: PosCart
    */
    struct SaveCouponResponse: Codable {
        
    }
    
    /*
        Model: OfferSeller
        Used By: PosCart
    */
    struct OfferSeller: Codable {
        
    }
    
    /*
        Model: OfferPrice
        Used By: PosCart
    */
    struct OfferPrice: Codable {
        
    }
    
    /*
        Model: OfferItem
        Used By: PosCart
    */
    struct OfferItem: Codable {
        
    }
    
    /*
        Model: BulkPriceOffer
        Used By: PosCart
    */
    struct BulkPriceOffer: Codable {
        
    }
    
    /*
        Model: BulkPriceResponse
        Used By: PosCart
    */
    struct BulkPriceResponse: Codable {
        
    }
    
    /*
        Model: GeoLocation
        Used By: PosCart
    */
    struct GeoLocation: Codable {
        
    }
    
    /*
        Model: Address
        Used By: PosCart
    */
    struct Address: Codable {
        
    }
    
    /*
        Model: GetAddressResponse
        Used By: PosCart
    */
    struct GetAddressResponse: Codable {
        
    }
    
    /*
        Model: SaveAddressRequest
        Used By: PosCart
    */
    struct SaveAddressRequest: Codable {
        
    }
    
    /*
        Model: SaveAddressResponse
        Used By: PosCart
    */
    struct SaveAddressResponse: Codable {
        
    }
    
    /*
        Model: UpdateAddressRequest
        Used By: PosCart
    */
    struct UpdateAddressRequest: Codable {
        
    }
    
    /*
        Model: UpdateAddressResponse
        Used By: PosCart
    */
    struct UpdateAddressResponse: Codable {
        
    }
    
    /*
        Model: DeleteAddressResponse
        Used By: PosCart
    */
    struct DeleteAddressResponse: Codable {
        
    }
    
    /*
        Model: SelectCartAddressRequest
        Used By: PosCart
    */
    struct SelectCartAddressRequest: Codable {
        
    }
    
    /*
        Model: UpdateCartPaymentRequest
        Used By: PosCart
    */
    struct UpdateCartPaymentRequest: Codable {
        
    }
    
    /*
        Model: ShipmentResponse
        Used By: PosCart
    */
    struct ShipmentResponse: Codable {
        
    }
    
    /*
        Model: CartShipmentsResponse
        Used By: PosCart
    */
    struct CartShipmentsResponse: Codable {
        
    }
    
    /*
        Model: UpdateCartShipmentItem
        Used By: PosCart
    */
    struct UpdateCartShipmentItem: Codable {
        
        public var articleUid: String
        
        public var shipmentType: String
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleUid = "article_uid"
            
            case shipmentType = "shipment_type"
            
            case quantity = "quantity"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            articleUid = try container.decode(String.self, forKey: .articleUid)
            
            shipmentType = try container.decode(String.self, forKey: .shipmentType)
            
            quantity = try? container.decode(Int.self, forKey: .quantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(articleUid, forKey: .articleUid)
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
        }
        
    }
    
    /*
        Model: UpdateCartShipmentRequest
        Used By: PosCart
    */
    struct UpdateCartShipmentRequest: Codable {
        
        public var shipments: [UpdateCartShipmentItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
        }
        
    }
    
    /*
        Model: CartCheckoutRequest
        Used By: PosCart
    */
    struct CartCheckoutRequest: Codable {
        
    }
    
    /*
        Model: OrderData
        Used By: PosCart
    */
    struct OrderData: Codable {
        
    }
    
    /*
        Model: CheckCart
        Used By: PosCart
    */
    struct CheckCart: Codable {
        
    }
    
    /*
        Model: CartCheckoutResponse
        Used By: PosCart
    */
    struct CartCheckoutResponse: Codable {
        
    }
    
    /*
        Model: CartMetaRequest
        Used By: PosCart
    */
    struct CartMetaRequest: Codable {
        
    }
    
    /*
        Model: CartMetaResponse
        Used By: PosCart
    */
    struct CartMetaResponse: Codable {
        
    }
    
    /*
        Model: CartMetaMissingResponse
        Used By: PosCart
    */
    struct CartMetaMissingResponse: Codable {
        
    }
    
    /*
        Model: CartDeliveryModesResponse
        Used By: PosCart
    */
    struct CartDeliveryModesResponse: Codable {
        
        public var availableModes: [String]?
        
        public var pickupStores: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case availableModes = "available_modes"
            
            case pickupStores = "pickup_stores"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            availableModes = try? container.decode([String].self, forKey: .availableModes)
            
            pickupStores = try? container.decode([Int].self, forKey: .pickupStores)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(availableModes, forKey: .availableModes)
            
            try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
            
        }
        
    }
    
    /*
        Model: StoreDetail
        Used By: PosCart
    */
    struct StoreDetail: Codable {
        
    }
    
    /*
        Model: StoreDetailsResponse
        Used By: PosCart
    */
    struct StoreDetailsResponse: Codable {
        
        public var items: [StoreDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([StoreDetail].self, forKey: .items)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: GetShareCartLinkRequest
        Used By: PosCart
    */
    struct GetShareCartLinkRequest: Codable {
        
    }
    
    /*
        Model: GetShareCartLinkResponse
        Used By: PosCart
    */
    struct GetShareCartLinkResponse: Codable {
        
    }
    
    /*
        Model: SharedCartDetails
        Used By: PosCart
    */
    struct SharedCartDetails: Codable {
        
    }
    
    /*
        Model: SharedCart
        Used By: PosCart
    */
    struct SharedCart: Codable {
        
    }
    
    /*
        Model: SharedCartResponse
        Used By: PosCart
    */
    struct SharedCartResponse: Codable {
        
    }
    
    
}