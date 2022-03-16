import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: GetActivityStatus
        Used By: Order
    */

    class GetActivityStatus: Codable {
        
        
        public var activityHistory: ActivityHistory
        

        public enum CodingKeys: String, CodingKey {
            
            case activityHistory = "activity_history"
            
        }

        public init(activityHistory: ActivityHistory) {
            
            self.activityHistory = activityHistory
            
        }

        public func duplicate() -> GetActivityStatus {
            let dict = self.dictionary!
            let copy = GetActivityStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                activityHistory = try container.decode(ActivityHistory.self, forKey: .activityHistory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
            
            
        }
        
    }
    
    /*
        Model: ActivityHistory
        Used By: Order
    */

    class ActivityHistory: Codable {
        
        
        public var createdat: String?
        
        public var message: String?
        
        public var type: String?
        
        public var user: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdat = "createdat"
            
            case message = "message"
            
            case type = "type"
            
            case user = "user"
            
        }

        public init(createdat: String?, message: String?, type: String?, user: String?) {
            
            self.createdat = createdat
            
            self.message = message
            
            self.type = type
            
            self.user = user
            
        }

        public func duplicate() -> ActivityHistory {
            let dict = self.dictionary!
            let copy = ActivityHistory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdat = try container.decode(String.self, forKey: .createdat)
                
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
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdat, forKey: .createdat)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
    
    /*
        Model: CanBreakRequestBody
        Used By: Order
    */

    class CanBreakRequestBody: Codable {
        
        
        public var shipmentIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIds = "shipment_ids"
            
        }

        public init(shipmentIds: [String]) {
            
            self.shipmentIds = shipmentIds
            
        }

        public func duplicate() -> CanBreakRequestBody {
            let dict = self.dictionary!
            let copy = CanBreakRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
            
            
        }
        
    }
    
    /*
        Model: CanBreakResponse
        Used By: Order
    */

    class CanBreakResponse: Codable {
        
        
        public var status: Bool
        
        public var validActions: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case validActions = "valid_actions"
            
        }

        public init(status: Bool, validActions: [String: Any]) {
            
            self.status = status
            
            self.validActions = validActions
            
        }

        public func duplicate() -> CanBreakResponse {
            let dict = self.dictionary!
            let copy = CanBreakResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Bool.self, forKey: .status)
                
            
            
            
                validActions = try container.decode([String: Any].self, forKey: .validActions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(validActions, forKey: .validActions)
            
            
        }
        
    }
    
    /*
        Model: FailedOrders
        Used By: Order
    */

    class FailedOrders: Codable {
        
        
        public var orders: FailOrder
        

        public enum CodingKeys: String, CodingKey {
            
            case orders = "orders"
            
        }

        public init(orders: FailOrder) {
            
            self.orders = orders
            
        }

        public func duplicate() -> FailedOrders {
            let dict = self.dictionary!
            let copy = FailedOrders(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orders = try container.decode(FailOrder.self, forKey: .orders)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orders, forKey: .orders)
            
            
        }
        
    }
    
    /*
        Model: FailOrder
        Used By: Order
    */

    class FailOrder: Codable {
        
        
        public var updatedAt: String?
        
        public var id: String?
        
        public var reason: String?
        
        public var marketplaceOrder: MarketplaceOrder?
        
        public var marketplaceOrderId: String?
        
        public var createdAt: String?
        
        public var appId: String?
        
        public var marketplace: String?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedAt = "updated_at"
            
            case id = "_id"
            
            case reason = "reason"
            
            case marketplaceOrder = "marketplace_order"
            
            case marketplaceOrderId = "marketplace_order_id"
            
            case createdAt = "created_at"
            
            case appId = "app_id"
            
            case marketplace = "marketplace"
            
            case companyId = "company_id"
            
        }

        public init(appId: String?, companyId: Int?, createdAt: String?, marketplace: String?, marketplaceOrder: MarketplaceOrder?, marketplaceOrderId: String?, reason: String?, updatedAt: String?, id: String?) {
            
            self.updatedAt = updatedAt
            
            self.id = id
            
            self.reason = reason
            
            self.marketplaceOrder = marketplaceOrder
            
            self.marketplaceOrderId = marketplaceOrderId
            
            self.createdAt = createdAt
            
            self.appId = appId
            
            self.marketplace = marketplace
            
            self.companyId = companyId
            
        }

        public func duplicate() -> FailOrder {
            let dict = self.dictionary!
            let copy = FailOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceOrder = try container.decode(MarketplaceOrder.self, forKey: .marketplaceOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceOrderId = try container.decode(String.self, forKey: .marketplaceOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplace = try container.decode(String.self, forKey: .marketplace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(marketplaceOrder, forKey: .marketplaceOrder)
            
            
            
            
            try? container.encodeIfPresent(marketplaceOrderId, forKey: .marketplaceOrderId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(marketplace, forKey: .marketplace)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
    
    /*
        Model: MarketplaceOrder
        Used By: Order
    */

    class MarketplaceOrder: Codable {
        
        
        public var orderStatusUrl: String?
        
        public var adminGraphqlApiId: String?
        
        public var email: String?
        
        public var test: Bool?
        
        public var note: String?
        
        public var totalPrice: String?
        
        public var appId: Int?
        
        public var totalDiscountsSet: TotalDiscountsSet?
        
        public var totalPriceSet: TotalPriceSet?
        
        public var totalTaxSet: TotalTaxSet?
        
        public var gateway: String?
        
        public var name: String?
        
        public var subtotalPriceSet: SubtotalPriceSet?
        
        public var number: Int?
        
        public var buyerAcceptsMarketing: Bool?
        
        public var contactEmail: String?
        
        public var token: String?
        
        public var sourceName: String?
        
        public var paymentGatewayNames: [[String: Any]]?
        
        public var presentmentCurrency: String?
        
        public var subtotalPrice: String?
        
        public var processedAt: String?
        
        public var orderNumber: Int?
        
        public var totalTipReceived: String?
        
        public var id: Int?
        
        public var confirmed: Bool?
        
        public var currency: String?
        
        public var totalLineItemsPrice: String?
        
        public var lineItems: LineItems?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var totalWeight: Int?
        
        public var billingAddress: BillingAddress?
        
        public var totalShippingPriceSet: TotalShippingPriceSet?
        
        public var customer: Customer?
        
        public var totalDiscounts: String?
        
        public var totalLineItemsPriceSet: TotalLineItemsPriceSet?
        
        public var tags: String?
        
        public var totalPriceUsd: String?
        
        public var userId: Int?
        
        public var totalTax: String?
        
        public var processingMethod: String?
        
        public var shippingAddress: OrderShippingAddress?
        
        public var taxesIncluded: Bool?
        
        public var financialStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderStatusUrl = "order_status_url"
            
            case adminGraphqlApiId = "admin_graphql_api_id"
            
            case email = "email"
            
            case test = "test"
            
            case note = "note"
            
            case totalPrice = "total_price"
            
            case appId = "app_id"
            
            case totalDiscountsSet = "total_discounts_set"
            
            case totalPriceSet = "total_price_set"
            
            case totalTaxSet = "total_tax_set"
            
            case gateway = "gateway"
            
            case name = "name"
            
            case subtotalPriceSet = "subtotal_price_set"
            
            case number = "number"
            
            case buyerAcceptsMarketing = "buyer_accepts_marketing"
            
            case contactEmail = "contact_email"
            
            case token = "token"
            
            case sourceName = "source_name"
            
            case paymentGatewayNames = "payment_gateway_names"
            
            case presentmentCurrency = "presentment_currency"
            
            case subtotalPrice = "subtotal_price"
            
            case processedAt = "processed_at"
            
            case orderNumber = "order_number"
            
            case totalTipReceived = "total_tip_received"
            
            case id = "id"
            
            case confirmed = "confirmed"
            
            case currency = "currency"
            
            case totalLineItemsPrice = "total_line_items_price"
            
            case lineItems = "line_items"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case totalWeight = "total_weight"
            
            case billingAddress = "billing_address"
            
            case totalShippingPriceSet = "total_shipping_price_set"
            
            case customer = "customer"
            
            case totalDiscounts = "total_discounts"
            
            case totalLineItemsPriceSet = "total_line_items_price_set"
            
            case tags = "tags"
            
            case totalPriceUsd = "total_price_usd"
            
            case userId = "user_id"
            
            case totalTax = "total_tax"
            
            case processingMethod = "processing_method"
            
            case shippingAddress = "shipping_address"
            
            case taxesIncluded = "taxes_included"
            
            case financialStatus = "financial_status"
            
        }

        public init(adminGraphqlApiId: String?, appId: Int?, billingAddress: BillingAddress?, buyerAcceptsMarketing: Bool?, confirmed: Bool?, contactEmail: String?, createdAt: String?, currency: String?, customer: Customer?, email: String?, financialStatus: String?, gateway: String?, id: Int?, lineItems: LineItems?, name: String?, note: String?, number: Int?, orderNumber: Int?, orderStatusUrl: String?, paymentGatewayNames: [[String: Any]]?, presentmentCurrency: String?, processedAt: String?, processingMethod: String?, shippingAddress: OrderShippingAddress?, sourceName: String?, subtotalPrice: String?, subtotalPriceSet: SubtotalPriceSet?, tags: String?, taxesIncluded: Bool?, test: Bool?, token: String?, totalDiscounts: String?, totalDiscountsSet: TotalDiscountsSet?, totalLineItemsPrice: String?, totalLineItemsPriceSet: TotalLineItemsPriceSet?, totalPrice: String?, totalPriceSet: TotalPriceSet?, totalPriceUsd: String?, totalShippingPriceSet: TotalShippingPriceSet?, totalTax: String?, totalTaxSet: TotalTaxSet?, totalTipReceived: String?, totalWeight: Int?, updatedAt: String?, userId: Int?) {
            
            self.orderStatusUrl = orderStatusUrl
            
            self.adminGraphqlApiId = adminGraphqlApiId
            
            self.email = email
            
            self.test = test
            
            self.note = note
            
            self.totalPrice = totalPrice
            
            self.appId = appId
            
            self.totalDiscountsSet = totalDiscountsSet
            
            self.totalPriceSet = totalPriceSet
            
            self.totalTaxSet = totalTaxSet
            
            self.gateway = gateway
            
            self.name = name
            
            self.subtotalPriceSet = subtotalPriceSet
            
            self.number = number
            
            self.buyerAcceptsMarketing = buyerAcceptsMarketing
            
            self.contactEmail = contactEmail
            
            self.token = token
            
            self.sourceName = sourceName
            
            self.paymentGatewayNames = paymentGatewayNames
            
            self.presentmentCurrency = presentmentCurrency
            
            self.subtotalPrice = subtotalPrice
            
            self.processedAt = processedAt
            
            self.orderNumber = orderNumber
            
            self.totalTipReceived = totalTipReceived
            
            self.id = id
            
            self.confirmed = confirmed
            
            self.currency = currency
            
            self.totalLineItemsPrice = totalLineItemsPrice
            
            self.lineItems = lineItems
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.totalWeight = totalWeight
            
            self.billingAddress = billingAddress
            
            self.totalShippingPriceSet = totalShippingPriceSet
            
            self.customer = customer
            
            self.totalDiscounts = totalDiscounts
            
            self.totalLineItemsPriceSet = totalLineItemsPriceSet
            
            self.tags = tags
            
            self.totalPriceUsd = totalPriceUsd
            
            self.userId = userId
            
            self.totalTax = totalTax
            
            self.processingMethod = processingMethod
            
            self.shippingAddress = shippingAddress
            
            self.taxesIncluded = taxesIncluded
            
            self.financialStatus = financialStatus
            
        }

        public func duplicate() -> MarketplaceOrder {
            let dict = self.dictionary!
            let copy = MarketplaceOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderStatusUrl = try container.decode(String.self, forKey: .orderStatusUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)
                
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
                    test = try container.decode(Bool.self, forKey: .test)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    note = try container.decode(String.self, forKey: .note)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalPrice = try container.decode(String.self, forKey: .totalPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(Int.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalDiscountsSet = try container.decode(TotalDiscountsSet.self, forKey: .totalDiscountsSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalPriceSet = try container.decode(TotalPriceSet.self, forKey: .totalPriceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTaxSet = try container.decode(TotalTaxSet.self, forKey: .totalTaxSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gateway = try container.decode(String.self, forKey: .gateway)
                
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
                    subtotalPriceSet = try container.decode(SubtotalPriceSet.self, forKey: .subtotalPriceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(Int.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyerAcceptsMarketing = try container.decode(Bool.self, forKey: .buyerAcceptsMarketing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactEmail = try container.decode(String.self, forKey: .contactEmail)
                
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
                    sourceName = try container.decode(String.self, forKey: .sourceName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGatewayNames = try container.decode([[String: Any]].self, forKey: .paymentGatewayNames)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentCurrency = try container.decode(String.self, forKey: .presentmentCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotalPrice = try container.decode(String.self, forKey: .subtotalPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processedAt = try container.decode(String.self, forKey: .processedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderNumber = try container.decode(Int.self, forKey: .orderNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTipReceived = try container.decode(String.self, forKey: .totalTipReceived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    confirmed = try container.decode(Bool.self, forKey: .confirmed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalLineItemsPrice = try container.decode(String.self, forKey: .totalLineItemsPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineItems = try container.decode(LineItems.self, forKey: .lineItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalWeight = try container.decode(Int.self, forKey: .totalWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(BillingAddress.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShippingPriceSet = try container.decode(TotalShippingPriceSet.self, forKey: .totalShippingPriceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customer = try container.decode(Customer.self, forKey: .customer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalDiscounts = try container.decode(String.self, forKey: .totalDiscounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalLineItemsPriceSet = try container.decode(TotalLineItemsPriceSet.self, forKey: .totalLineItemsPriceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode(String.self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalPriceUsd = try container.decode(String.self, forKey: .totalPriceUsd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(Int.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTax = try container.decode(String.self, forKey: .totalTax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingMethod = try container.decode(String.self, forKey: .processingMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shippingAddress = try container.decode(OrderShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxesIncluded = try container.decode(Bool.self, forKey: .taxesIncluded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialStatus = try container.decode(String.self, forKey: .financialStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderStatusUrl, forKey: .orderStatusUrl)
            
            
            
            
            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(test, forKey: .test)
            
            
            
            
            try? container.encodeIfPresent(note, forKey: .note)
            
            
            
            
            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(totalDiscountsSet, forKey: .totalDiscountsSet)
            
            
            
            
            try? container.encodeIfPresent(totalPriceSet, forKey: .totalPriceSet)
            
            
            
            
            try? container.encodeIfPresent(totalTaxSet, forKey: .totalTaxSet)
            
            
            
            
            try? container.encodeIfPresent(gateway, forKey: .gateway)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(subtotalPriceSet, forKey: .subtotalPriceSet)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(buyerAcceptsMarketing, forKey: .buyerAcceptsMarketing)
            
            
            
            
            try? container.encodeIfPresent(contactEmail, forKey: .contactEmail)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(sourceName, forKey: .sourceName)
            
            
            
            
            try? container.encodeIfPresent(paymentGatewayNames, forKey: .paymentGatewayNames)
            
            
            
            
            try? container.encodeIfPresent(presentmentCurrency, forKey: .presentmentCurrency)
            
            
            
            
            try? container.encodeIfPresent(subtotalPrice, forKey: .subtotalPrice)
            
            
            
            
            try? container.encodeIfPresent(processedAt, forKey: .processedAt)
            
            
            
            
            try? container.encodeIfPresent(orderNumber, forKey: .orderNumber)
            
            
            
            
            try? container.encodeIfPresent(totalTipReceived, forKey: .totalTipReceived)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(confirmed, forKey: .confirmed)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalLineItemsPrice, forKey: .totalLineItemsPrice)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(totalWeight, forKey: .totalWeight)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(totalShippingPriceSet, forKey: .totalShippingPriceSet)
            
            
            
            
            try? container.encodeIfPresent(customer, forKey: .customer)
            
            
            
            
            try? container.encodeIfPresent(totalDiscounts, forKey: .totalDiscounts)
            
            
            
            
            try? container.encodeIfPresent(totalLineItemsPriceSet, forKey: .totalLineItemsPriceSet)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(totalPriceUsd, forKey: .totalPriceUsd)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(totalTax, forKey: .totalTax)
            
            
            
            
            try? container.encodeIfPresent(processingMethod, forKey: .processingMethod)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(taxesIncluded, forKey: .taxesIncluded)
            
            
            
            
            try? container.encodeIfPresent(financialStatus, forKey: .financialStatus)
            
            
        }
        
    }
    
    /*
        Model: TotalDiscountsSet
        Used By: Order
    */

    class TotalDiscountsSet: Codable {
        
        
        public var presentmentMoney: PresentmentMoney?
        
        public var shopMoney: ShopMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case presentmentMoney = "presentment_money"
            
            case shopMoney = "shop_money"
            
        }

        public init(presentmentMoney: PresentmentMoney?, shopMoney: ShopMoney?) {
            
            self.presentmentMoney = presentmentMoney
            
            self.shopMoney = shopMoney
            
        }

        public func duplicate() -> TotalDiscountsSet {
            let dict = self.dictionary!
            let copy = TotalDiscountsSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    presentmentMoney = try container.decode(PresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shopMoney = try container.decode(ShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
        }
        
    }
    
    /*
        Model: PresentmentMoney
        Used By: Order
    */

    class PresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> PresentmentMoney {
            let dict = self.dictionary!
            let copy = PresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: ShopMoney
        Used By: Order
    */

    class ShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> ShopMoney {
            let dict = self.dictionary!
            let copy = ShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalPriceSet
        Used By: Order
    */

    class TotalPriceSet: Codable {
        
        
        public var shopMoney: TotalPriceSetShopMoney?
        
        public var presentmentMoney: TotalPriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: TotalPriceSetPresentmentMoney?, shopMoney: TotalPriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> TotalPriceSet {
            let dict = self.dictionary!
            let copy = TotalPriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(TotalPriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(TotalPriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: TotalPriceSetShopMoney
        Used By: Order
    */

    class TotalPriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalPriceSetShopMoney {
            let dict = self.dictionary!
            let copy = TotalPriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalPriceSetPresentmentMoney
        Used By: Order
    */

    class TotalPriceSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalPriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TotalPriceSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalTaxSet
        Used By: Order
    */

    class TotalTaxSet: Codable {
        
        
        public var shopMoney: TotalTaxSetShopMoney?
        
        public var presentmentMoney: TotalTaxSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: TotalTaxSetPresentmentMoney?, shopMoney: TotalTaxSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> TotalTaxSet {
            let dict = self.dictionary!
            let copy = TotalTaxSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(TotalTaxSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(TotalTaxSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: TotalTaxSetShopMoney
        Used By: Order
    */

    class TotalTaxSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalTaxSetShopMoney {
            let dict = self.dictionary!
            let copy = TotalTaxSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalTaxSetPresentmentMoney
        Used By: Order
    */

    class TotalTaxSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalTaxSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TotalTaxSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: SubtotalPriceSet
        Used By: Order
    */

    class SubtotalPriceSet: Codable {
        
        
        public var shopMoney: SubtotalPriceSetShopMoney?
        
        public var presentmentMoney: SubtotalPriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: SubtotalPriceSetPresentmentMoney?, shopMoney: SubtotalPriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> SubtotalPriceSet {
            let dict = self.dictionary!
            let copy = SubtotalPriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(SubtotalPriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(SubtotalPriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: SubtotalPriceSetShopMoney
        Used By: Order
    */

    class SubtotalPriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> SubtotalPriceSetShopMoney {
            let dict = self.dictionary!
            let copy = SubtotalPriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: SubtotalPriceSetPresentmentMoney
        Used By: Order
    */

    class SubtotalPriceSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> SubtotalPriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = SubtotalPriceSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: LineItems
        Used By: Order
    */

    class LineItems: Codable {
        
        
        public var sku: String?
        
        public var fulfillableQuantity: Int?
        
        public var grams: Int?
        
        public var totalDiscount: String?
        
        public var article: LineItemsArticle?
        
        public var title: String?
        
        public var variantInventoryManagement: String?
        
        public var id: Int?
        
        public var variantId: Int?
        
        public var variantTitle: String?
        
        public var productExists: Bool?
        
        public var price: String?
        
        public var adminGraphqlApiId: String?
        
        public var quantity: Int?
        
        public var vendor: String?
        
        public var fulfillmentService: String?
        
        public var taxable: Bool?
        
        public var name: String?
        
        public var productId: Int?
        
        public var priceSet: PriceSet?
        
        public var taxLines: TaxLines?
        
        public var requiresShipping: Bool?
        
        public var giftCard: Bool?
        
        public var totalDiscountSet: TotalDiscountSet?
        

        public enum CodingKeys: String, CodingKey {
            
            case sku = "sku"
            
            case fulfillableQuantity = "fulfillable_quantity"
            
            case grams = "grams"
            
            case totalDiscount = "total_discount"
            
            case article = "article"
            
            case title = "title"
            
            case variantInventoryManagement = "variant_inventory_management"
            
            case id = "id"
            
            case variantId = "variant_id"
            
            case variantTitle = "variant_title"
            
            case productExists = "product_exists"
            
            case price = "price"
            
            case adminGraphqlApiId = "admin_graphql_api_id"
            
            case quantity = "quantity"
            
            case vendor = "vendor"
            
            case fulfillmentService = "fulfillment_service"
            
            case taxable = "taxable"
            
            case name = "name"
            
            case productId = "product_id"
            
            case priceSet = "price_set"
            
            case taxLines = "tax_lines"
            
            case requiresShipping = "requires_shipping"
            
            case giftCard = "gift_card"
            
            case totalDiscountSet = "total_discount_set"
            
        }

        public init(adminGraphqlApiId: String?, article: LineItemsArticle?, fulfillableQuantity: Int?, fulfillmentService: String?, giftCard: Bool?, grams: Int?, id: Int?, name: String?, price: String?, priceSet: PriceSet?, productExists: Bool?, productId: Int?, quantity: Int?, requiresShipping: Bool?, sku: String?, taxable: Bool?, taxLines: TaxLines?, title: String?, totalDiscount: String?, totalDiscountSet: TotalDiscountSet?, variantId: Int?, variantInventoryManagement: String?, variantTitle: String?, vendor: String?) {
            
            self.sku = sku
            
            self.fulfillableQuantity = fulfillableQuantity
            
            self.grams = grams
            
            self.totalDiscount = totalDiscount
            
            self.article = article
            
            self.title = title
            
            self.variantInventoryManagement = variantInventoryManagement
            
            self.id = id
            
            self.variantId = variantId
            
            self.variantTitle = variantTitle
            
            self.productExists = productExists
            
            self.price = price
            
            self.adminGraphqlApiId = adminGraphqlApiId
            
            self.quantity = quantity
            
            self.vendor = vendor
            
            self.fulfillmentService = fulfillmentService
            
            self.taxable = taxable
            
            self.name = name
            
            self.productId = productId
            
            self.priceSet = priceSet
            
            self.taxLines = taxLines
            
            self.requiresShipping = requiresShipping
            
            self.giftCard = giftCard
            
            self.totalDiscountSet = totalDiscountSet
            
        }

        public func duplicate() -> LineItems {
            let dict = self.dictionary!
            let copy = LineItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sku = try container.decode(String.self, forKey: .sku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillableQuantity = try container.decode(Int.self, forKey: .fulfillableQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grams = try container.decode(Int.self, forKey: .grams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalDiscount = try container.decode(String.self, forKey: .totalDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(LineItemsArticle.self, forKey: .article)
                
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
                    variantInventoryManagement = try container.decode(String.self, forKey: .variantInventoryManagement)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantId = try container.decode(Int.self, forKey: .variantId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variantTitle = try container.decode(String.self, forKey: .variantTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productExists = try container.decode(Bool.self, forKey: .productExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(String.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)
                
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
                    vendor = try container.decode(String.self, forKey: .vendor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentService = try container.decode(String.self, forKey: .fulfillmentService)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxable = try container.decode(Bool.self, forKey: .taxable)
                
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
                    productId = try container.decode(Int.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceSet = try container.decode(PriceSet.self, forKey: .priceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxLines = try container.decode(TaxLines.self, forKey: .taxLines)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requiresShipping = try container.decode(Bool.self, forKey: .requiresShipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftCard = try container.decode(Bool.self, forKey: .giftCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalDiscountSet = try container.decode(TotalDiscountSet.self, forKey: .totalDiscountSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(fulfillableQuantity, forKey: .fulfillableQuantity)
            
            
            
            
            try? container.encodeIfPresent(grams, forKey: .grams)
            
            
            
            
            try? container.encodeIfPresent(totalDiscount, forKey: .totalDiscount)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(variantInventoryManagement, forKey: .variantInventoryManagement)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(variantId, forKey: .variantId)
            
            
            
            
            try? container.encodeIfPresent(variantTitle, forKey: .variantTitle)
            
            
            
            
            try? container.encodeIfPresent(productExists, forKey: .productExists)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(vendor, forKey: .vendor)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentService, forKey: .fulfillmentService)
            
            
            
            
            try? container.encodeIfPresent(taxable, forKey: .taxable)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(priceSet, forKey: .priceSet)
            
            
            
            
            try? container.encodeIfPresent(taxLines, forKey: .taxLines)
            
            
            
            
            try? container.encodeIfPresent(requiresShipping, forKey: .requiresShipping)
            
            
            
            
            try? container.encodeIfPresent(giftCard, forKey: .giftCard)
            
            
            
            
            try? container.encodeIfPresent(totalDiscountSet, forKey: .totalDiscountSet)
            
            
        }
        
    }
    
    /*
        Model: LineItemsArticle
        Used By: Order
    */

    class LineItemsArticle: Codable {
        
        
        public var quantities: Quantities?
        
        public var oldArticleUid: String?
        
        public var totalQuantity: Int?
        
        public var manufacturer: Manufacturer?
        
        public var price: ArticlePrice?
        
        public var trackInventory: Bool?
        
        public var company: Company?
        
        public var isActive: Bool?
        
        public var dateMeta: FailOrderDateMeta?
        
        public var fragile: Bool?
        
        public var marketplaceIdentifiers: MarketplaceIdentifiers?
        
        public var size: String?
        
        public var isSet: Bool?
        
        public var dimension: Dimension?
        
        public var weight: Weight?
        
        public var store: Store?
        
        public var meta: ArticleMeta?
        
        public var uid: String?
        
        public var brand: ArticleBrand?
        
        public var itemId: Int?
        
        public var fyndArticleCode: String?
        
        public var id: String?
        
        public var identifier: LineItemsArticleIdentifier?
        
        public var sellerIdentifier: String?
        
        public var fyndItemCode: String?
        
        public var countryOfOrigin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantities = "quantities"
            
            case oldArticleUid = "old_article_uid"
            
            case totalQuantity = "total_quantity"
            
            case manufacturer = "manufacturer"
            
            case price = "price"
            
            case trackInventory = "track_inventory"
            
            case company = "company"
            
            case isActive = "is_active"
            
            case dateMeta = "date_meta"
            
            case fragile = "fragile"
            
            case marketplaceIdentifiers = "marketplace_identifiers"
            
            case size = "size"
            
            case isSet = "is_set"
            
            case dimension = "dimension"
            
            case weight = "weight"
            
            case store = "store"
            
            case meta = "meta"
            
            case uid = "uid"
            
            case brand = "brand"
            
            case itemId = "item_id"
            
            case fyndArticleCode = "fynd_article_code"
            
            case id = "_id"
            
            case identifier = "identifier"
            
            case sellerIdentifier = "seller_identifier"
            
            case fyndItemCode = "fynd_item_code"
            
            case countryOfOrigin = "country_of_origin"
            
        }

        public init(brand: ArticleBrand?, company: Company?, countryOfOrigin: String?, dateMeta: FailOrderDateMeta?, dimension: Dimension?, fragile: Bool?, fyndArticleCode: String?, fyndItemCode: String?, identifier: LineItemsArticleIdentifier?, isActive: Bool?, isSet: Bool?, itemId: Int?, manufacturer: Manufacturer?, marketplaceIdentifiers: MarketplaceIdentifiers?, meta: ArticleMeta?, oldArticleUid: String?, price: ArticlePrice?, quantities: Quantities?, sellerIdentifier: String?, size: String?, store: Store?, totalQuantity: Int?, trackInventory: Bool?, uid: String?, weight: Weight?, id: String?) {
            
            self.quantities = quantities
            
            self.oldArticleUid = oldArticleUid
            
            self.totalQuantity = totalQuantity
            
            self.manufacturer = manufacturer
            
            self.price = price
            
            self.trackInventory = trackInventory
            
            self.company = company
            
            self.isActive = isActive
            
            self.dateMeta = dateMeta
            
            self.fragile = fragile
            
            self.marketplaceIdentifiers = marketplaceIdentifiers
            
            self.size = size
            
            self.isSet = isSet
            
            self.dimension = dimension
            
            self.weight = weight
            
            self.store = store
            
            self.meta = meta
            
            self.uid = uid
            
            self.brand = brand
            
            self.itemId = itemId
            
            self.fyndArticleCode = fyndArticleCode
            
            self.id = id
            
            self.identifier = identifier
            
            self.sellerIdentifier = sellerIdentifier
            
            self.fyndItemCode = fyndItemCode
            
            self.countryOfOrigin = countryOfOrigin
            
        }

        public func duplicate() -> LineItemsArticle {
            let dict = self.dictionary!
            let copy = LineItemsArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    oldArticleUid = try container.decode(String.self, forKey: .oldArticleUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ArticlePrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(Company.self, forKey: .company)
                
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
                    dateMeta = try container.decode(FailOrderDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fragile = try container.decode(Bool.self, forKey: .fragile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceIdentifiers = try container.decode(MarketplaceIdentifiers.self, forKey: .marketplaceIdentifiers)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(Dimension.self, forKey: .dimension)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Weight.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(Store.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(ArticleMeta.self, forKey: .meta)
                
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
                    brand = try container.decode(ArticleBrand.self, forKey: .brand)
                
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
                    fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
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
                    identifier = try container.decode(LineItemsArticleIdentifier.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encodeIfPresent(oldArticleUid, forKey: .oldArticleUid)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(marketplaceIdentifiers, forKey: .marketplaceIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
        }
        
    }
    
    /*
        Model: Quantities
        Used By: Order
    */

    class Quantities: Codable {
        
        
        public var notAvailable: NotAvailable?
        
        public var sellable: Sellable?
        
        public var orderCommitted: OrderCommitted?
        
        public var damaged: Damaged?
        

        public enum CodingKeys: String, CodingKey {
            
            case notAvailable = "not_available"
            
            case sellable = "sellable"
            
            case orderCommitted = "order_committed"
            
            case damaged = "damaged"
            
        }

        public init(damaged: Damaged?, notAvailable: NotAvailable?, orderCommitted: OrderCommitted?, sellable: Sellable?) {
            
            self.notAvailable = notAvailable
            
            self.sellable = sellable
            
            self.orderCommitted = orderCommitted
            
            self.damaged = damaged
            
        }

        public func duplicate() -> Quantities {
            let dict = self.dictionary!
            let copy = Quantities(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    notAvailable = try container.decode(NotAvailable.self, forKey: .notAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellable = try container.decode(Sellable.self, forKey: .sellable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCommitted = try container.decode(OrderCommitted.self, forKey: .orderCommitted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    damaged = try container.decode(Damaged.self, forKey: .damaged)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(notAvailable, forKey: .notAvailable)
            
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            
            try? container.encodeIfPresent(orderCommitted, forKey: .orderCommitted)
            
            
            
            
            try? container.encodeIfPresent(damaged, forKey: .damaged)
            
            
        }
        
    }
    
    /*
        Model: NotAvailable
        Used By: Order
    */

    class NotAvailable: Codable {
        
        
        public var count: Int?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case updatedAt = "updated_at"
            
        }

        public init(count: Int?, updatedAt: String?) {
            
            self.count = count
            
            self.updatedAt = updatedAt
            
        }

        public func duplicate() -> NotAvailable {
            let dict = self.dictionary!
            let copy = NotAvailable(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
    
    /*
        Model: Sellable
        Used By: Order
    */

    class Sellable: Codable {
        
        
        public var count: Int?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case updatedAt = "updated_at"
            
        }

        public init(count: Int?, updatedAt: String?) {
            
            self.count = count
            
            self.updatedAt = updatedAt
            
        }

        public func duplicate() -> Sellable {
            let dict = self.dictionary!
            let copy = Sellable(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
    
    /*
        Model: OrderCommitted
        Used By: Order
    */

    class OrderCommitted: Codable {
        
        
        public var count: Int?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case updatedAt = "updated_at"
            
        }

        public init(count: Int?, updatedAt: String?) {
            
            self.count = count
            
            self.updatedAt = updatedAt
            
        }

        public func duplicate() -> OrderCommitted {
            let dict = self.dictionary!
            let copy = OrderCommitted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
    
    /*
        Model: Damaged
        Used By: Order
    */

    class Damaged: Codable {
        
        
        public var updatedAt: String?
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedAt = "updated_at"
            
            case count = "count"
            
        }

        public init(count: Int?, updatedAt: String?) {
            
            self.updatedAt = updatedAt
            
            self.count = count
            
        }

        public func duplicate() -> Damaged {
            let dict = self.dictionary!
            let copy = Damaged(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: Manufacturer
        Used By: Order
    */

    class Manufacturer: Codable {
        
        
        public var isDefault: Bool?
        
        public var address: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case address = "address"
            
            case name = "name"
            
        }

        public init(address: String?, isDefault: Bool?, name: String?) {
            
            self.isDefault = isDefault
            
            self.address = address
            
            self.name = name
            
        }

        public func duplicate() -> Manufacturer {
            let dict = self.dictionary!
            let copy = Manufacturer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ArticlePrice
        Used By: Order
    */

    class ArticlePrice: Codable {
        
        
        public var marked: Int?
        
        public var currency: String?
        
        public var effective: Int?
        
        public var transfer: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case marked = "marked"
            
            case currency = "currency"
            
            case effective = "effective"
            
            case transfer = "transfer"
            
        }

        public init(currency: String?, effective: Int?, marked: Int?, transfer: Int?) {
            
            self.marked = marked
            
            self.currency = currency
            
            self.effective = effective
            
            self.transfer = transfer
            
        }

        public func duplicate() -> ArticlePrice {
            let dict = self.dictionary!
            let copy = ArticlePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                    transfer = try container.decode(Int.self, forKey: .transfer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(transfer, forKey: .transfer)
            
            
        }
        
    }
    
    /*
        Model: Company
        Used By: Order
    */

    class Company: Codable {
        
        
        public var id: Int?
        
        public var companyType: String?
        
        public var businessType: String?
        
        public var companyName: String?
        
        public var createdOn: String?
        
        public var panNo: String?
        
        public var returnAllowed: Bool?
        
        public var meta: String?
        
        public var exchangeAllowed: Bool?
        
        public var agreementStartDate: String?
        
        public var exchangeWithinDays: Int?
        
        public var paymentProcesingCharge: Int?
        
        public var fyndAFitAvailable: Bool?
        
        public var modifiedOn: String?
        
        public var returnWithinDays: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case companyType = "company_type"
            
            case businessType = "business_type"
            
            case companyName = "company_name"
            
            case createdOn = "created_on"
            
            case panNo = "pan_no"
            
            case returnAllowed = "return_allowed"
            
            case meta = "meta"
            
            case exchangeAllowed = "exchange_allowed"
            
            case agreementStartDate = "agreement_start_date"
            
            case exchangeWithinDays = "exchange_within_days"
            
            case paymentProcesingCharge = "payment_procesing_charge"
            
            case fyndAFitAvailable = "fynd_a_fit_available"
            
            case modifiedOn = "modified_on"
            
            case returnWithinDays = "return_within_days"
            
        }

        public init(agreementStartDate: String?, businessType: String?, companyName: String?, companyType: String?, createdOn: String?, exchangeAllowed: Bool?, exchangeWithinDays: Int?, fyndAFitAvailable: Bool?, id: Int?, meta: String?, modifiedOn: String?, panNo: String?, paymentProcesingCharge: Int?, returnAllowed: Bool?, returnWithinDays: Int?) {
            
            self.id = id
            
            self.companyType = companyType
            
            self.businessType = businessType
            
            self.companyName = companyName
            
            self.createdOn = createdOn
            
            self.panNo = panNo
            
            self.returnAllowed = returnAllowed
            
            self.meta = meta
            
            self.exchangeAllowed = exchangeAllowed
            
            self.agreementStartDate = agreementStartDate
            
            self.exchangeWithinDays = exchangeWithinDays
            
            self.paymentProcesingCharge = paymentProcesingCharge
            
            self.fyndAFitAvailable = fyndAFitAvailable
            
            self.modifiedOn = modifiedOn
            
            self.returnWithinDays = returnWithinDays
            
        }

        public func duplicate() -> Company {
            let dict = self.dictionary!
            let copy = Company(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
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
                    panNo = try container.decode(String.self, forKey: .panNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(String.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    exchangeAllowed = try container.decode(Bool.self, forKey: .exchangeAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    agreementStartDate = try container.decode(String.self, forKey: .agreementStartDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    exchangeWithinDays = try container.decode(Int.self, forKey: .exchangeWithinDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentProcesingCharge = try container.decode(Int.self, forKey: .paymentProcesingCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndAFitAvailable = try container.decode(Bool.self, forKey: .fyndAFitAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnWithinDays = try container.decode(Int.self, forKey: .returnWithinDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(exchangeAllowed, forKey: .exchangeAllowed)
            
            
            
            
            try? container.encodeIfPresent(agreementStartDate, forKey: .agreementStartDate)
            
            
            
            
            try? container.encodeIfPresent(exchangeWithinDays, forKey: .exchangeWithinDays)
            
            
            
            
            try? container.encodeIfPresent(paymentProcesingCharge, forKey: .paymentProcesingCharge)
            
            
            
            
            try? container.encodeIfPresent(fyndAFitAvailable, forKey: .fyndAFitAvailable)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(returnWithinDays, forKey: .returnWithinDays)
            
            
        }
        
    }
    
    /*
        Model: FailOrderDateMeta
        Used By: Order
    */

    class FailOrderDateMeta: Codable {
        
        
        public var addedOnStore: String?
        
        public var inventoryUpdatedOn: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addedOnStore = "added_on_store"
            
            case inventoryUpdatedOn = "inventory_updated_on"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(addedOnStore: String?, createdOn: String?, inventoryUpdatedOn: String?, modifiedOn: String?) {
            
            self.addedOnStore = addedOnStore
            
            self.inventoryUpdatedOn = inventoryUpdatedOn
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> FailOrderDateMeta {
            let dict = self.dictionary!
            let copy = FailOrderDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addedOnStore = try container.decode(String.self, forKey: .addedOnStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: MarketplaceIdentifiers
        Used By: Order
    */

    class MarketplaceIdentifiers: Codable {
        
        
        public var tatacliqLuxury: TatacliqLuxury?
        

        public enum CodingKeys: String, CodingKey {
            
            case tatacliqLuxury = "tatacliq_luxury"
            
        }

        public init(tatacliqLuxury: TatacliqLuxury?) {
            
            self.tatacliqLuxury = tatacliqLuxury
            
        }

        public func duplicate() -> MarketplaceIdentifiers {
            let dict = self.dictionary!
            let copy = MarketplaceIdentifiers(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tatacliqLuxury = try container.decode(TatacliqLuxury.self, forKey: .tatacliqLuxury)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tatacliqLuxury, forKey: .tatacliqLuxury)
            
            
        }
        
    }
    
    /*
        Model: TatacliqLuxury
        Used By: Order
    */

    class TatacliqLuxury: Codable {
        
        
        public var sku: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sku = "sku"
            
        }

        public init(sku: String?) {
            
            self.sku = sku
            
        }

        public func duplicate() -> TatacliqLuxury {
            let dict = self.dictionary!
            let copy = TatacliqLuxury(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sku = try container.decode(String.self, forKey: .sku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
        }
        
    }
    
    /*
        Model: Dimension
        Used By: Order
    */

    class Dimension: Codable {
        
        
        public var height: Int?
        
        public var width: Int?
        
        public var unit: String?
        
        public var length: Int?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case width = "width"
            
            case unit = "unit"
            
            case length = "length"
            
            case isDefault = "is_default"
            
        }

        public init(height: Int?, isDefault: Bool?, length: Int?, unit: String?, width: Int?) {
            
            self.height = height
            
            self.width = width
            
            self.unit = unit
            
            self.length = length
            
            self.isDefault = isDefault
            
        }

        public func duplicate() -> Dimension {
            let dict = self.dictionary!
            let copy = Dimension(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    height = try container.decode(Int.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    width = try container.decode(Int.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    length = try container.decode(Int.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
    
    /*
        Model: Weight
        Used By: Order
    */

    class Weight: Codable {
        
        
        public var isDefault: Bool?
        
        public var unit: String?
        
        public var shipping: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
            case shipping = "shipping"
            
        }

        public init(isDefault: Bool?, shipping: Int?, unit: String?) {
            
            self.isDefault = isDefault
            
            self.unit = unit
            
            self.shipping = shipping
            
        }

        public func duplicate() -> Weight {
            let dict = self.dictionary!
            let copy = Weight(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipping = try container.decode(Int.self, forKey: .shipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
        }
        
    }
    
    /*
        Model: Store
        Used By: Order
    */

    class Store: Codable {
        
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(id: Int?) {
            
            self.id = id
            
        }

        public func duplicate() -> Store {
            let dict = self.dictionary!
            let copy = Store(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
    
    /*
        Model: ArticleMeta
        Used By: Order
    */

    class ArticleMeta: Codable {
        
        
        public var service: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case service = "service"
            
        }

        public init(service: String?) {
            
            self.service = service
            
        }

        public func duplicate() -> ArticleMeta {
            let dict = self.dictionary!
            let copy = ArticleMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    service = try container.decode(String.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
        }
        
    }
    
    /*
        Model: ArticleBrand
        Used By: Order
    */

    class ArticleBrand: Codable {
        
        
        public var name: String?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
        }

        public init(id: Int?, name: String?) {
            
            self.name = name
            
            self.id = id
            
        }

        public func duplicate() -> ArticleBrand {
            let dict = self.dictionary!
            let copy = ArticleBrand(dictionary: dict)!
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
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
    
    /*
        Model: LineItemsArticleIdentifier
        Used By: Order
    */

    class LineItemsArticleIdentifier: Codable {
        
        
        public var skuCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case skuCode = "sku_code"
            
        }

        public init(skuCode: String?) {
            
            self.skuCode = skuCode
            
        }

        public func duplicate() -> LineItemsArticleIdentifier {
            let dict = self.dictionary!
            let copy = LineItemsArticleIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    skuCode = try container.decode(String.self, forKey: .skuCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(skuCode, forKey: .skuCode)
            
            
        }
        
    }
    
    /*
        Model: PriceSet
        Used By: Order
    */

    class PriceSet: Codable {
        
        
        public var shopMoney: PriceSetShopMoney?
        
        public var presentmentMoney: PriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: PriceSetPresentmentMoney?, shopMoney: PriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> PriceSet {
            let dict = self.dictionary!
            let copy = PriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(PriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(PriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: PriceSetShopMoney
        Used By: Order
    */

    class PriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> PriceSetShopMoney {
            let dict = self.dictionary!
            let copy = PriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: PriceSetPresentmentMoney
        Used By: Order
    */

    class PriceSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> PriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = PriceSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TaxLines
        Used By: Order
    */

    class TaxLines: Codable {
        
        
        public var title: String?
        
        public var price: String?
        
        public var rate: Int?
        
        public var priceSet: TaxLinesPriceSet?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case price = "price"
            
            case rate = "rate"
            
            case priceSet = "price_set"
            
        }

        public init(price: String?, priceSet: TaxLinesPriceSet?, rate: Int?, title: String?) {
            
            self.title = title
            
            self.price = price
            
            self.rate = rate
            
            self.priceSet = priceSet
            
        }

        public func duplicate() -> TaxLines {
            let dict = self.dictionary!
            let copy = TaxLines(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(String.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rate = try container.decode(Int.self, forKey: .rate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceSet = try container.decode(TaxLinesPriceSet.self, forKey: .priceSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(priceSet, forKey: .priceSet)
            
            
        }
        
    }
    
    /*
        Model: TaxLinesPriceSet
        Used By: Order
    */

    class TaxLinesPriceSet: Codable {
        
        
        public var shopMoney: TaxLinesPriceSetShopMoney?
        
        public var presentmentMoney: TaxLinesPriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: TaxLinesPriceSetPresentmentMoney?, shopMoney: TaxLinesPriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> TaxLinesPriceSet {
            let dict = self.dictionary!
            let copy = TaxLinesPriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(TaxLinesPriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(TaxLinesPriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: TaxLinesPriceSetShopMoney
        Used By: Order
    */

    class TaxLinesPriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TaxLinesPriceSetShopMoney {
            let dict = self.dictionary!
            let copy = TaxLinesPriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TaxLinesPriceSetPresentmentMoney
        Used By: Order
    */

    class TaxLinesPriceSetPresentmentMoney: Codable {
        
        
        public var currencyCode: String?
        
        public var amount: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case amount = "amount"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.currencyCode = currencyCode
            
            self.amount = amount
            
        }

        public func duplicate() -> TaxLinesPriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TaxLinesPriceSetPresentmentMoney(dictionary: dict)!
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
                    amount = try container.decode(String.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
    
    /*
        Model: TotalDiscountSet
        Used By: Order
    */

    class TotalDiscountSet: Codable {
        
        
        public var presentmentMoney: TotalDiscountSetPresentmentMoney?
        
        public var shopMoney: TotalDiscountSetShopMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case presentmentMoney = "presentment_money"
            
            case shopMoney = "shop_money"
            
        }

        public init(presentmentMoney: TotalDiscountSetPresentmentMoney?, shopMoney: TotalDiscountSetShopMoney?) {
            
            self.presentmentMoney = presentmentMoney
            
            self.shopMoney = shopMoney
            
        }

        public func duplicate() -> TotalDiscountSet {
            let dict = self.dictionary!
            let copy = TotalDiscountSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    presentmentMoney = try container.decode(TotalDiscountSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shopMoney = try container.decode(TotalDiscountSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
        }
        
    }
    
    /*
        Model: TotalDiscountSetPresentmentMoney
        Used By: Order
    */

    class TotalDiscountSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalDiscountSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TotalDiscountSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalDiscountSetShopMoney
        Used By: Order
    */

    class TotalDiscountSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalDiscountSetShopMoney {
            let dict = self.dictionary!
            let copy = TotalDiscountSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: BillingAddress
        Used By: Order
    */

    class BillingAddress: Codable {
        
        
        public var address1: String?
        
        public var city: String?
        
        public var zip: String?
        
        public var lastName: String?
        
        public var address2: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var provinceCode: String?
        
        public var phone: String?
        
        public var company: String?
        
        public var name: String?
        
        public var country: String?
        
        public var countryCode: String?
        
        public var firstName: String?
        
        public var province: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address1 = "address1"
            
            case city = "city"
            
            case zip = "zip"
            
            case lastName = "last_name"
            
            case address2 = "address2"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case provinceCode = "province_code"
            
            case phone = "phone"
            
            case company = "company"
            
            case name = "name"
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case firstName = "first_name"
            
            case province = "province"
            
        }

        public init(address1: String?, address2: String?, city: String?, company: String?, country: String?, countryCode: String?, firstName: String?, lastName: String?, latitude: Double?, longitude: Double?, name: String?, phone: String?, province: String?, provinceCode: String?, zip: String?) {
            
            self.address1 = address1
            
            self.city = city
            
            self.zip = zip
            
            self.lastName = lastName
            
            self.address2 = address2
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.provinceCode = provinceCode
            
            self.phone = phone
            
            self.company = company
            
            self.name = name
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.firstName = firstName
            
            self.province = province
            
        }

        public func duplicate() -> BillingAddress {
            let dict = self.dictionary!
            let copy = BillingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                    zip = try container.decode(String.self, forKey: .zip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provinceCode = try container.decode(String.self, forKey: .provinceCode)
                
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
                    company = try container.decode(String.self, forKey: .company)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    province = try container.decode(String.self, forKey: .province)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(zip, forKey: .zip)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(provinceCode, forKey: .provinceCode)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(province, forKey: .province)
            
            
        }
        
    }
    
    /*
        Model: TotalShippingPriceSet
        Used By: Order
    */

    class TotalShippingPriceSet: Codable {
        
        
        public var shopMoney: TotalShippingPriceSetShopMoney?
        
        public var presentmentMoney: TotalShippingPriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: TotalShippingPriceSetPresentmentMoney?, shopMoney: TotalShippingPriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> TotalShippingPriceSet {
            let dict = self.dictionary!
            let copy = TotalShippingPriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(TotalShippingPriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(TotalShippingPriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: TotalShippingPriceSetShopMoney
        Used By: Order
    */

    class TotalShippingPriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalShippingPriceSetShopMoney {
            let dict = self.dictionary!
            let copy = TotalShippingPriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalShippingPriceSetPresentmentMoney
        Used By: Order
    */

    class TotalShippingPriceSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalShippingPriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TotalShippingPriceSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: Customer
        Used By: Order
    */

    class Customer: Codable {
        
        
        public var createdAt: String?
        
        public var id: Int?
        
        public var lastName: String?
        
        public var state: String?
        
        public var lastOrderId: Int?
        
        public var note: String?
        
        public var verifiedEmail: Bool?
        
        public var phone: String?
        
        public var acceptsMarketing: Bool?
        
        public var firstName: String?
        
        public var tags: String?
        
        public var lastOrderName: String?
        
        public var ordersCount: Int?
        
        public var totalSpent: String?
        
        public var taxExempt: Bool?
        
        public var currency: String?
        
        public var acceptsMarketingUpdatedAt: String?
        
        public var email: String?
        
        public var updatedAt: String?
        
        public var adminGraphqlApiId: String?
        
        public var defaultAddress: DefaultAddress?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdAt = "created_at"
            
            case id = "id"
            
            case lastName = "last_name"
            
            case state = "state"
            
            case lastOrderId = "last_order_id"
            
            case note = "note"
            
            case verifiedEmail = "verified_email"
            
            case phone = "phone"
            
            case acceptsMarketing = "accepts_marketing"
            
            case firstName = "first_name"
            
            case tags = "tags"
            
            case lastOrderName = "last_order_name"
            
            case ordersCount = "orders_count"
            
            case totalSpent = "total_spent"
            
            case taxExempt = "tax_exempt"
            
            case currency = "currency"
            
            case acceptsMarketingUpdatedAt = "accepts_marketing_updated_at"
            
            case email = "email"
            
            case updatedAt = "updated_at"
            
            case adminGraphqlApiId = "admin_graphql_api_id"
            
            case defaultAddress = "default_address"
            
        }

        public init(acceptsMarketing: Bool?, acceptsMarketingUpdatedAt: String?, adminGraphqlApiId: String?, createdAt: String?, currency: String?, defaultAddress: DefaultAddress?, email: String?, firstName: String?, id: Int?, lastName: String?, lastOrderId: Int?, lastOrderName: String?, note: String?, ordersCount: Int?, phone: String?, state: String?, tags: String?, taxExempt: Bool?, totalSpent: String?, updatedAt: String?, verifiedEmail: Bool?) {
            
            self.createdAt = createdAt
            
            self.id = id
            
            self.lastName = lastName
            
            self.state = state
            
            self.lastOrderId = lastOrderId
            
            self.note = note
            
            self.verifiedEmail = verifiedEmail
            
            self.phone = phone
            
            self.acceptsMarketing = acceptsMarketing
            
            self.firstName = firstName
            
            self.tags = tags
            
            self.lastOrderName = lastOrderName
            
            self.ordersCount = ordersCount
            
            self.totalSpent = totalSpent
            
            self.taxExempt = taxExempt
            
            self.currency = currency
            
            self.acceptsMarketingUpdatedAt = acceptsMarketingUpdatedAt
            
            self.email = email
            
            self.updatedAt = updatedAt
            
            self.adminGraphqlApiId = adminGraphqlApiId
            
            self.defaultAddress = defaultAddress
            
        }

        public func duplicate() -> Customer {
            let dict = self.dictionary!
            let copy = Customer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
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
                    lastOrderId = try container.decode(Int.self, forKey: .lastOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    note = try container.decode(String.self, forKey: .note)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedEmail = try container.decode(Bool.self, forKey: .verifiedEmail)
                
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
                    acceptsMarketing = try container.decode(Bool.self, forKey: .acceptsMarketing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode(String.self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastOrderName = try container.decode(String.self, forKey: .lastOrderName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ordersCount = try container.decode(Int.self, forKey: .ordersCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalSpent = try container.decode(String.self, forKey: .totalSpent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxExempt = try container.decode(Bool.self, forKey: .taxExempt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    acceptsMarketingUpdatedAt = try container.decode(String.self, forKey: .acceptsMarketingUpdatedAt)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultAddress = try container.decode(DefaultAddress.self, forKey: .defaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(lastOrderId, forKey: .lastOrderId)
            
            
            
            
            try? container.encodeIfPresent(note, forKey: .note)
            
            
            
            
            try? container.encodeIfPresent(verifiedEmail, forKey: .verifiedEmail)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(acceptsMarketing, forKey: .acceptsMarketing)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(lastOrderName, forKey: .lastOrderName)
            
            
            
            
            try? container.encodeIfPresent(ordersCount, forKey: .ordersCount)
            
            
            
            
            try? container.encodeIfPresent(totalSpent, forKey: .totalSpent)
            
            
            
            
            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(acceptsMarketingUpdatedAt, forKey: .acceptsMarketingUpdatedAt)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)
            
            
            
            
            try? container.encodeIfPresent(defaultAddress, forKey: .defaultAddress)
            
            
        }
        
    }
    
    /*
        Model: DefaultAddress
        Used By: Order
    */

    class DefaultAddress: Codable {
        
        
        public var lastName: String?
        
        public var name: String?
        
        public var provinceCode: String?
        
        public var countryCode: String?
        
        public var isDefault: Bool?
        
        public var id: Int?
        
        public var customerId: Int?
        
        public var firstName: String?
        
        public var address1: String?
        
        public var phone: String?
        
        public var countryName: String?
        
        public var company: String?
        
        public var address2: String?
        
        public var city: String?
        
        public var province: String?
        
        public var country: String?
        
        public var zip: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lastName = "last_name"
            
            case name = "name"
            
            case provinceCode = "province_code"
            
            case countryCode = "country_code"
            
            case isDefault = "is_default"
            
            case id = "id"
            
            case customerId = "customer_id"
            
            case firstName = "first_name"
            
            case address1 = "address1"
            
            case phone = "phone"
            
            case countryName = "country_name"
            
            case company = "company"
            
            case address2 = "address2"
            
            case city = "city"
            
            case province = "province"
            
            case country = "country"
            
            case zip = "zip"
            
        }

        public init(address1: String?, address2: String?, city: String?, company: String?, country: String?, countryCode: String?, countryName: String?, customerId: Int?, firstName: String?, id: Int?, isDefault: Bool?, lastName: String?, name: String?, phone: String?, province: String?, provinceCode: String?, zip: String?) {
            
            self.lastName = lastName
            
            self.name = name
            
            self.provinceCode = provinceCode
            
            self.countryCode = countryCode
            
            self.isDefault = isDefault
            
            self.id = id
            
            self.customerId = customerId
            
            self.firstName = firstName
            
            self.address1 = address1
            
            self.phone = phone
            
            self.countryName = countryName
            
            self.company = company
            
            self.address2 = address2
            
            self.city = city
            
            self.province = province
            
            self.country = country
            
            self.zip = zip
            
        }

        public func duplicate() -> DefaultAddress {
            let dict = self.dictionary!
            let copy = DefaultAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
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
                    provinceCode = try container.decode(String.self, forKey: .provinceCode)
                
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
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerId = try container.decode(Int.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                    countryName = try container.decode(String.self, forKey: .countryName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                    province = try container.decode(String.self, forKey: .province)
                
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
                    zip = try container.decode(String.self, forKey: .zip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(provinceCode, forKey: .provinceCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryName, forKey: .countryName)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(province, forKey: .province)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(zip, forKey: .zip)
            
            
        }
        
    }
    
    /*
        Model: TotalLineItemsPriceSet
        Used By: Order
    */

    class TotalLineItemsPriceSet: Codable {
        
        
        public var shopMoney: TotalLineItemsPriceSetShopMoney?
        
        public var presentmentMoney: TotalLineItemsPriceSetPresentmentMoney?
        

        public enum CodingKeys: String, CodingKey {
            
            case shopMoney = "shop_money"
            
            case presentmentMoney = "presentment_money"
            
        }

        public init(presentmentMoney: TotalLineItemsPriceSetPresentmentMoney?, shopMoney: TotalLineItemsPriceSetShopMoney?) {
            
            self.shopMoney = shopMoney
            
            self.presentmentMoney = presentmentMoney
            
        }

        public func duplicate() -> TotalLineItemsPriceSet {
            let dict = self.dictionary!
            let copy = TotalLineItemsPriceSet(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shopMoney = try container.decode(TotalLineItemsPriceSetShopMoney.self, forKey: .shopMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    presentmentMoney = try container.decode(TotalLineItemsPriceSetPresentmentMoney.self, forKey: .presentmentMoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shopMoney, forKey: .shopMoney)
            
            
            
            
            try? container.encodeIfPresent(presentmentMoney, forKey: .presentmentMoney)
            
            
        }
        
    }
    
    /*
        Model: TotalLineItemsPriceSetShopMoney
        Used By: Order
    */

    class TotalLineItemsPriceSetShopMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalLineItemsPriceSetShopMoney {
            let dict = self.dictionary!
            let copy = TotalLineItemsPriceSetShopMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: TotalLineItemsPriceSetPresentmentMoney
        Used By: Order
    */

    class TotalLineItemsPriceSetPresentmentMoney: Codable {
        
        
        public var amount: String?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: String?, currencyCode: String?) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> TotalLineItemsPriceSetPresentmentMoney {
            let dict = self.dictionary!
            let copy = TotalLineItemsPriceSetPresentmentMoney(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(String.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: OrderShippingAddress
        Used By: Order
    */

    class OrderShippingAddress: Codable {
        
        
        public var address1: String?
        
        public var zip: String?
        
        public var address2: String?
        
        public var countryCode: String?
        
        public var country: String?
        
        public var lastName: String?
        
        public var provinceCode: String?
        
        public var firstName: String?
        
        public var phone: String?
        
        public var province: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var city: String?
        
        public var company: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address1 = "address1"
            
            case zip = "zip"
            
            case address2 = "address2"
            
            case countryCode = "country_code"
            
            case country = "country"
            
            case lastName = "last_name"
            
            case provinceCode = "province_code"
            
            case firstName = "first_name"
            
            case phone = "phone"
            
            case province = "province"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case city = "city"
            
            case company = "company"
            
            case name = "name"
            
        }

        public init(address1: String?, address2: String?, city: String?, company: String?, country: String?, countryCode: String?, firstName: String?, lastName: String?, latitude: Double?, longitude: Double?, name: String?, phone: String?, province: String?, provinceCode: String?, zip: String?) {
            
            self.address1 = address1
            
            self.zip = zip
            
            self.address2 = address2
            
            self.countryCode = countryCode
            
            self.country = country
            
            self.lastName = lastName
            
            self.provinceCode = provinceCode
            
            self.firstName = firstName
            
            self.phone = phone
            
            self.province = province
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.city = city
            
            self.company = company
            
            self.name = name
            
        }

        public func duplicate() -> OrderShippingAddress {
            let dict = self.dictionary!
            let copy = OrderShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zip = try container.decode(String.self, forKey: .zip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    provinceCode = try container.decode(String.self, forKey: .provinceCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    province = try container.decode(String.self, forKey: .province)
                
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
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
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
                    company = try container.decode(String.self, forKey: .company)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(zip, forKey: .zip)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(provinceCode, forKey: .provinceCode)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(province, forKey: .province)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: OrderListing
        Used By: Order
    */

    class OrderListing: Codable {
        
        
        public var items: [OrderItems]
        
        public var filters: Filters
        
        public var nextOrderStatus: [String: Any]
        
        public var page: PlatformOrderPage
        
        public var appliedFilters: AppliedFilters
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case filters = "filters"
            
            case nextOrderStatus = "next_order_status"
            
            case page = "page"
            
            case appliedFilters = "applied_filters"
            
        }

        public init(appliedFilters: AppliedFilters, filters: Filters, items: [OrderItems], nextOrderStatus: [String: Any], page: PlatformOrderPage) {
            
            self.items = items
            
            self.filters = filters
            
            self.nextOrderStatus = nextOrderStatus
            
            self.page = page
            
            self.appliedFilters = appliedFilters
            
        }

        public func duplicate() -> OrderListing {
            let dict = self.dictionary!
            let copy = OrderListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([OrderItems].self, forKey: .items)
                
            
            
            
                filters = try container.decode(Filters.self, forKey: .filters)
                
            
            
            
                nextOrderStatus = try container.decode([String: Any].self, forKey: .nextOrderStatus)
                
            
            
            
                page = try container.decode(PlatformOrderPage.self, forKey: .page)
                
            
            
            
                appliedFilters = try container.decode(AppliedFilters.self, forKey: .appliedFilters)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(nextOrderStatus, forKey: .nextOrderStatus)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)
            
            
        }
        
    }
    
    /*
        Model: OrderItems
        Used By: Order
    */

    class OrderItems: Codable {
        
        
        public var user: PlatformOrderUserInfo?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var channel: Channel?
        
        public var id: String?
        
        public var application: PlatformApplication?
        
        public var shipments: PlatformShipment?
        
        public var createdAt: String?
        
        public var totalShipmentsInOrder: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case deliveryAddress = "delivery_address"
            
            case channel = "channel"
            
            case id = "id"
            
            case application = "application"
            
            case shipments = "shipments"
            
            case createdAt = "created_at"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
        }

        public init(application: PlatformApplication?, channel: Channel?, createdAt: String?, deliveryAddress: PlatformDeliveryAddress?, id: String?, shipments: PlatformShipment?, totalShipmentsInOrder: Int?, user: PlatformOrderUserInfo?) {
            
            self.user = user
            
            self.deliveryAddress = deliveryAddress
            
            self.channel = channel
            
            self.id = id
            
            self.application = application
            
            self.shipments = shipments
            
            self.createdAt = createdAt
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
        }

        public func duplicate() -> OrderItems {
            let dict = self.dictionary!
            let copy = OrderItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    user = try container.decode(PlatformOrderUserInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode(Channel.self, forKey: .channel)
                
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
                    application = try container.decode(PlatformApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode(PlatformShipment.self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
        }
        
    }
    
    /*
        Model: PlatformOrderUserInfo
        Used By: Order
    */

    class PlatformOrderUserInfo: Codable {
        
        
        public var mobile: String?
        
        public var firstName: String?
        
        public var gender: String?
        
        public var email: String?
        
        public var lastName: String?
        
        public var isAnonymousUser: Bool?
        
        public var uid: Int?
        
        public var avisUserId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case firstName = "first_name"
            
            case gender = "gender"
            
            case email = "email"
            
            case lastName = "last_name"
            
            case isAnonymousUser = "is_anonymous_user"
            
            case uid = "uid"
            
            case avisUserId = "avis_user_id"
            
        }

        public init(avisUserId: String?, email: String?, firstName: String?, gender: String?, isAnonymousUser: Bool?, lastName: String?, mobile: String?, uid: Int?) {
            
            self.mobile = mobile
            
            self.firstName = firstName
            
            self.gender = gender
            
            self.email = email
            
            self.lastName = lastName
            
            self.isAnonymousUser = isAnonymousUser
            
            self.uid = uid
            
            self.avisUserId = avisUserId
            
        }

        public func duplicate() -> PlatformOrderUserInfo {
            let dict = self.dictionary!
            let copy = PlatformOrderUserInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
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
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
                
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
                    avisUserId = try container.decode(String.self, forKey: .avisUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)
            
            
        }
        
    }
    
    /*
        Model: PlatformDeliveryAddress
        Used By: Order
    */

    class PlatformDeliveryAddress: Codable {
        
        
        public var area: String?
        
        public var state: String?
        
        public var country: String?
        
        public var version: String?
        
        public var address1: String?
        
        public var updatedAt: String?
        
        public var city: String?
        
        public var landmark: String?
        
        public var createdAt: String?
        
        public var name: String?
        
        public var address: String?
        
        public var phone: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var addressType: String?
        
        public var email: String?
        
        public var pincode: String?
        
        public var address2: String?
        
        public var contactPerson: String?
        
        public var addressCategory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case area = "area"
            
            case state = "state"
            
            case country = "country"
            
            case version = "version"
            
            case address1 = "address1"
            
            case updatedAt = "updated_at"
            
            case city = "city"
            
            case landmark = "landmark"
            
            case createdAt = "created_at"
            
            case name = "name"
            
            case address = "address"
            
            case phone = "phone"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case addressType = "address_type"
            
            case email = "email"
            
            case pincode = "pincode"
            
            case address2 = "address2"
            
            case contactPerson = "contact_person"
            
            case addressCategory = "address_category"
            
        }

        public init(address: String?, address1: String?, address2: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, contactPerson: String?, country: String?, createdAt: String?, email: String?, landmark: String?, latitude: Double?, longitude: Double?, name: String?, phone: String?, pincode: String?, state: String?, updatedAt: String?, version: String?) {
            
            self.area = area
            
            self.state = state
            
            self.country = country
            
            self.version = version
            
            self.address1 = address1
            
            self.updatedAt = updatedAt
            
            self.city = city
            
            self.landmark = landmark
            
            self.createdAt = createdAt
            
            self.name = name
            
            self.address = address
            
            self.phone = phone
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.addressType = addressType
            
            self.email = email
            
            self.pincode = pincode
            
            self.address2 = address2
            
            self.contactPerson = contactPerson
            
            self.addressCategory = addressCategory
            
        }

        public func duplicate() -> PlatformDeliveryAddress {
            let dict = self.dictionary!
            let copy = PlatformDeliveryAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
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
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    address = try container.decode(String.self, forKey: .address)
                
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
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
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
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
        }
        
    }
    
    /*
        Model: Channel
        Used By: Order
    */

    class Channel: Codable {
        
        
        public var name: String?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
        }

        public init(logo: String?, name: String?) {
            
            self.name = name
            
            self.logo = logo
            
        }

        public func duplicate() -> Channel {
            let dict = self.dictionary!
            let copy = Channel(dictionary: dict)!
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
    
    /*
        Model: PlatformApplication
        Used By: Order
    */

    class PlatformApplication: Codable {
        
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(id: String?) {
            
            self.id = id
            
        }

        public func duplicate() -> PlatformApplication {
            let dict = self.dictionary!
            let copy = PlatformApplication(dictionary: dict)!
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipment
        Used By: Order
    */

    class PlatformShipment: Codable {
        
        
        public var status: PlatformShipmentStatus?
        
        public var bags: Bags?
        
        public var prices: ShipmentPrices?
        
        public var id: String?
        
        public var gst: ShipmentGst?
        
        public var priority: Double?
        
        public var priorityText: String?
        
        public var lockStatus: Bool?
        
        public var orderingChannel: String?
        
        public var totalShipmentBags: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case bags = "bags"
            
            case prices = "prices"
            
            case id = "id"
            
            case gst = "gst"
            
            case priority = "priority"
            
            case priorityText = "priority_text"
            
            case lockStatus = "lock_status"
            
            case orderingChannel = "ordering_channel"
            
            case totalShipmentBags = "total_shipment_bags"
            
        }

        public init(bags: Bags?, gst: ShipmentGst?, id: String?, lockStatus: Bool?, orderingChannel: String?, prices: ShipmentPrices?, priority: Double?, priorityText: String?, status: PlatformShipmentStatus?, totalShipmentBags: Int?) {
            
            self.status = status
            
            self.bags = bags
            
            self.prices = prices
            
            self.id = id
            
            self.gst = gst
            
            self.priority = priority
            
            self.priorityText = priorityText
            
            self.lockStatus = lockStatus
            
            self.orderingChannel = orderingChannel
            
            self.totalShipmentBags = totalShipmentBags
            
        }

        public func duplicate() -> PlatformShipment {
            let dict = self.dictionary!
            let copy = PlatformShipment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(PlatformShipmentStatus.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode(Bags.self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(ShipmentPrices.self, forKey: .prices)
                
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
                    gst = try container.decode(ShipmentGst.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Double.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priorityText = try container.decode(String.self, forKey: .priorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(priorityText, forKey: .priorityText)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipmentStatus
        Used By: Order
    */

    class PlatformShipmentStatus: Codable {
        
        
        public var id: Int?
        
        public var bagList: [Int]?
        
        public var createdAt: String?
        
        public var status: String?
        
        public var name: String?
        
        public var progress: Int?
        
        public var shipmentId: String?
        
        public var currentShipmentStatus: String?
        
        public var colorCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case bagList = "bag_list"
            
            case createdAt = "created_at"
            
            case status = "status"
            
            case name = "name"
            
            case progress = "progress"
            
            case shipmentId = "shipment_id"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case colorCode = "color_code"
            
        }

        public init(bagList: [Int]?, colorCode: String?, createdAt: String?, currentShipmentStatus: String?, id: Int?, name: String?, progress: Int?, shipmentId: String?, status: String?) {
            
            self.id = id
            
            self.bagList = bagList
            
            self.createdAt = createdAt
            
            self.status = status
            
            self.name = name
            
            self.progress = progress
            
            self.shipmentId = shipmentId
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.colorCode = colorCode
            
        }

        public func duplicate() -> PlatformShipmentStatus {
            let dict = self.dictionary!
            let copy = PlatformShipmentStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagList = try container.decode([Int].self, forKey: .bagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    progress = try container.decode(Int.self, forKey: .progress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    colorCode = try container.decode(String.self, forKey: .colorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(progress, forKey: .progress)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(colorCode, forKey: .colorCode)
            
            
        }
        
    }
    
    /*
        Model: Bags
        Used By: Order
    */

    class Bags: Codable {
        
        
        public var item: BagItem?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case item = "item"
            
            case id = "id"
            
        }

        public init(id: Int?, item: BagItem?) {
            
            self.item = item
            
            self.id = id
            
        }

        public func duplicate() -> Bags {
            let dict = self.dictionary!
            let copy = Bags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    item = try container.decode(BagItem.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
    
    /*
        Model: BagItem
        Used By: Order
    */

    class BagItem: Codable {
        
        
        public var id: Int?
        
        public var size: String?
        
        public var slugKey: String?
        
        public var canReturn: Bool?
        
        public var brandId: Int?
        
        public var l2Category: [String]?
        
        public var name: String?
        
        public var code: String?
        
        public var canCancel: Bool?
        
        public var attributes: BagItemAttributes?
        
        public var l3CategoryName: String?
        
        public var l3Category: Int?
        
        public var l1Category: [String]?
        
        public var image: [String]?
        
        public var brand: String?
        
        public var lastUpdatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case size = "size"
            
            case slugKey = "slug_key"
            
            case canReturn = "can_return"
            
            case brandId = "brand_id"
            
            case l2Category = "l2_category"
            
            case name = "name"
            
            case code = "code"
            
            case canCancel = "can_cancel"
            
            case attributes = "attributes"
            
            case l3CategoryName = "l3_category_name"
            
            case l3Category = "l3_category"
            
            case l1Category = "l1_category"
            
            case image = "image"
            
            case brand = "brand"
            
            case lastUpdatedAt = "last_updated_at"
            
        }

        public init(attributes: BagItemAttributes?, brand: String?, brandId: Int?, canCancel: Bool?, canReturn: Bool?, code: String?, id: Int?, image: [String]?, l1Category: [String]?, l2Category: [String]?, l3Category: Int?, l3CategoryName: String?, lastUpdatedAt: String?, name: String?, size: String?, slugKey: String?) {
            
            self.id = id
            
            self.size = size
            
            self.slugKey = slugKey
            
            self.canReturn = canReturn
            
            self.brandId = brandId
            
            self.l2Category = l2Category
            
            self.name = name
            
            self.code = code
            
            self.canCancel = canCancel
            
            self.attributes = attributes
            
            self.l3CategoryName = l3CategoryName
            
            self.l3Category = l3Category
            
            self.l1Category = l1Category
            
            self.image = image
            
            self.brand = brand
            
            self.lastUpdatedAt = lastUpdatedAt
            
        }

        public func duplicate() -> BagItem {
            let dict = self.dictionary!
            let copy = BagItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2Category = try container.decode([String].self, forKey: .l2Category)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode(BagItemAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3Category = try container.decode(Int.self, forKey: .l3Category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1Category = try container.decode([String].self, forKey: .l1Category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode([String].self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastUpdatedAt = try container.decode(String.self, forKey: .lastUpdatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(l2Category, forKey: .l2Category)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)
            
            
            
            
            try? container.encodeIfPresent(l3Category, forKey: .l3Category)
            
            
            
            
            try? container.encodeIfPresent(l1Category, forKey: .l1Category)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(lastUpdatedAt, forKey: .lastUpdatedAt)
            
            
        }
        
    }
    
    /*
        Model: BagItemAttributes
        Used By: Order
    */

    class BagItemAttributes: Codable {
        
        
        public var itemCode: String?
        
        public var brandName: String?
        
        public var countryOfOrigin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemCode = "item_code"
            
            case brandName = "brand_name"
            
            case countryOfOrigin = "country_of_origin"
            
        }

        public init(brandName: String?, countryOfOrigin: String?, itemCode: String?) {
            
            self.itemCode = itemCode
            
            self.brandName = brandName
            
            self.countryOfOrigin = countryOfOrigin
            
        }

        public func duplicate() -> BagItemAttributes {
            let dict = self.dictionary!
            let copy = BagItemAttributes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
        }
        
    }
    
    /*
        Model: ShipmentPrices
        Used By: Order
    */

    class ShipmentPrices: Codable {
        
        
        public var refundAmount: Double?
        
        public var cashbackApplied: Double?
        
        public var transferPrice: Double?
        
        public var couponValue: Double?
        
        public var amountPaid: Double?
        
        public var deliveryCharge: Double?
        
        public var couponEffectiveDiscount: Double?
        
        public var codCharges: Double?
        
        public var refundCredit: Double?
        
        public var addedToFyndCash: Bool?
        
        public var gstTaxPercentage: Double?
        
        public var priceMarked: Double?
        
        public var priceEffective: Double?
        
        public var discount: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var amountPaidRoundoff: Double?
        
        public var fyndCredits: Double?
        
        public var brandCalculatedAmount: Double?
        
        public var cashback: Double?
        
        public var valueOfGood: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundAmount = "refund_amount"
            
            case cashbackApplied = "cashback_applied"
            
            case transferPrice = "transfer_price"
            
            case couponValue = "coupon_value"
            
            case amountPaid = "amount_paid"
            
            case deliveryCharge = "delivery_charge"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case codCharges = "cod_charges"
            
            case refundCredit = "refund_credit"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case discount = "discount"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case fyndCredits = "fynd_credits"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case cashback = "cashback"
            
            case valueOfGood = "value_of_good"
            
        }

        public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstTaxPercentage: Double?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, transferPrice: Double?, valueOfGood: Double?) {
            
            self.refundAmount = refundAmount
            
            self.cashbackApplied = cashbackApplied
            
            self.transferPrice = transferPrice
            
            self.couponValue = couponValue
            
            self.amountPaid = amountPaid
            
            self.deliveryCharge = deliveryCharge
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.codCharges = codCharges
            
            self.refundCredit = refundCredit
            
            self.addedToFyndCash = addedToFyndCash
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.discount = discount
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.fyndCredits = fyndCredits
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.cashback = cashback
            
            self.valueOfGood = valueOfGood
            
        }

        public func duplicate() -> ShipmentPrices {
            let dict = self.dictionary!
            let copy = ShipmentPrices(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
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
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
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
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
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
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
        }
        
    }
    
    /*
        Model: Payments
        Used By: Order
    */

    class Payments: Codable {
        
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var logo: String?
        
        public var source: String?
        
        public var sourceNickname: String?
        
        public var displayPriority: Int?
        
        public var id: Int?
        
        public var mode: String?
        
        public var paymentIdentifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case logo = "logo"
            
            case source = "source"
            
            case sourceNickname = "source_nickname"
            
            case displayPriority = "display_priority"
            
            case id = "id"
            
            case mode = "mode"
            
            case paymentIdentifier = "payment_identifier"
            
        }

        public init(displayName: String?, displayPriority: Int?, id: Int?, isActive: Bool?, logo: String?, mode: String?, paymentIdentifier: String?, source: String?, sourceNickname: String?) {
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.logo = logo
            
            self.source = source
            
            self.sourceNickname = sourceNickname
            
            self.displayPriority = displayPriority
            
            self.id = id
            
            self.mode = mode
            
            self.paymentIdentifier = paymentIdentifier
            
        }

        public func duplicate() -> Payments {
            let dict = self.dictionary!
            let copy = Payments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sourceNickname = try container.decode(String.self, forKey: .sourceNickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
        }
        
    }
    
    /*
        Model: Filters
        Used By: Order
    */

    class Filters: Codable {
        
        
        public var stage: Stage?
        
        public var stages: Stages?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case stages = "stages"
            
        }

        public init(stage: Stage?, stages: Stages?) {
            
            self.stage = stage
            
            self.stages = stages
            
        }

        public func duplicate() -> Filters {
            let dict = self.dictionary!
            let copy = Filters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(Stage.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stages = try container.decode(Stages.self, forKey: .stages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(stages, forKey: .stages)
            
            
        }
        
    }
    
    /*
        Model: Stage
        Used By: Order
    */

    class Stage: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var isDefault: Bool?
        
        public var filters: StagesFilters?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case isDefault = "is_default"
            
            case filters = "filters"
            
        }

        public init(filters: StagesFilters?, isDefault: Bool?, text: String?, value: String?) {
            
            self.text = text
            
            self.value = value
            
            self.isDefault = isDefault
            
            self.filters = filters
            
        }

        public func duplicate() -> Stage {
            let dict = self.dictionary!
            let copy = Stage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(StagesFilters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
    
    /*
        Model: StagesFilters
        Used By: Order
    */

    class StagesFilters: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var type: String?
        
        public var options: Options?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case type = "type"
            
            case options = "options"
            
        }

        public init(options: Options?, text: String?, type: String?, value: String?) {
            
            self.text = text
            
            self.value = value
            
            self.type = type
            
            self.options = options
            
        }

        public func duplicate() -> StagesFilters {
            let dict = self.dictionary!
            let copy = StagesFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
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
                    options = try container.decode(Options.self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
        }
        
    }
    
    /*
        Model: Options
        Used By: Order
    */

    class Options: Codable {
        
        
        public var text: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(text: String?, value: String?) {
            
            self.text = text
            
            self.value = value
            
        }

        public func duplicate() -> Options {
            let dict = self.dictionary!
            let copy = Options(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: PlatformOrderPage
        Used By: Order
    */

    class PlatformOrderPage: Codable {
        
        
        public var next: String?
        
        public var previous: String?
        
        public var type: String?
        
        public var size: Int?
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var total: Int?
        
        public var itemTotal: ItemTotal?
        

        public enum CodingKeys: String, CodingKey {
            
            case next = "next"
            
            case previous = "previous"
            
            case type = "type"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case total = "total"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: ItemTotal?, next: String?, previous: String?, size: Int?, total: Int?, type: String?) {
            
            self.next = next
            
            self.previous = previous
            
            self.type = type
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.total = total
            
            self.itemTotal = itemTotal
            
        }

        public func duplicate() -> PlatformOrderPage {
            let dict = self.dictionary!
            let copy = PlatformOrderPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    next = try container.decode(String.self, forKey: .next)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previous = try container.decode(String.self, forKey: .previous)
                
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
                    size = try container.decode(Int.self, forKey: .size)
                
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
                    itemTotal = try container.decode(ItemTotal.self, forKey: .itemTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(next, forKey: .next)
            
            
            
            
            try? container.encodeIfPresent(previous, forKey: .previous)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
        }
        
    }
    
    /*
        Model: AppliedFilters
        Used By: Order
    */

    class AppliedFilters: Codable {
        
        
        public var stage: String?
        
        public var stores: [String]?
        
        public var deploymentStores: [String]?
        
        public var dp: [Int]?
        
        public var fromDate: String?
        
        public var toDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case stores = "stores"
            
            case deploymentStores = "deployment_stores"
            
            case dp = "dp"
            
            case fromDate = "from_date"
            
            case toDate = "to_date"
            
        }

        public init(deploymentStores: [String]?, dp: [Int]?, fromDate: String?, stage: String?, stores: [String]?, toDate: String?) {
            
            self.stage = stage
            
            self.stores = stores
            
            self.deploymentStores = deploymentStores
            
            self.dp = dp
            
            self.fromDate = fromDate
            
            self.toDate = toDate
            
        }

        public func duplicate() -> AppliedFilters {
            let dict = self.dictionary!
            let copy = AppliedFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode([String].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deploymentStores = try container.decode([String].self, forKey: .deploymentStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dp = try container.decode([Int].self, forKey: .dp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(deploymentStores, forKey: .deploymentStores)
            
            
            
            
            try? container.encodeIfPresent(dp, forKey: .dp)
            
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
        }
        
    }
    
    /*
        Model: OrderDetails
        Used By: Order
    */

    class OrderDetails: Codable {
        
        
        public var items: [OrderPicklistListing]
        
        public var page: PlatformOrderPage
        
        public var filters: Filters
        
        public var nextOrderStatus: [String: Any]
        
        public var appliedFilters: AppliedFilters
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case filters = "filters"
            
            case nextOrderStatus = "next_order_status"
            
            case appliedFilters = "applied_filters"
            
        }

        public init(appliedFilters: AppliedFilters, filters: Filters, items: [OrderPicklistListing], nextOrderStatus: [String: Any], page: PlatformOrderPage) {
            
            self.items = items
            
            self.page = page
            
            self.filters = filters
            
            self.nextOrderStatus = nextOrderStatus
            
            self.appliedFilters = appliedFilters
            
        }

        public func duplicate() -> OrderDetails {
            let dict = self.dictionary!
            let copy = OrderDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([OrderPicklistListing].self, forKey: .items)
                
            
            
            
                page = try container.decode(PlatformOrderPage.self, forKey: .page)
                
            
            
            
                filters = try container.decode(Filters.self, forKey: .filters)
                
            
            
            
                nextOrderStatus = try container.decode([String: Any].self, forKey: .nextOrderStatus)
                
            
            
            
                appliedFilters = try container.decode(AppliedFilters.self, forKey: .appliedFilters)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(nextOrderStatus, forKey: .nextOrderStatus)
            
            
            
            
            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)
            
            
        }
        
    }
    
    /*
        Model: OrderDetailsItem
        Used By: Order
    */

    class OrderDetailsItem: Codable {
        
        
        public var user: PlatformOrderUserInfo?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var channel: Channel?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var orderingStore: [String: Any]?
        
        public var breakupValues: PlatformBreakupValues?
        
        public var id: String?
        
        public var application: PlatformApplication?
        
        public var shipments: PlatformShipmentDetails?
        
        public var createdAt: String?
        
        public var totalShipmentsInOrder: Int?
        
        public var payments: ItemsPayments?
        
        public var paymentMethods: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case deliveryAddress = "delivery_address"
            
            case channel = "channel"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case orderingStore = "ordering_store"
            
            case breakupValues = "breakup_values"
            
            case id = "id"
            
            case application = "application"
            
            case shipments = "shipments"
            
            case createdAt = "created_at"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case payments = "payments"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(application: PlatformApplication?, breakupValues: PlatformBreakupValues?, channel: Channel?, createdAt: String?, deliveryAddress: PlatformDeliveryAddress?, fyndstoreEmp: [String: Any]?, id: String?, orderingStore: [String: Any]?, payments: ItemsPayments?, paymentMethods: [String: Any]?, shipments: PlatformShipmentDetails?, totalShipmentsInOrder: Int?, user: PlatformOrderUserInfo?) {
            
            self.user = user
            
            self.deliveryAddress = deliveryAddress
            
            self.channel = channel
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.orderingStore = orderingStore
            
            self.breakupValues = breakupValues
            
            self.id = id
            
            self.application = application
            
            self.shipments = shipments
            
            self.createdAt = createdAt
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.payments = payments
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> OrderDetailsItem {
            let dict = self.dictionary!
            let copy = OrderDetailsItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    user = try container.decode(PlatformOrderUserInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode(Channel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(PlatformBreakupValues.self, forKey: .breakupValues)
                
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
                    application = try container.decode(PlatformApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode(PlatformShipmentDetails.self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode(ItemsPayments.self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: PlatformBreakupValues
        Used By: Order
    */

    class PlatformBreakupValues: Codable {
        
        
        public var display: String?
        
        public var value: Double?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case name = "name"
            
        }

        public init(display: String?, name: String?, value: Double?) {
            
            self.display = display
            
            self.value = value
            
            self.name = name
            
        }

        public func duplicate() -> PlatformBreakupValues {
            let dict = self.dictionary!
            let copy = PlatformBreakupValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ArticleAssignment
        Used By: Order
    */

    class ArticleAssignment: Codable {
        
        
        public var strategy: String?
        
        public var level: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case strategy = "strategy"
            
            case level = "level"
            
        }

        public init(level: String?, strategy: String?) {
            
            self.strategy = strategy
            
            self.level = level
            
        }

        public func duplicate() -> ArticleAssignment {
            let dict = self.dictionary!
            let copy = ArticleAssignment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(strategy, forKey: .strategy)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipmentDetails
        Used By: Order
    */

    class PlatformShipmentDetails: Codable {
        
        
        public var status: PlatformShipmentDetailsStatus?
        
        public var bags: BagsDetails?
        
        public var prices: ShipmentPrices?
        
        public var breakupValues: ShipmentBreakupValues?
        
        public var id: String?
        
        public var dpDetails: DpDetails?
        
        public var paymentMethods: [String: Any]?
        
        public var invoice: ShipmentInvoice?
        
        public var fulfillingStore: PlatformFulfillingStore?
        
        public var payments: Payments?
        
        public var gst: ShipmentGst?
        
        public var company: Company?
        
        public var brand: PlatformShipmentDetailsBrand?
        
        public var coupon: [String: Any]?
        
        public var orderSource: String?
        
        public var isNotFyndSource: Bool?
        
        public var canBreak: [String: Any]?
        
        public var comment: String?
        
        public var promise: Promise?
        
        public var trackingDetails: ShipmentTrackingDetails?
        
        public var isFyndCoupon: Bool?
        
        public var orderType: String?
        
        public var totalShipmentBags: Int?
        
        public var pod: [String: Any]?
        
        public var lockStatus: Bool?
        
        public var priority: Double?
        
        public var priorityText: String?
        
        public var orderingChannel: String?
        
        public var creditNoteId: String?
        
        public var autoTriggerDpAssignment: Bool?
        
        public var packagingType: String?
        
        public var dates: ShipmentDates?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case bags = "bags"
            
            case prices = "prices"
            
            case breakupValues = "breakup_values"
            
            case id = "id"
            
            case dpDetails = "dp_details"
            
            case paymentMethods = "payment_methods"
            
            case invoice = "invoice"
            
            case fulfillingStore = "fulfilling_store"
            
            case payments = "payments"
            
            case gst = "gst"
            
            case company = "company"
            
            case brand = "brand"
            
            case coupon = "coupon"
            
            case orderSource = "order_source"
            
            case isNotFyndSource = "is_not_fynd_source"
            
            case canBreak = "can_break"
            
            case comment = "comment"
            
            case promise = "promise"
            
            case trackingDetails = "tracking_details"
            
            case isFyndCoupon = "is_fynd_coupon"
            
            case orderType = "order_type"
            
            case totalShipmentBags = "total_shipment_bags"
            
            case pod = "pod"
            
            case lockStatus = "lock_status"
            
            case priority = "priority"
            
            case priorityText = "priority_text"
            
            case orderingChannel = "ordering_channel"
            
            case creditNoteId = "credit_note_id"
            
            case autoTriggerDpAssignment = "auto_trigger_dp_assignment"
            
            case packagingType = "packaging_type"
            
            case dates = "dates"
            
        }

        public init(autoTriggerDpAssignment: Bool?, bags: BagsDetails?, brand: PlatformShipmentDetailsBrand?, breakupValues: ShipmentBreakupValues?, canBreak: [String: Any]?, comment: String?, company: Company?, coupon: [String: Any]?, creditNoteId: String?, dates: ShipmentDates?, dpDetails: DpDetails?, fulfillingStore: PlatformFulfillingStore?, gst: ShipmentGst?, id: String?, invoice: ShipmentInvoice?, isFyndCoupon: Bool?, isNotFyndSource: Bool?, lockStatus: Bool?, orderingChannel: String?, orderSource: String?, orderType: String?, packagingType: String?, payments: Payments?, paymentMethods: [String: Any]?, pod: [String: Any]?, prices: ShipmentPrices?, priority: Double?, priorityText: String?, promise: Promise?, status: PlatformShipmentDetailsStatus?, totalShipmentBags: Int?, trackingDetails: ShipmentTrackingDetails?) {
            
            self.status = status
            
            self.bags = bags
            
            self.prices = prices
            
            self.breakupValues = breakupValues
            
            self.id = id
            
            self.dpDetails = dpDetails
            
            self.paymentMethods = paymentMethods
            
            self.invoice = invoice
            
            self.fulfillingStore = fulfillingStore
            
            self.payments = payments
            
            self.gst = gst
            
            self.company = company
            
            self.brand = brand
            
            self.coupon = coupon
            
            self.orderSource = orderSource
            
            self.isNotFyndSource = isNotFyndSource
            
            self.canBreak = canBreak
            
            self.comment = comment
            
            self.promise = promise
            
            self.trackingDetails = trackingDetails
            
            self.isFyndCoupon = isFyndCoupon
            
            self.orderType = orderType
            
            self.totalShipmentBags = totalShipmentBags
            
            self.pod = pod
            
            self.lockStatus = lockStatus
            
            self.priority = priority
            
            self.priorityText = priorityText
            
            self.orderingChannel = orderingChannel
            
            self.creditNoteId = creditNoteId
            
            self.autoTriggerDpAssignment = autoTriggerDpAssignment
            
            self.packagingType = packagingType
            
            self.dates = dates
            
        }

        public func duplicate() -> PlatformShipmentDetails {
            let dict = self.dictionary!
            let copy = PlatformShipmentDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(PlatformShipmentDetailsStatus.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode(BagsDetails.self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(ShipmentPrices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(ShipmentBreakupValues.self, forKey: .breakupValues)
                
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
                    dpDetails = try container.decode(DpDetails.self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(ShipmentInvoice.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillingStore = try container.decode(PlatformFulfillingStore.self, forKey: .fulfillingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode(Payments.self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(ShipmentGst.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(Company.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(PlatformShipmentDetailsBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode([String: Any].self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderSource = try container.decode(String.self, forKey: .orderSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBreak = try container.decode([String: Any].self, forKey: .canBreak)
                
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
                    promise = try container.decode(Promise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingDetails = try container.decode(ShipmentTrackingDetails.self, forKey: .trackingDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)
                
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
                    totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pod = try container.decode([String: Any].self, forKey: .pod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Double.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priorityText = try container.decode(String.self, forKey: .priorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoTriggerDpAssignment = try container.decode(Bool.self, forKey: .autoTriggerDpAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dates = try container.decode(ShipmentDates.self, forKey: .dates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(orderSource, forKey: .orderSource)
            
            
            
            
            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)
            
            
            
            
            try? container.encodeIfPresent(canBreak, forKey: .canBreak)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
            
            
            
            
            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
            
            
            
            
            try? container.encodeIfPresent(pod, forKey: .pod)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(priorityText, forKey: .priorityText)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(autoTriggerDpAssignment, forKey: .autoTriggerDpAssignment)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipmentDetailsStatus
        Used By: Order
    */

    class PlatformShipmentDetailsStatus: Codable {
        
        
        public var id: Int?
        
        public var bagList: [Int]?
        
        public var createdAt: String?
        
        public var status: String?
        
        public var name: String?
        
        public var progress: Int?
        
        public var shipmentId: String?
        
        public var currentShipmentStatus: String?
        
        public var colorCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case bagList = "bag_list"
            
            case createdAt = "created_at"
            
            case status = "status"
            
            case name = "name"
            
            case progress = "progress"
            
            case shipmentId = "shipment_id"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case colorCode = "color_code"
            
        }

        public init(bagList: [Int]?, colorCode: String?, createdAt: String?, currentShipmentStatus: String?, id: Int?, name: String?, progress: Int?, shipmentId: String?, status: String?) {
            
            self.id = id
            
            self.bagList = bagList
            
            self.createdAt = createdAt
            
            self.status = status
            
            self.name = name
            
            self.progress = progress
            
            self.shipmentId = shipmentId
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.colorCode = colorCode
            
        }

        public func duplicate() -> PlatformShipmentDetailsStatus {
            let dict = self.dictionary!
            let copy = PlatformShipmentDetailsStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagList = try container.decode([Int].self, forKey: .bagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    progress = try container.decode(Int.self, forKey: .progress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentShipmentStatus = try container.decode(String.self, forKey: .currentShipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    colorCode = try container.decode(String.self, forKey: .colorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(progress, forKey: .progress)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(colorCode, forKey: .colorCode)
            
            
        }
        
    }
    
    /*
        Model: BagsDetails
        Used By: Order
    */

    class BagsDetails: Codable {
        
        
        public var financialBreakup: [BagFinancialBreakup]?
        
        public var status: BagCurrStatus?
        
        public var item: BagItem?
        
        public var article: BagArticle?
        
        public var id: Int?
        
        public var prices: BagPrices?
        
        public var gstDetails: GstDetails?
        
        public var breakupValues: BagBreakupValues?
        
        public var updateTime: Int?
        
        public var currentStatus: BagCurrentStatus?
        
        public var bagStatus: BagStatus?
        
        public var canCancel: Bool?
        
        public var canReturn: Bool?
        
        public var paymentMethods: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case financialBreakup = "financial_breakup"
            
            case status = "status"
            
            case item = "item"
            
            case article = "article"
            
            case id = "id"
            
            case prices = "prices"
            
            case gstDetails = "gst_details"
            
            case breakupValues = "breakup_values"
            
            case updateTime = "update_time"
            
            case currentStatus = "current_status"
            
            case bagStatus = "bag_status"
            
            case canCancel = "can_cancel"
            
            case canReturn = "can_return"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(article: BagArticle?, bagStatus: BagStatus?, breakupValues: BagBreakupValues?, canCancel: Bool?, canReturn: Bool?, currentStatus: BagCurrentStatus?, financialBreakup: [BagFinancialBreakup]?, gstDetails: GstDetails?, id: Int?, item: BagItem?, paymentMethods: [String: Any]?, prices: BagPrices?, status: BagCurrStatus?, updateTime: Int?) {
            
            self.financialBreakup = financialBreakup
            
            self.status = status
            
            self.item = item
            
            self.article = article
            
            self.id = id
            
            self.prices = prices
            
            self.gstDetails = gstDetails
            
            self.breakupValues = breakupValues
            
            self.updateTime = updateTime
            
            self.currentStatus = currentStatus
            
            self.bagStatus = bagStatus
            
            self.canCancel = canCancel
            
            self.canReturn = canReturn
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> BagsDetails {
            let dict = self.dictionary!
            let copy = BagsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    financialBreakup = try container.decode([BagFinancialBreakup].self, forKey: .financialBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(BagCurrStatus.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    item = try container.decode(BagItem.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(BagArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(BagPrices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstDetails = try container.decode(GstDetails.self, forKey: .gstDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(BagBreakupValues.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updateTime = try container.decode(Int.self, forKey: .updateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(BagCurrentStatus.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatus = try container.decode(BagStatus.self, forKey: .bagStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(updateTime, forKey: .updateTime)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: BagFinancialBreakup
        Used By: Order
    */

    class BagFinancialBreakup: Codable {
        
        
        public var valueOfGood: Double?
        
        public var hsnCode: String?
        
        public var priceEffective: Double?
        
        public var codCharges: Double?
        
        public var gstFee: String?
        
        public var fyndCredits: Double?
        
        public var refundAmount: Double?
        
        public var cashbackApplied: Double?
        
        public var transferPrice: Double?
        
        public var amountPaidRoundoff: Double?
        
        public var couponValue: Double?
        
        public var amountPaid: Double?
        
        public var gstTaxPercentage: Double?
        
        public var size: String?
        
        public var totalUnits: Int?
        
        public var discount: Double?
        
        public var couponEffectiveDiscount: Double?
        
        public var cashback: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var gstTag: String?
        
        public var deliveryCharge: Double?
        
        public var refundCredit: Double?
        
        public var priceMarked: Double?
        
        public var identifiers: Identifiers?
        
        public var itemName: String?
        
        public var addedToFyndCash: Bool?
        
        public var brandCalculatedAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case valueOfGood = "value_of_good"
            
            case hsnCode = "hsn_code"
            
            case priceEffective = "price_effective"
            
            case codCharges = "cod_charges"
            
            case gstFee = "gst_fee"
            
            case fyndCredits = "fynd_credits"
            
            case refundAmount = "refund_amount"
            
            case cashbackApplied = "cashback_applied"
            
            case transferPrice = "transfer_price"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case couponValue = "coupon_value"
            
            case amountPaid = "amount_paid"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case size = "size"
            
            case totalUnits = "total_units"
            
            case discount = "discount"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case cashback = "cashback"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case gstTag = "gst_tag"
            
            case deliveryCharge = "delivery_charge"
            
            case refundCredit = "refund_credit"
            
            case priceMarked = "price_marked"
            
            case identifiers = "identifiers"
            
            case itemName = "item_name"
            
            case addedToFyndCash = "added_to_fynd_cash"
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
        }

        public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstFee: String?, gstTag: String?, gstTaxPercentage: Double?, hsnCode: String?, identifiers: Identifiers?, itemName: String?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, size: String?, totalUnits: Int?, transferPrice: Double?, valueOfGood: Double?) {
            
            self.valueOfGood = valueOfGood
            
            self.hsnCode = hsnCode
            
            self.priceEffective = priceEffective
            
            self.codCharges = codCharges
            
            self.gstFee = gstFee
            
            self.fyndCredits = fyndCredits
            
            self.refundAmount = refundAmount
            
            self.cashbackApplied = cashbackApplied
            
            self.transferPrice = transferPrice
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.couponValue = couponValue
            
            self.amountPaid = amountPaid
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.size = size
            
            self.totalUnits = totalUnits
            
            self.discount = discount
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.cashback = cashback
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.gstTag = gstTag
            
            self.deliveryCharge = deliveryCharge
            
            self.refundCredit = refundCredit
            
            self.priceMarked = priceMarked
            
            self.identifiers = identifiers
            
            self.itemName = itemName
            
            self.addedToFyndCash = addedToFyndCash
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
        }

        public func duplicate() -> BagFinancialBreakup {
            let dict = self.dictionary!
            let copy = BagFinancialBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstFee = try container.decode(String.self, forKey: .gstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferPrice = try container.decode(Double.self, forKey: .transferPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                
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
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
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
                    totalUnits = try container.decode(Int.self, forKey: .totalUnits)
                
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
                    couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
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
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode(Identifiers.self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemName = try container.decode(String.self, forKey: .itemName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
            
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
        }
        
    }
    
    /*
        Model: Identifiers
        Used By: Order
    */

    class Identifiers: Codable {
        
        
        public var ean: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ean = "ean"
            
        }

        public init(ean: String?) {
            
            self.ean = ean
            
        }

        public func duplicate() -> Identifiers {
            let dict = self.dictionary!
            let copy = Identifiers(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ean = try container.decode(String.self, forKey: .ean)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ean, forKey: .ean)
            
            
        }
        
    }
    
    /*
        Model: BagCurrStatus
        Used By: Order
    */

    class BagCurrStatus: Codable {
        
        
        public var enableTracking: Bool?
        
        public var isCustomerReturnAllowed: Bool?
        
        public var isActive: Bool?
        
        public var isReturnable: Bool?
        
        public var canBeCancelled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case enableTracking = "enable_tracking"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
            case isActive = "is_active"
            
            case isReturnable = "is_returnable"
            
            case canBeCancelled = "can_be_cancelled"
            
        }

        public init(canBeCancelled: Bool?, enableTracking: Bool?, isActive: Bool?, isCustomerReturnAllowed: Bool?, isReturnable: Bool?) {
            
            self.enableTracking = enableTracking
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
            self.isActive = isActive
            
            self.isReturnable = isReturnable
            
            self.canBeCancelled = canBeCancelled
            
        }

        public func duplicate() -> BagCurrStatus {
            let dict = self.dictionary!
            let copy = BagCurrStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
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
                    isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
        }
        
    }
    
    /*
        Model: BagArticle
        Used By: Order
    */

    class BagArticle: Codable {
        
        
        public var identifiers: ArticleIdentifiers?
        
        public var espModified: Bool?
        
        public var isSet: Bool?
        
        public var size: String?
        
        public var code: String?
        
        public var set: Set?
        
        public var sellerIdentifier: String?
        
        public var returnConfig: BagArticleReturnConfig?
        
        public var id: String?
        
        public var uid: String?
        
        public var childDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case espModified = "esp_modified"
            
            case isSet = "is_set"
            
            case size = "size"
            
            case code = "code"
            
            case set = "set"
            
            case sellerIdentifier = "seller_identifier"
            
            case returnConfig = "return_config"
            
            case id = "_id"
            
            case uid = "uid"
            
            case childDetails = "child_details"
            
        }

        public init(childDetails: [String: Any]?, code: String?, espModified: Bool?, identifiers: ArticleIdentifiers?, isSet: Bool?, returnConfig: BagArticleReturnConfig?, sellerIdentifier: String?, set: Set?, size: String?, uid: String?, id: String?) {
            
            self.identifiers = identifiers
            
            self.espModified = espModified
            
            self.isSet = isSet
            
            self.size = size
            
            self.code = code
            
            self.set = set
            
            self.sellerIdentifier = sellerIdentifier
            
            self.returnConfig = returnConfig
            
            self.id = id
            
            self.uid = uid
            
            self.childDetails = childDetails
            
        }

        public func duplicate() -> BagArticle {
            let dict = self.dictionary!
            let copy = BagArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode(ArticleIdentifiers.self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    espModified = try container.decode(Bool.self, forKey: .espModified)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
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
                    set = try container.decode(Set.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(BagArticleReturnConfig.self, forKey: .returnConfig)
                
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
                    childDetails = try container.decode([String: Any].self, forKey: .childDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(espModified, forKey: .espModified)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(childDetails, forKey: .childDetails)
            
            
        }
        
    }
    
    /*
        Model: ArticleIdentifiers
        Used By: Order
    */

    class ArticleIdentifiers: Codable {
        
        
        public var ean: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ean = "ean"
            
        }

        public init(ean: String?) {
            
            self.ean = ean
            
        }

        public func duplicate() -> ArticleIdentifiers {
            let dict = self.dictionary!
            let copy = ArticleIdentifiers(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ean = try container.decode(String.self, forKey: .ean)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ean, forKey: .ean)
            
            
        }
        
    }
    
    /*
        Model: Set
        Used By: Order
    */

    class Set: Codable {
        
        
        public var quantity: Int?
        
        public var sizeDistribution: SetSizeDistribution?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
        }

        public init(quantity: Int?, sizeDistribution: SetSizeDistribution?) {
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
        }

        public func duplicate() -> Set {
            let dict = self.dictionary!
            let copy = Set(dictionary: dict)!
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
                    sizeDistribution = try container.decode(SetSizeDistribution.self, forKey: .sizeDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
        }
        
    }
    
    /*
        Model: SetSizeDistribution
        Used By: Order
    */

    class SetSizeDistribution: Codable {
        
        
        public var sizes: Sizes?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: Sizes?) {
            
            self.sizes = sizes
            
        }

        public func duplicate() -> SetSizeDistribution {
            let dict = self.dictionary!
            let copy = SetSizeDistribution(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizes = try container.decode(Sizes.self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
    
    /*
        Model: Sizes
        Used By: Order
    */

    class Sizes: Codable {
        
        
        public var size: String?
        
        public var pieces: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case pieces = "pieces"
            
        }

        public init(pieces: Int?, size: String?) {
            
            self.size = size
            
            self.pieces = pieces
            
        }

        public func duplicate() -> Sizes {
            let dict = self.dictionary!
            let copy = Sizes(dictionary: dict)!
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
                    pieces = try container.decode(Int.self, forKey: .pieces)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(pieces, forKey: .pieces)
            
            
        }
        
    }
    
    /*
        Model: BagArticleReturnConfig
        Used By: Order
    */

    class BagArticleReturnConfig: Codable {
        
        
        public var time: Int?
        
        public var unit: String?
        
        public var returnable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case time = "time"
            
            case unit = "unit"
            
            case returnable = "returnable"
            
        }

        public init(returnable: Bool?, time: Int?, unit: String?) {
            
            self.time = time
            
            self.unit = unit
            
            self.returnable = returnable
            
        }

        public func duplicate() -> BagArticleReturnConfig {
            let dict = self.dictionary!
            let copy = BagArticleReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(returnable, forKey: .returnable)
            
            
        }
        
    }
    
    /*
        Model: GstDetails
        Used By: Order
    */

    class GstDetails: Codable {
        
        
        public var brandCalculatedAmount: Double?
        
        public var gstFee: String?
        
        public var gstTag: String?
        
        public var hsnCode: String?
        
        public var valueOfGood: Double?
        
        public var gstTaxPercentage: Double?
        
        public var isDefaultHsnCode: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case gstFee = "gst_fee"
            
            case gstTag = "gst_tag"
            
            case hsnCode = "hsn_code"
            
            case valueOfGood = "value_of_good"
            
            case gstTaxPercentage = "gst_tax_percentage"
            
            case isDefaultHsnCode = "is_default_hsn_code"
            
        }

        public init(brandCalculatedAmount: Double?, gstFee: String?, gstTag: String?, gstTaxPercentage: Double?, hsnCode: String?, isDefaultHsnCode: Bool?, valueOfGood: Double?) {
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.gstFee = gstFee
            
            self.gstTag = gstTag
            
            self.hsnCode = hsnCode
            
            self.valueOfGood = valueOfGood
            
            self.gstTaxPercentage = gstTaxPercentage
            
            self.isDefaultHsnCode = isDefaultHsnCode
            
        }

        public func duplicate() -> GstDetails {
            let dict = self.dictionary!
            let copy = GstDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstFee = try container.decode(String.self, forKey: .gstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
            
            
            
            
            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)
            
            
        }
        
    }
    
    /*
        Model: BagBreakupValues
        Used By: Order
    */

    class BagBreakupValues: Codable {
        
        
        public var name: String?
        
        public var display: String?
        
        public var value: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case value = "value"
            
        }

        public init(display: String?, name: String?, value: Double?) {
            
            self.name = name
            
            self.display = display
            
            self.value = value
            
        }

        public func duplicate() -> BagBreakupValues {
            let dict = self.dictionary!
            let copy = BagBreakupValues(dictionary: dict)!
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
                    display = try container.decode(String.self, forKey: .display)
                
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: BagCurrentStatus
        Used By: Order
    */

    class BagCurrentStatus: Codable {
        
        
        public var updatedAt: String?
        
        public var bagStateMapper: BagStateMapper?
        
        public var status: String?
        
        public var stateType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case updatedAt = "updated_at"
            
            case bagStateMapper = "bag_state_mapper"
            
            case status = "status"
            
            case stateType = "state_type"
            
        }

        public init(bagStateMapper: BagStateMapper?, stateType: String?, status: String?, updatedAt: String?) {
            
            self.updatedAt = updatedAt
            
            self.bagStateMapper = bagStateMapper
            
            self.status = status
            
            self.stateType = stateType
            
        }

        public func duplicate() -> BagCurrentStatus {
            let dict = self.dictionary!
            let copy = BagCurrentStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
        }
        
    }
    
    /*
        Model: BagStateMapper
        Used By: Order
    */

    class BagStateMapper: Codable {
        
        
        public var appStateName: String?
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var name: String?
        
        public var appDisplayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appStateName = "app_state_name"
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case name = "name"
            
            case appDisplayName = "app_display_name"
            
        }

        public init(appDisplayName: String?, appStateName: String?, displayName: String?, isActive: Bool?, name: String?) {
            
            self.appStateName = appStateName
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.name = name
            
            self.appDisplayName = appDisplayName
            
        }

        public func duplicate() -> BagStateMapper {
            let dict = self.dictionary!
            let copy = BagStateMapper(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appStateName = try container.decode(String.self, forKey: .appStateName)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    appDisplayName = try container.decode(String.self, forKey: .appDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appStateName, forKey: .appStateName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
            
            
        }
        
    }
    
    /*
        Model: BagStatus
        Used By: Order
    */

    class BagStatus: Codable {
        
        
        public var status: String?
        
        public var stateType: String?
        
        public var updatedAt: String?
        
        public var bagStateMapper: BagStatusBagStateMapper?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case stateType = "state_type"
            
            case updatedAt = "updated_at"
            
            case bagStateMapper = "bag_state_mapper"
            
        }

        public init(bagStateMapper: BagStatusBagStateMapper?, stateType: String?, status: String?, updatedAt: String?) {
            
            self.status = status
            
            self.stateType = stateType
            
            self.updatedAt = updatedAt
            
            self.bagStateMapper = bagStateMapper
            
        }

        public func duplicate() -> BagStatus {
            let dict = self.dictionary!
            let copy = BagStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateType = try container.decode(String.self, forKey: .stateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStateMapper = try container.decode(BagStatusBagStateMapper.self, forKey: .bagStateMapper)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(stateType, forKey: .stateType)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
            
            
        }
        
    }
    
    /*
        Model: BagStatusBagStateMapper
        Used By: Order
    */

    class BagStatusBagStateMapper: Codable {
        
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var name: String?
        
        public var appDisplayName: String?
        
        public var appStateName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case name = "name"
            
            case appDisplayName = "app_display_name"
            
            case appStateName = "app_state_name"
            
        }

        public init(appDisplayName: String?, appStateName: String?, displayName: String?, isActive: Bool?, name: String?) {
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.name = name
            
            self.appDisplayName = appDisplayName
            
            self.appStateName = appStateName
            
        }

        public func duplicate() -> BagStatusBagStateMapper {
            let dict = self.dictionary!
            let copy = BagStatusBagStateMapper(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    appDisplayName = try container.decode(String.self, forKey: .appDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appStateName = try container.decode(String.self, forKey: .appStateName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
            
            
            
            
            try? container.encodeIfPresent(appStateName, forKey: .appStateName)
            
            
        }
        
    }
    
    /*
        Model: BagPrices
        Used By: Order
    */

    class BagPrices: Codable {
        
        
        public var cashback: Double?
        
        public var refundCredit: Double?
        
        public var couponValue: Double?
        
        public var deliveryCharge: Double?
        
        public var fyndCredits: Double?
        
        public var priceMarked: Double?
        
        public var cashbackApplied: Double?
        
        public var valueOfGood: Double?
        
        public var amountPaidRoundoff: Double?
        
        public var amountPaid: Double?
        
        public var codCharges: Double?
        
        public var priceEffective: Double?
        
        public var refundAmount: Double?
        
        public var discount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case cashback = "cashback"
            
            case refundCredit = "refund_credit"
            
            case couponValue = "coupon_value"
            
            case deliveryCharge = "delivery_charge"
            
            case fyndCredits = "fynd_credits"
            
            case priceMarked = "price_marked"
            
            case cashbackApplied = "cashback_applied"
            
            case valueOfGood = "value_of_good"
            
            case amountPaidRoundoff = "amount_paid_roundoff"
            
            case amountPaid = "amount_paid"
            
            case codCharges = "cod_charges"
            
            case priceEffective = "price_effective"
            
            case refundAmount = "refund_amount"
            
            case discount = "discount"
            
        }

        public init(amountPaid: Double?, amountPaidRoundoff: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, priceEffective: Double?, priceMarked: Double?, refundAmount: Double?, refundCredit: Double?, valueOfGood: Double?) {
            
            self.cashback = cashback
            
            self.refundCredit = refundCredit
            
            self.couponValue = couponValue
            
            self.deliveryCharge = deliveryCharge
            
            self.fyndCredits = fyndCredits
            
            self.priceMarked = priceMarked
            
            self.cashbackApplied = cashbackApplied
            
            self.valueOfGood = valueOfGood
            
            self.amountPaidRoundoff = amountPaidRoundoff
            
            self.amountPaid = amountPaid
            
            self.codCharges = codCharges
            
            self.priceEffective = priceEffective
            
            self.refundAmount = refundAmount
            
            self.discount = discount
            
        }

        public func duplicate() -> BagPrices {
            let dict = self.dictionary!
            let copy = BagPrices(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cashback = try container.decode(Double.self, forKey: .cashback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundCredit = try container.decode(Double.self, forKey: .refundCredit)
                
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
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundAmount = try container.decode(Double.self, forKey: .refundAmount)
                
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
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
        }
        
    }
    
    /*
        Model: ShipmentBreakupValues
        Used By: Order
    */

    class ShipmentBreakupValues: Codable {
        
        
        public var name: String?
        
        public var display: String?
        
        public var value: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case value = "value"
            
        }

        public init(display: String?, name: String?, value: Double?) {
            
            self.name = name
            
            self.display = display
            
            self.value = value
            
        }

        public func duplicate() -> ShipmentBreakupValues {
            let dict = self.dictionary!
            let copy = ShipmentBreakupValues(dictionary: dict)!
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
                    display = try container.decode(String.self, forKey: .display)
                
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: DpDetails
        Used By: Order
    */

    class DpDetails: Codable {
        
        
        public var gstTag: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstTag = "gst_tag"
            
        }

        public init(gstTag: String?) {
            
            self.gstTag = gstTag
            
        }

        public func duplicate() -> DpDetails {
            let dict = self.dictionary!
            let copy = DpDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstTag = try container.decode(String.self, forKey: .gstTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
            
            
        }
        
    }
    
    /*
        Model: ShipmentInvoice
        Used By: Order
    */

    class ShipmentInvoice: Codable {
        
        
        public var paymentType: String?
        
        public var updatedDate: String?
        
        public var invoiceUrl: String?
        
        public var labelUrl: String?
        
        public var paymentMode: String?
        
        public var amountToCollect: Double?
        
        public var rtoAddress: RtoAddress?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentType = "payment_type"
            
            case updatedDate = "updated_date"
            
            case invoiceUrl = "invoice_url"
            
            case labelUrl = "label_url"
            
            case paymentMode = "payment_mode"
            
            case amountToCollect = "amount_to_collect"
            
            case rtoAddress = "rto_address"
            
        }

        public init(amountToCollect: Double?, invoiceUrl: String?, labelUrl: String?, paymentMode: String?, paymentType: String?, rtoAddress: RtoAddress?, updatedDate: String?) {
            
            self.paymentType = paymentType
            
            self.updatedDate = updatedDate
            
            self.invoiceUrl = invoiceUrl
            
            self.labelUrl = labelUrl
            
            self.paymentMode = paymentMode
            
            self.amountToCollect = amountToCollect
            
            self.rtoAddress = rtoAddress
            
        }

        public func duplicate() -> ShipmentInvoice {
            let dict = self.dictionary!
            let copy = ShipmentInvoice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedDate = try container.decode(String.self, forKey: .updatedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    labelUrl = try container.decode(String.self, forKey: .labelUrl)
                
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
                
            
            
                do {
                    amountToCollect = try container.decode(Double.self, forKey: .amountToCollect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rtoAddress = try container.decode(RtoAddress.self, forKey: .rtoAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(amountToCollect, forKey: .amountToCollect)
            
            
            
            
            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
            
            
        }
        
    }
    
    /*
        Model: RtoAddress
        Used By: Order
    */

    class RtoAddress: Codable {
        
        
        public var name: String?
        
        public var id: Int?
        
        public var phone: String?
        
        public var locationType: String?
        
        public var storeAddressJson: StoreAddressJson?
        
        public var code: String?
        
        public var address1: String?
        
        public var city: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var companyId: Int?
        
        public var contactPerson: String?
        
        public var state: String?
        
        public var storeEmail: String?
        
        public var address2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
            case phone = "phone"
            
            case locationType = "location_type"
            
            case storeAddressJson = "store_address_json"
            
            case code = "code"
            
            case address1 = "address1"
            
            case city = "city"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case companyId = "company_id"
            
            case contactPerson = "contact_person"
            
            case state = "state"
            
            case storeEmail = "store_email"
            
            case address2 = "address2"
            
        }

        public init(address1: String?, address2: String?, city: String?, code: String?, companyId: Int?, contactPerson: String?, country: String?, id: Int?, locationType: String?, name: String?, phone: String?, pincode: String?, state: String?, storeAddressJson: StoreAddressJson?, storeEmail: String?) {
            
            self.name = name
            
            self.id = id
            
            self.phone = phone
            
            self.locationType = locationType
            
            self.storeAddressJson = storeAddressJson
            
            self.code = code
            
            self.address1 = address1
            
            self.city = city
            
            self.country = country
            
            self.pincode = pincode
            
            self.companyId = companyId
            
            self.contactPerson = contactPerson
            
            self.state = state
            
            self.storeEmail = storeEmail
            
            self.address2 = address2
            
        }

        public func duplicate() -> RtoAddress {
            let dict = self.dictionary!
            let copy = RtoAddress(dictionary: dict)!
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
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    locationType = try container.decode(String.self, forKey: .locationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeAddressJson = try container.decode(StoreAddressJson.self, forKey: .storeAddressJson)
                
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
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
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
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
        }
        
    }
    
    /*
        Model: StoreAddressJson
        Used By: Order
    */

    class StoreAddressJson: Codable {
        
        
        public var country: String?
        
        public var updatedAt: String?
        
        public var area: String?
        
        public var state: String?
        
        public var addressType: String?
        
        public var city: String?
        
        public var pincode: String?
        
        public var address1: String?
        
        public var address2: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var email: String?
        
        public var phone: String?
        
        public var createdAt: String?
        
        public var contactPerson: String?
        
        public var addressCategory: String?
        
        public var version: String?
        
        public var landmark: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case updatedAt = "updated_at"
            
            case area = "area"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case email = "email"
            
            case phone = "phone"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case addressCategory = "address_category"
            
            case version = "version"
            
            case landmark = "landmark"
            
        }

        public init(address1: String?, address2: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, contactPerson: String?, country: String?, createdAt: String?, email: String?, landmark: String?, latitude: Double?, longitude: Double?, phone: String?, pincode: String?, state: String?, updatedAt: String?, version: String?) {
            
            self.country = country
            
            self.updatedAt = updatedAt
            
            self.area = area
            
            self.state = state
            
            self.addressType = addressType
            
            self.city = city
            
            self.pincode = pincode
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.email = email
            
            self.phone = phone
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.addressCategory = addressCategory
            
            self.version = version
            
            self.landmark = landmark
            
        }

        public func duplicate() -> StoreAddressJson {
            let dict = self.dictionary!
            let copy = StoreAddressJson(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
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
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
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
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
        }
        
    }
    
    /*
        Model: PlatformFulfillingStore
        Used By: Order
    */

    class PlatformFulfillingStore: Codable {
        
        
        public var packagingMaterialCount: Int?
        
        public var locationType: String?
        
        public var code: String?
        
        public var city: String?
        
        public var meta: FulfillingStoreMeta?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var address1: String?
        
        public var storeEmail: String?
        
        public var isArchived: Bool?
        
        public var state: String?
        
        public var address2: String?
        
        public var contactPerson: String?
        
        public var phone: String?
        
        public var isEnabledForRecon: Bool?
        
        public var fulfillmentChannel: String?
        
        public var createdAt: String?
        
        public var id: Int?
        
        public var pincode: String?
        
        public var brandStoreTags: [String]?
        
        public var companyId: Int?
        
        public var storeAddressJson: FulfillingStoreStoreAddressJson?
        
        public var updatedAt: String?
        
        public var loginUsername: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case packagingMaterialCount = "packaging_material_count"
            
            case locationType = "location_type"
            
            case code = "code"
            
            case city = "city"
            
            case meta = "meta"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case address1 = "address1"
            
            case storeEmail = "store_email"
            
            case isArchived = "is_archived"
            
            case state = "state"
            
            case address2 = "address2"
            
            case contactPerson = "contact_person"
            
            case phone = "phone"
            
            case isEnabledForRecon = "is_enabled_for_recon"
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case createdAt = "created_at"
            
            case id = "id"
            
            case pincode = "pincode"
            
            case brandStoreTags = "brand_store_tags"
            
            case companyId = "company_id"
            
            case storeAddressJson = "store_address_json"
            
            case updatedAt = "updated_at"
            
            case loginUsername = "login_username"
            
            case country = "country"
            
        }

        public init(address1: String?, address2: String?, brandStoreTags: [String]?, city: String?, code: String?, companyId: Int?, contactPerson: String?, country: String?, createdAt: String?, fulfillmentChannel: String?, id: Int?, isActive: Bool?, isArchived: Bool?, isEnabledForRecon: Bool?, locationType: String?, loginUsername: String?, meta: FulfillingStoreMeta?, name: String?, packagingMaterialCount: Int?, phone: String?, pincode: String?, state: String?, storeAddressJson: FulfillingStoreStoreAddressJson?, storeEmail: String?, updatedAt: String?) {
            
            self.packagingMaterialCount = packagingMaterialCount
            
            self.locationType = locationType
            
            self.code = code
            
            self.city = city
            
            self.meta = meta
            
            self.name = name
            
            self.isActive = isActive
            
            self.address1 = address1
            
            self.storeEmail = storeEmail
            
            self.isArchived = isArchived
            
            self.state = state
            
            self.address2 = address2
            
            self.contactPerson = contactPerson
            
            self.phone = phone
            
            self.isEnabledForRecon = isEnabledForRecon
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.createdAt = createdAt
            
            self.id = id
            
            self.pincode = pincode
            
            self.brandStoreTags = brandStoreTags
            
            self.companyId = companyId
            
            self.storeAddressJson = storeAddressJson
            
            self.updatedAt = updatedAt
            
            self.loginUsername = loginUsername
            
            self.country = country
            
        }

        public func duplicate() -> PlatformFulfillingStore {
            let dict = self.dictionary!
            let copy = PlatformFulfillingStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packagingMaterialCount = try container.decode(Int.self, forKey: .packagingMaterialCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locationType = try container.decode(String.self, forKey: .locationType)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(FulfillingStoreMeta.self, forKey: .meta)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
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
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
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
                    isEnabledForRecon = try container.decode(Bool.self, forKey: .isEnabledForRecon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandStoreTags = try container.decode([String].self, forKey: .brandStoreTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeAddressJson = try container.decode(FulfillingStoreStoreAddressJson.self, forKey: .storeAddressJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loginUsername = try container.decode(String.self, forKey: .loginUsername)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packagingMaterialCount, forKey: .packagingMaterialCount)
            
            
            
            
            try? container.encodeIfPresent(locationType, forKey: .locationType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(isEnabledForRecon, forKey: .isEnabledForRecon)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(loginUsername, forKey: .loginUsername)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
    
    /*
        Model: FulfillingStoreMeta
        Used By: Order
    */

    class FulfillingStoreMeta: Codable {
        
        
        public var additionalContactDetails: AdditionalContactDetails?
        
        public var documents: Documents?
        
        public var gstNumber: String?
        
        public var displayName: String?
        
        public var productReturnConfig: ProductReturnConfig?
        
        public var allowDpAssignmentFromFynd: Bool?
        
        public var stage: String?
        
        public var timing: Timing?
        

        public enum CodingKeys: String, CodingKey {
            
            case additionalContactDetails = "additional_contact_details"
            
            case documents = "documents"
            
            case gstNumber = "gst_number"
            
            case displayName = "display_name"
            
            case productReturnConfig = "product_return_config"
            
            case allowDpAssignmentFromFynd = "allow_dp_assignment_from_fynd"
            
            case stage = "stage"
            
            case timing = "timing"
            
        }

        public init(additionalContactDetails: AdditionalContactDetails?, allowDpAssignmentFromFynd: Bool?, displayName: String?, documents: Documents?, gstNumber: String?, productReturnConfig: ProductReturnConfig?, stage: String?, timing: Timing?) {
            
            self.additionalContactDetails = additionalContactDetails
            
            self.documents = documents
            
            self.gstNumber = gstNumber
            
            self.displayName = displayName
            
            self.productReturnConfig = productReturnConfig
            
            self.allowDpAssignmentFromFynd = allowDpAssignmentFromFynd
            
            self.stage = stage
            
            self.timing = timing
            
        }

        public func duplicate() -> FulfillingStoreMeta {
            let dict = self.dictionary!
            let copy = FulfillingStoreMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    additionalContactDetails = try container.decode(AdditionalContactDetails.self, forKey: .additionalContactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode(Documents.self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstNumber = try container.decode(String.self, forKey: .gstNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfig.self, forKey: .productReturnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowDpAssignmentFromFynd = try container.decode(Bool.self, forKey: .allowDpAssignmentFromFynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode(Timing.self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(allowDpAssignmentFromFynd, forKey: .allowDpAssignmentFromFynd)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
        }
        
    }
    
    /*
        Model: AdditionalContactDetails
        Used By: Order
    */

    class AdditionalContactDetails: Codable {
        
        
        public var number: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case number = "number"
            
        }

        public init(number: [String]?) {
            
            self.number = number
            
        }

        public func duplicate() -> AdditionalContactDetails {
            let dict = self.dictionary!
            let copy = AdditionalContactDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    number = try container.decode([String].self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
        }
        
    }
    
    /*
        Model: Documents
        Used By: Order
    */

    class Documents: Codable {
        
        
        public var gst: Gst?
        

        public enum CodingKeys: String, CodingKey {
            
            case gst = "gst"
            
        }

        public init(gst: Gst?) {
            
            self.gst = gst
            
        }

        public func duplicate() -> Documents {
            let dict = self.dictionary!
            let copy = Documents(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gst = try container.decode(Gst.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
    
    /*
        Model: Gst
        Used By: Order
    */

    class Gst: Codable {
        
        
        public var legalName: String?
        
        public var type: String?
        
        public var value: String?
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case legalName = "legal_name"
            
            case type = "type"
            
            case value = "value"
            
            case verified = "verified"
            
        }

        public init(legalName: String?, type: String?, value: String?, verified: Bool?) {
            
            self.legalName = legalName
            
            self.type = type
            
            self.value = value
            
            self.verified = verified
            
        }

        public func duplicate() -> Gst {
            let dict = self.dictionary!
            let copy = Gst(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    legalName = try container.decode(String.self, forKey: .legalName)
                
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
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
    
    /*
        Model: ProductReturnConfig
        Used By: Order
    */

    class ProductReturnConfig: Codable {
        
        
        public var onSameStore: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case onSameStore = "on_same_store"
            
        }

        public init(onSameStore: Bool?) {
            
            self.onSameStore = onSameStore
            
        }

        public func duplicate() -> ProductReturnConfig {
            let dict = self.dictionary!
            let copy = ProductReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    onSameStore = try container.decode(Bool.self, forKey: .onSameStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
            
        }
        
    }
    
    /*
        Model: Timing
        Used By: Order
    */

    class Timing: Codable {
        
        
        public var opening: Opening?
        
        public var weekday: String?
        
        public var open: Bool?
        
        public var closing: Closing?
        

        public enum CodingKeys: String, CodingKey {
            
            case opening = "opening"
            
            case weekday = "weekday"
            
            case open = "open"
            
            case closing = "closing"
            
        }

        public init(closing: Closing?, open: Bool?, opening: Opening?, weekday: String?) {
            
            self.opening = opening
            
            self.weekday = weekday
            
            self.open = open
            
            self.closing = closing
            
        }

        public func duplicate() -> Timing {
            let dict = self.dictionary!
            let copy = Timing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    opening = try container.decode(Opening.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weekday = try container.decode(String.self, forKey: .weekday)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    open = try container.decode(Bool.self, forKey: .open)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    closing = try container.decode(Closing.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            
            
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            
            
            
            try? container.encodeIfPresent(open, forKey: .open)
            
            
            
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            
        }
        
    }
    
    /*
        Model: Opening
        Used By: Order
    */

    class Opening: Codable {
        
        
        public var minute: Int?
        
        public var hour: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case minute = "minute"
            
            case hour = "hour"
            
        }

        public init(hour: Int?, minute: Int?) {
            
            self.minute = minute
            
            self.hour = hour
            
        }

        public func duplicate() -> Opening {
            let dict = self.dictionary!
            let copy = Opening(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    minute = try container.decode(Int.self, forKey: .minute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hour = try container.decode(Int.self, forKey: .hour)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(minute, forKey: .minute)
            
            
            
            
            try? container.encodeIfPresent(hour, forKey: .hour)
            
            
        }
        
    }
    
    /*
        Model: Closing
        Used By: Order
    */

    class Closing: Codable {
        
        
        public var hour: Int?
        
        public var minute: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case hour = "hour"
            
            case minute = "minute"
            
        }

        public init(hour: Int?, minute: Int?) {
            
            self.hour = hour
            
            self.minute = minute
            
        }

        public func duplicate() -> Closing {
            let dict = self.dictionary!
            let copy = Closing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    hour = try container.decode(Int.self, forKey: .hour)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minute = try container.decode(Int.self, forKey: .minute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hour, forKey: .hour)
            
            
            
            
            try? container.encodeIfPresent(minute, forKey: .minute)
            
            
        }
        
    }
    
    /*
        Model: FulfillingStoreStoreAddressJson
        Used By: Order
    */

    class FulfillingStoreStoreAddressJson: Codable {
        
        
        public var address2: String?
        
        public var area: String?
        
        public var email: String?
        
        public var phone: String?
        
        public var state: String?
        
        public var contactPerson: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var version: String?
        
        public var createdAt: String?
        
        public var addressType: String?
        
        public var city: String?
        
        public var address1: String?
        
        public var landmark: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var updatedAt: String?
        
        public var addressCategory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case area = "area"
            
            case email = "email"
            
            case phone = "phone"
            
            case state = "state"
            
            case contactPerson = "contact_person"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case version = "version"
            
            case createdAt = "created_at"
            
            case addressType = "address_type"
            
            case city = "city"
            
            case address1 = "address1"
            
            case landmark = "landmark"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case updatedAt = "updated_at"
            
            case addressCategory = "address_category"
            
        }

        public init(address1: String?, address2: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, contactPerson: String?, country: String?, createdAt: String?, email: String?, landmark: String?, latitude: Double?, longitude: Double?, phone: String?, pincode: String?, state: String?, updatedAt: String?, version: String?) {
            
            self.address2 = address2
            
            self.area = area
            
            self.email = email
            
            self.phone = phone
            
            self.state = state
            
            self.contactPerson = contactPerson
            
            self.country = country
            
            self.pincode = pincode
            
            self.version = version
            
            self.createdAt = createdAt
            
            self.addressType = addressType
            
            self.city = city
            
            self.address1 = address1
            
            self.landmark = landmark
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.updatedAt = updatedAt
            
            self.addressCategory = addressCategory
            
        }

        public func duplicate() -> FulfillingStoreStoreAddressJson {
            let dict = self.dictionary!
            let copy = FulfillingStoreStoreAddressJson(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
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
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
        }
        
    }
    
    /*
        Model: ShipmentGst
        Used By: Order
    */

    class ShipmentGst: Codable {
        
        
        public var brandCalculatedAmount: Double?
        
        public var valueOfGood: Double?
        
        public var gstFee: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandCalculatedAmount = "brand_calculated_amount"
            
            case valueOfGood = "value_of_good"
            
            case gstFee = "gst_fee"
            
        }

        public init(brandCalculatedAmount: Double?, gstFee: Double?, valueOfGood: Double?) {
            
            self.brandCalculatedAmount = brandCalculatedAmount
            
            self.valueOfGood = valueOfGood
            
            self.gstFee = gstFee
            
        }

        public func duplicate() -> ShipmentGst {
            let dict = self.dictionary!
            let copy = ShipmentGst(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstFee = try container.decode(Double.self, forKey: .gstFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)
            
            
            
            
            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
            
            
            
            
            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipmentDetailsBrand
        Used By: Order
    */

    class PlatformShipmentDetailsBrand: Codable {
        
        
        public var creditNoteAllowed: Bool?
        
        public var brandName: String?
        
        public var modifiedOn: String?
        
        public var id: Int?
        
        public var isVirtualInvoice: Bool?
        
        public var createdOn: String?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case creditNoteAllowed = "credit_note_allowed"
            
            case brandName = "brand_name"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
            case isVirtualInvoice = "is_virtual_invoice"
            
            case createdOn = "created_on"
            
            case logo = "logo"
            
        }

        public init(brandName: String?, createdOn: String?, creditNoteAllowed: Bool?, id: Int?, isVirtualInvoice: Bool?, logo: String?, modifiedOn: String?) {
            
            self.creditNoteAllowed = creditNoteAllowed
            
            self.brandName = brandName
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
            self.isVirtualInvoice = isVirtualInvoice
            
            self.createdOn = createdOn
            
            self.logo = logo
            
        }

        public func duplicate() -> PlatformShipmentDetailsBrand {
            let dict = self.dictionary!
            let copy = PlatformShipmentDetailsBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)
                
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isVirtualInvoice, forKey: .isVirtualInvoice)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
    
    /*
        Model: Promise
        Used By: Order
    */

    class Promise: Codable {
        
        
        public var timestamp: Timestamp?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
        }

        public init(timestamp: Timestamp?) {
            
            self.timestamp = timestamp
            
        }

        public func duplicate() -> Promise {
            let dict = self.dictionary!
            let copy = Promise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    timestamp = try container.decode(Timestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
        }
        
    }
    
    /*
        Model: Timestamp
        Used By: Order
    */

    class Timestamp: Codable {
        
        
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

        public func duplicate() -> Timestamp {
            let dict = self.dictionary!
            let copy = Timestamp(dictionary: dict)!
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
        Model: ShipmentTrackingDetails
        Used By: Order
    */

    class ShipmentTrackingDetails: Codable {
        
        
        public var status: String?
        
        public var time: String?
        
        public var isPassed: Bool?
        
        public var isCurrent: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case time = "time"
            
            case isPassed = "is_passed"
            
            case isCurrent = "is_current"
            
        }

        public init(isCurrent: Bool?, isPassed: Bool?, status: String?, time: String?) {
            
            self.status = status
            
            self.time = time
            
            self.isPassed = isPassed
            
            self.isCurrent = isCurrent
            
        }

        public func duplicate() -> ShipmentTrackingDetails {
            let dict = self.dictionary!
            let copy = ShipmentTrackingDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(String.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPassed = try container.decode(Bool.self, forKey: .isPassed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
            
            
            
            
            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
            
            
        }
        
    }
    
    /*
        Model: ItemsPayments
        Used By: Order
    */

    class ItemsPayments: Codable {
        
        
        public var displayPriority: Int?
        
        public var id: Int?
        
        public var isActive: Bool?
        
        public var displayName: String?
        
        public var logo: String?
        
        public var paymentIdentifier: String?
        
        public var sourceNickname: String?
        
        public var mode: String?
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayPriority = "display_priority"
            
            case id = "id"
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case logo = "logo"
            
            case paymentIdentifier = "payment_identifier"
            
            case sourceNickname = "source_nickname"
            
            case mode = "mode"
            
            case source = "source"
            
        }

        public init(displayName: String?, displayPriority: Int?, id: Int?, isActive: Bool?, logo: String?, mode: String?, paymentIdentifier: String?, source: String?, sourceNickname: String?) {
            
            self.displayPriority = displayPriority
            
            self.id = id
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.logo = logo
            
            self.paymentIdentifier = paymentIdentifier
            
            self.sourceNickname = sourceNickname
            
            self.mode = mode
            
            self.source = source
            
        }

        public func duplicate() -> ItemsPayments {
            let dict = self.dictionary!
            let copy = ItemsPayments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                    sourceNickname = try container.decode(String.self, forKey: .sourceNickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
    
    /*
        Model: PlatformOrderDetailsPage
        Used By: Order
    */

    class PlatformOrderDetailsPage: Codable {
        
        
        public var next: String?
        
        public var previous: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case next = "next"
            
            case previous = "previous"
            
        }

        public init(next: String?, previous: String?) {
            
            self.next = next
            
            self.previous = previous
            
        }

        public func duplicate() -> PlatformOrderDetailsPage {
            let dict = self.dictionary!
            let copy = PlatformOrderDetailsPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    next = try container.decode(String.self, forKey: .next)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previous = try container.decode(String.self, forKey: .previous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(next, forKey: .next)
            
            
            
            
            try? container.encodeIfPresent(previous, forKey: .previous)
            
            
        }
        
    }
    
    /*
        Model: ShipmentDates
        Used By: Order
    */

    class ShipmentDates: Codable {
        
        
        public var dueDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dueDate = "due_date"
            
        }

        public init(dueDate: String?) {
            
            self.dueDate = dueDate
            
        }

        public func duplicate() -> ShipmentDates {
            let dict = self.dictionary!
            let copy = ShipmentDates(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dueDate = try container.decode(String.self, forKey: .dueDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dueDate, forKey: .dueDate)
            
            
        }
        
    }
    
    /*
        Model: OrderLanesCount
        Used By: Order
    */

    class OrderLanesCount: Codable {
        
        
        public var stages: [StageItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case stages = "stages"
            
        }

        public init(stages: [StageItem]) {
            
            self.stages = stages
            
        }

        public func duplicate() -> OrderLanesCount {
            let dict = self.dictionary!
            let copy = OrderLanesCount(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                stages = try container.decode([StageItem].self, forKey: .stages)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stages, forKey: .stages)
            
            
        }
        
    }
    
    /*
        Model: StageItem
        Used By: Order
    */

    class StageItem: Codable {
        
        
        public var count: Int?
        
        public var text: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(count: Int?, text: String?, value: String?) {
            
            self.count = count
            
            self.text = text
            
            self.value = value
            
        }

        public func duplicate() -> StageItem {
            let dict = self.dictionary!
            let copy = StageItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: UpdateOrderReprocessResponse
        Used By: Order
    */

    class UpdateOrderReprocessResponse: Codable {
        
        
        public var status: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: String) {
            
            self.status = status
            
        }

        public func duplicate() -> UpdateOrderReprocessResponse {
            let dict = self.dictionary!
            let copy = UpdateOrderReprocessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
    
    /*
        Model: PlatformOrderTrack
        Used By: Order
    */

    class PlatformOrderTrack: Codable {
        
        
        public var success: Bool
        
        public var requestId: String
        
        public var message: String
        
        public var mobile: String
        
        public var countryCode: String
        
        public var resendTimer: Int
        
        public var resendToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case requestId = "request_id"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case countryCode = "country_code"
            
            case resendTimer = "resend_timer"
            
            case resendToken = "resend_token"
            
        }

        public init(countryCode: String, message: String, mobile: String, requestId: String, resendTimer: Int, resendToken: String?, success: Bool) {
            
            self.success = success
            
            self.requestId = requestId
            
            self.message = message
            
            self.mobile = mobile
            
            self.countryCode = countryCode
            
            self.resendTimer = resendTimer
            
            self.resendToken = resendToken
            
        }

        public func duplicate() -> PlatformOrderTrack {
            let dict = self.dictionary!
            let copy = PlatformOrderTrack(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                requestId = try container.decode(String.self, forKey: .requestId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)
                
            
            
            
                do {
                    resendToken = try container.decode(String.self, forKey: .resendToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
            
            
            
            
            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
            
            
        }
        
    }
    
    /*
        Model: OrderPicklistListing
        Used By: Order
    */

    class OrderPicklistListing: Codable {
        
        
        public var user: PlatformOrderUserInfo?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var channel: Channel?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var orderingStore: [String: Any]?
        
        public var breakupValues: PlatformBreakupValues?
        
        public var id: String?
        
        public var application: PlatformApplication?
        
        public var shipments: PlatformShipmentDetails?
        
        public var createdAt: String?
        
        public var totalShipmentsInOrder: Int?
        
        public var payments: ItemsPayments?
        
        public var paymentMethods: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case user = "user"
            
            case deliveryAddress = "delivery_address"
            
            case channel = "channel"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case orderingStore = "ordering_store"
            
            case breakupValues = "breakup_values"
            
            case id = "id"
            
            case application = "application"
            
            case shipments = "shipments"
            
            case createdAt = "created_at"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case payments = "payments"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(application: PlatformApplication?, breakupValues: PlatformBreakupValues?, channel: Channel?, createdAt: String?, deliveryAddress: PlatformDeliveryAddress?, fyndstoreEmp: [String: Any]?, id: String?, orderingStore: [String: Any]?, payments: ItemsPayments?, paymentMethods: [String: Any]?, shipments: PlatformShipmentDetails?, totalShipmentsInOrder: Int?, user: PlatformOrderUserInfo?) {
            
            self.user = user
            
            self.deliveryAddress = deliveryAddress
            
            self.channel = channel
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.orderingStore = orderingStore
            
            self.breakupValues = breakupValues
            
            self.id = id
            
            self.application = application
            
            self.shipments = shipments
            
            self.createdAt = createdAt
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.payments = payments
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> OrderPicklistListing {
            let dict = self.dictionary!
            let copy = OrderPicklistListing(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    user = try container.decode(PlatformOrderUserInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode(Channel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode(PlatformBreakupValues.self, forKey: .breakupValues)
                
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
                    application = try container.decode(PlatformApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode(PlatformShipmentDetails.self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode(ItemsPayments.self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: Stages
        Used By: Order
    */

    class Stages: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var isDefault: Bool?
        
        public var filters: StagesFilters?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case isDefault = "is_default"
            
            case filters = "filters"
            
        }

        public init(filters: StagesFilters?, isDefault: Bool?, text: String?, value: String?) {
            
            self.text = text
            
            self.value = value
            
            self.isDefault = isDefault
            
            self.filters = filters
            
        }

        public func duplicate() -> Stages {
            let dict = self.dictionary!
            let copy = Stages(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(StagesFilters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
    
    /*
        Model: ItemTotal
        Used By: Order
    */

    class ItemTotal: Codable {
        
        
        public var new: Int?
        
        public var processing: Int?
        
        public var returns: Int?
        
        public var all: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case new = "new"
            
            case processing = "processing"
            
            case returns = "returns"
            
            case all = "all"
            
        }

        public init(all: Int?, new: Int?, processing: Int?, returns: Int?) {
            
            self.new = new
            
            self.processing = processing
            
            self.returns = returns
            
            self.all = all
            
        }

        public func duplicate() -> ItemTotal {
            let dict = self.dictionary!
            let copy = ItemTotal(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    new = try container.decode(Int.self, forKey: .new)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processing = try container.decode(Int.self, forKey: .processing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returns = try container.decode(Int.self, forKey: .returns)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    all = try container.decode(Int.self, forKey: .all)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(new, forKey: .new)
            
            
            
            
            try? container.encodeIfPresent(processing, forKey: .processing)
            
            
            
            
            try? container.encodeIfPresent(returns, forKey: .returns)
            
            
            
            
            try? container.encodeIfPresent(all, forKey: .all)
            
            
        }
        
    }
    
    /*
        Model: GetPingResponse
        Used By: Order
    */

    class GetPingResponse: Codable {
        
        
        public var ping: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ping = "ping"
            
        }

        public init(ping: String) {
            
            self.ping = ping
            
        }

        public func duplicate() -> GetPingResponse {
            let dict = self.dictionary!
            let copy = GetPingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ping = try container.decode(String.self, forKey: .ping)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ping, forKey: .ping)
            
            
        }
        
    }
    
    /*
        Model: GetShipmentAddressResponse
        Used By: Order
    */

    class GetShipmentAddressResponse: Codable {
        
        
        public var message: String
        
        public var data: DataShipmentAddress
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: DataShipmentAddress, message: String, success: Bool) {
            
            self.message = message
            
            self.data = data
            
            self.success = success
            
        }

        public func duplicate() -> GetShipmentAddressResponse {
            let dict = self.dictionary!
            let copy = GetShipmentAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                data = try container.decode(DataShipmentAddress.self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: DataShipmentAddress
        Used By: Order
    */

    class DataShipmentAddress: Codable {
        
        
        public var city: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var phone: String?
        
        public var area: String?
        
        public var address: String?
        
        public var landmark: String?
        
        public var state: String?
        
        public var addressType: String?
        
        public var addressCategory: String?
        
        public var email: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case phone = "phone"
            
            case area = "area"
            
            case address = "address"
            
            case landmark = "landmark"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case addressCategory = "address_category"
            
            case email = "email"
            
            case name = "name"
            
        }

        public init(address: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, country: String?, email: String?, landmark: String?, name: String?, phone: String?, pincode: String?, state: String?) {
            
            self.city = city
            
            self.country = country
            
            self.pincode = pincode
            
            self.phone = phone
            
            self.area = area
            
            self.address = address
            
            self.landmark = landmark
            
            self.state = state
            
            self.addressType = addressType
            
            self.addressCategory = addressCategory
            
            self.email = email
            
            self.name = name
            
        }

        public func duplicate() -> DataShipmentAddress {
            let dict = self.dictionary!
            let copy = DataShipmentAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
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
                    pincode = try container.decode(String.self, forKey: .pincode)
                
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
                    area = try container.decode(String.self, forKey: .area)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: UpdateShipmentAddressRequest
        Used By: Order
    */

    class UpdateShipmentAddressRequest: Codable {
        
        
        public var email: String
        
        public var address: String
        
        public var pincode: String
        
        public var state: String
        
        public var addressType: String
        
        public var country: String
        
        public var name: String
        
        public var phone: String
        
        public var area: String
        
        public var landmark: String
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case address = "address"
            
            case pincode = "pincode"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case country = "country"
            
            case name = "name"
            
            case phone = "phone"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case city = "city"
            
        }

        public init(address: String, addressType: String, area: String, city: String, country: String, email: String, landmark: String, name: String, phone: String, pincode: String, state: String) {
            
            self.email = email
            
            self.address = address
            
            self.pincode = pincode
            
            self.state = state
            
            self.addressType = addressType
            
            self.country = country
            
            self.name = name
            
            self.phone = phone
            
            self.area = area
            
            self.landmark = landmark
            
            self.city = city
            
        }

        public func duplicate() -> UpdateShipmentAddressRequest {
            let dict = self.dictionary!
            let copy = UpdateShipmentAddressRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                area = try container.decode(String.self, forKey: .area)
                
            
            
            
                landmark = try container.decode(String.self, forKey: .landmark)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
    
    /*
        Model: UpdateShipmentAddressResponse
        Used By: Order
    */

    class UpdateShipmentAddressResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> UpdateShipmentAddressResponse {
            let dict = self.dictionary!
            let copy = UpdateShipmentAddressResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponse
        Used By: Order
    */

    class ShipmentTrackResponse: Codable {
        
        
        public var bagList: [ShipmentTrackResponseBagListItem]
        
        public var message: String
        
        public var orderValue: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case bagList = "bag_list"
            
            case message = "message"
            
            case orderValue = "order_value"
            
        }

        public init(bagList: [ShipmentTrackResponseBagListItem], message: String, orderValue: Int) {
            
            self.bagList = bagList
            
            self.message = message
            
            self.orderValue = orderValue
            
        }

        public func duplicate() -> ShipmentTrackResponse {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                bagList = try container.decode([ShipmentTrackResponseBagListItem].self, forKey: .bagList)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                orderValue = try container.decode(Int.self, forKey: .orderValue)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bagList, forKey: .bagList)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItem
        Used By: Order
    */

    class ShipmentTrackResponseBagListItem: Codable {
        
        
        public var enableTracking: Bool?
        
        public var price: String?
        
        public var timeSlot: String?
        
        public var productName: String?
        
        public var canReturn: Bool?
        
        public var orderDate: String?
        
        public var isTryAtHome: Bool?
        
        public var breakupValues: [ShipmentTrackResponseBagListItemBreakValues]?
        
        public var statuses: [ShipmentTrackResponseBagListItemStatuses]?
        
        public var isActive: Bool?
        
        public var bagId: String?
        
        public var orderId: String?
        
        public var size: String?
        
        public var paymentModeSource: String?
        
        public var dpDetails: ShipmentTrackResponseBagListItemDpDetails?
        
        public var productId: Int?
        
        public var productImage: ShipmentTrackResponseBagListItemsProductImage?
        
        public var brandName: String?
        
        public var priceMarked: String?
        
        public var status: String?
        
        public var canCancel: Bool?
        
        public var paymentMode: String?
        
        public var fyndCashMsg: String?
        
        public var deliveryAddress: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case enableTracking = "enable_tracking"
            
            case price = "price"
            
            case timeSlot = "time_slot"
            
            case productName = "product_name"
            
            case canReturn = "can_return"
            
            case orderDate = "order_date"
            
            case isTryAtHome = "is_try_at_home"
            
            case breakupValues = "breakup_values"
            
            case statuses = "statuses"
            
            case isActive = "is_active"
            
            case bagId = "bag_id"
            
            case orderId = "order_id"
            
            case size = "size"
            
            case paymentModeSource = "payment_mode_source"
            
            case dpDetails = "dp_details"
            
            case productId = "product_id"
            
            case productImage = "product_image"
            
            case brandName = "brand_name"
            
            case priceMarked = "price_marked"
            
            case status = "status"
            
            case canCancel = "can_cancel"
            
            case paymentMode = "payment_mode"
            
            case fyndCashMsg = "fynd_cash_msg"
            
            case deliveryAddress = "delivery_address"
            
        }

        public init(bagId: String?, brandName: String?, breakupValues: [ShipmentTrackResponseBagListItemBreakValues]?, canCancel: Bool?, canReturn: Bool?, deliveryAddress: String?, dpDetails: ShipmentTrackResponseBagListItemDpDetails?, enableTracking: Bool?, fyndCashMsg: String?, isActive: Bool?, isTryAtHome: Bool?, orderDate: String?, orderId: String?, paymentMode: String?, paymentModeSource: String?, price: String?, priceMarked: String?, productId: Int?, productImage: ShipmentTrackResponseBagListItemsProductImage?, productName: String?, size: String?, status: String?, statuses: [ShipmentTrackResponseBagListItemStatuses]?, timeSlot: String?) {
            
            self.enableTracking = enableTracking
            
            self.price = price
            
            self.timeSlot = timeSlot
            
            self.productName = productName
            
            self.canReturn = canReturn
            
            self.orderDate = orderDate
            
            self.isTryAtHome = isTryAtHome
            
            self.breakupValues = breakupValues
            
            self.statuses = statuses
            
            self.isActive = isActive
            
            self.bagId = bagId
            
            self.orderId = orderId
            
            self.size = size
            
            self.paymentModeSource = paymentModeSource
            
            self.dpDetails = dpDetails
            
            self.productId = productId
            
            self.productImage = productImage
            
            self.brandName = brandName
            
            self.priceMarked = priceMarked
            
            self.status = status
            
            self.canCancel = canCancel
            
            self.paymentMode = paymentMode
            
            self.fyndCashMsg = fyndCashMsg
            
            self.deliveryAddress = deliveryAddress
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItem {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(String.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeSlot = try container.decode(String.self, forKey: .timeSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productName = try container.decode(String.self, forKey: .productName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderDate = try container.decode(String.self, forKey: .orderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTryAtHome = try container.decode(Bool.self, forKey: .isTryAtHome)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    breakupValues = try container.decode([ShipmentTrackResponseBagListItemBreakValues].self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statuses = try container.decode([ShipmentTrackResponseBagListItemStatuses].self, forKey: .statuses)
                
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
                    bagId = try container.decode(String.self, forKey: .bagId)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModeSource = try container.decode(String.self, forKey: .paymentModeSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpDetails = try container.decode(ShipmentTrackResponseBagListItemDpDetails.self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productId = try container.decode(Int.self, forKey: .productId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productImage = try container.decode(ShipmentTrackResponseBagListItemsProductImage.self, forKey: .productImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(String.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
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
                
            
            
                do {
                    fyndCashMsg = try container.decode(String.self, forKey: .fyndCashMsg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(String.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(timeSlot, forKey: .timeSlot)
            
            
            
            
            try? container.encodeIfPresent(productName, forKey: .productName)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(isTryAtHome, forKey: .isTryAtHome)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(paymentModeSource, forKey: .paymentModeSource)
            
            
            
            
            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(productImage, forKey: .productImage)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(fyndCashMsg, forKey: .fyndCashMsg)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemBreakValues
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemBreakValues: Codable {
        
        
        public var name: String?
        
        public var display: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case display = "display"
            
            case value = "value"
            
        }

        public init(display: String?, name: String?, value: String?) {
            
            self.name = name
            
            self.display = display
            
            self.value = value
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemBreakValues {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemBreakValues(dictionary: dict)!
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
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemStatuses
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemStatuses: Codable {
        
        
        public var npsRating: Int?
        
        public var npsString: String?
        
        public var progressStatus: [ShipmentTrackResponseBagListItemStatusesProgress]?
        
        public var flowType: String?
        
        public var statusProgress: Int?
        
        public var isNpsDone: Bool?
        
        public var headerMessage: String?
        
        public var isDelayed: String?
        
        public var trackingList: [ShipmentTrackResponseBagListItemStatusesTrack]?
        

        public enum CodingKeys: String, CodingKey {
            
            case npsRating = "nps_rating"
            
            case npsString = "nps_string"
            
            case progressStatus = "progress_status"
            
            case flowType = "flow_type"
            
            case statusProgress = "status_progress"
            
            case isNpsDone = "is_nps_done"
            
            case headerMessage = "header_message"
            
            case isDelayed = "is_delayed"
            
            case trackingList = "tracking_list"
            
        }

        public init(flowType: String?, headerMessage: String?, isDelayed: String?, isNpsDone: Bool?, npsRating: Int?, npsString: String?, progressStatus: [ShipmentTrackResponseBagListItemStatusesProgress]?, statusProgress: Int?, trackingList: [ShipmentTrackResponseBagListItemStatusesTrack]?) {
            
            self.npsRating = npsRating
            
            self.npsString = npsString
            
            self.progressStatus = progressStatus
            
            self.flowType = flowType
            
            self.statusProgress = statusProgress
            
            self.isNpsDone = isNpsDone
            
            self.headerMessage = headerMessage
            
            self.isDelayed = isDelayed
            
            self.trackingList = trackingList
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemStatuses {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemStatuses(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    npsRating = try container.decode(Int.self, forKey: .npsRating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    npsString = try container.decode(String.self, forKey: .npsString)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    progressStatus = try container.decode([ShipmentTrackResponseBagListItemStatusesProgress].self, forKey: .progressStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flowType = try container.decode(String.self, forKey: .flowType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusProgress = try container.decode(Int.self, forKey: .statusProgress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isNpsDone = try container.decode(Bool.self, forKey: .isNpsDone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headerMessage = try container.decode(String.self, forKey: .headerMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDelayed = try container.decode(String.self, forKey: .isDelayed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingList = try container.decode([ShipmentTrackResponseBagListItemStatusesTrack].self, forKey: .trackingList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(npsRating, forKey: .npsRating)
            
            
            
            
            try? container.encodeIfPresent(npsString, forKey: .npsString)
            
            
            
            
            try? container.encodeIfPresent(progressStatus, forKey: .progressStatus)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)
            
            
            
            
            try? container.encodeIfPresent(isNpsDone, forKey: .isNpsDone)
            
            
            
            
            try? container.encodeIfPresent(headerMessage, forKey: .headerMessage)
            
            
            
            
            try? container.encodeIfPresent(isDelayed, forKey: .isDelayed)
            
            
            
            
            try? container.encodeIfPresent(trackingList, forKey: .trackingList)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemStatusesProgress
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemStatusesProgress: Codable {
        
        
        public var title: String?
        
        public var type: String?
        
        public var state: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case type = "type"
            
            case state = "state"
            
        }

        public init(state: Bool?, title: String?, type: String?) {
            
            self.title = title
            
            self.type = type
            
            self.state = state
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemStatusesProgress {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemStatusesProgress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
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
                    state = try container.decode(Bool.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemStatusesTrack
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemStatusesTrack: Codable {
        
        
        public var status: String?
        
        public var time: String?
        
        public var isPassed: Bool?
        
        public var isCurrent: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case time = "time"
            
            case isPassed = "is_passed"
            
            case isCurrent = "is_current"
            
        }

        public init(isCurrent: Bool?, isPassed: Bool?, status: String?, time: String?) {
            
            self.status = status
            
            self.time = time
            
            self.isPassed = isPassed
            
            self.isCurrent = isCurrent
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemStatusesTrack {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemStatusesTrack(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    time = try container.decode(String.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPassed = try container.decode(Bool.self, forKey: .isPassed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCurrent = try container.decode(Bool.self, forKey: .isCurrent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(time, forKey: .time)
            
            
            
            
            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
            
            
            
            
            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemDpDetails
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemDpDetails: Codable {
        
        
        public var trackingNo: String?
        
        public var courier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case trackingNo = "tracking_no"
            
            case courier = "courier"
            
        }

        public init(courier: String?, trackingNo: String?) {
            
            self.trackingNo = trackingNo
            
            self.courier = courier
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemDpDetails {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemDpDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    trackingNo = try container.decode(String.self, forKey: .trackingNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courier = try container.decode(String.self, forKey: .courier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(trackingNo, forKey: .trackingNo)
            
            
            
            
            try? container.encodeIfPresent(courier, forKey: .courier)
            
            
        }
        
    }
    
    /*
        Model: ShipmentTrackResponseBagListItemsProductImage
        Used By: Order
    */

    class ShipmentTrackResponseBagListItemsProductImage: Codable {
        
        
        public var aspectRatio: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case url = "url"
            
        }

        public init(aspectRatio: String?, url: String?) {
            
            self.aspectRatio = aspectRatio
            
            self.url = url
            
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemsProductImage {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemsProductImage(dictionary: dict)!
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: UpdateShipmentStatusResponse
        Used By: Order
    */

    class UpdateShipmentStatusResponse: Codable {
        
        
        public var shipments: [String: Any]
        
        public var errorShipments: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case errorShipments = "error_shipments"
            
        }

        public init(errorShipments: [[String: Any]]?, shipments: [String: Any]) {
            
            self.shipments = shipments
            
            self.errorShipments = errorShipments
            
        }

        public func duplicate() -> UpdateShipmentStatusResponse {
            let dict = self.dictionary!
            let copy = UpdateShipmentStatusResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([String: Any].self, forKey: .shipments)
                
            
            
            
                do {
                    errorShipments = try container.decode([[String: Any]].self, forKey: .errorShipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(errorShipments, forKey: .errorShipments)
            
            
        }
        
    }
    
    /*
        Model: UpdateShipmentStatusBody
        Used By: Order
    */

    class UpdateShipmentStatusBody: Codable {
        
        
        public var shipments: [String: Any]
        
        public var forceTransition: Bool
        
        public var task: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case forceTransition = "force_transition"
            
            case task = "task"
            
        }

        public init(forceTransition: Bool, shipments: [String: Any], task: Bool) {
            
            self.shipments = shipments
            
            self.forceTransition = forceTransition
            
            self.task = task
            
        }

        public func duplicate() -> UpdateShipmentStatusBody {
            let dict = self.dictionary!
            let copy = UpdateShipmentStatusBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
        Model: ShipmentReasonsResponse
        Used By: Order
    */

    class ShipmentReasonsResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var reasons: [ShipmentResponseReasons]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case reasons = "reasons"
            
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.reasons = reasons
            
        }

        public func duplicate() -> ShipmentReasonsResponse {
            let dict = self.dictionary!
            let copy = ShipmentReasonsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
        }
        
    }
    
    /*
        Model: ShipmentResponseReasons
        Used By: Order
    */

    class ShipmentResponseReasons: Codable {
        
        
        public var reasonId: Double?
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasonId = "reason_id"
            
            case reason = "reason"
            
        }

        public init(reason: String?, reasonId: Double?) {
            
            self.reasonId = reasonId
            
            self.reason = reason
            
        }

        public func duplicate() -> ShipmentResponseReasons {
            let dict = self.dictionary!
            let copy = ShipmentResponseReasons(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reasonId = try container.decode(Double.self, forKey: .reasonId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
    
    /*
        Model: PlatformShipmentTrack
        Used By: Order
    */

    class PlatformShipmentTrack: Codable {
        
        
        public var results: Results
        

        public enum CodingKeys: String, CodingKey {
            
            case results = "results"
            
        }

        public init(results: Results) {
            
            self.results = results
            
        }

        public func duplicate() -> PlatformShipmentTrack {
            let dict = self.dictionary!
            let copy = PlatformShipmentTrack(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                results = try container.decode(Results.self, forKey: .results)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(results, forKey: .results)
            
            
        }
        
    }
    
    /*
        Model: Results
        Used By: Order
    */

    class Results: Codable {
        
        
        public var awb: String?
        
        public var updatedAt: String?
        
        public var lastLocationRecievedAt: String?
        
        public var reason: String?
        
        public var shipmentType: String?
        
        public var status: String?
        
        public var updatedTime: String?
        
        public var accountName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case awb = "awb"
            
            case updatedAt = "updated_at"
            
            case lastLocationRecievedAt = "last_location_recieved_at"
            
            case reason = "reason"
            
            case shipmentType = "shipment_type"
            
            case status = "status"
            
            case updatedTime = "updated_time"
            
            case accountName = "account_name"
            
        }

        public init(accountName: String?, awb: String?, lastLocationRecievedAt: String?, reason: String?, shipmentType: String?, status: String?, updatedAt: String?, updatedTime: String?) {
            
            self.awb = awb
            
            self.updatedAt = updatedAt
            
            self.lastLocationRecievedAt = lastLocationRecievedAt
            
            self.reason = reason
            
            self.shipmentType = shipmentType
            
            self.status = status
            
            self.updatedTime = updatedTime
            
            self.accountName = accountName
            
        }

        public func duplicate() -> Results {
            let dict = self.dictionary!
            let copy = Results(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    awb = try container.decode(String.self, forKey: .awb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastLocationRecievedAt = try container.decode(String.self, forKey: .lastLocationRecievedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedTime = try container.decode(String.self, forKey: .updatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountName = try container.decode(String.self, forKey: .accountName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(awb, forKey: .awb)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(lastLocationRecievedAt, forKey: .lastLocationRecievedAt)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(updatedTime, forKey: .updatedTime)
            
            
            
            
            try? container.encodeIfPresent(accountName, forKey: .accountName)
            
            
        }
        
    }
    
    /*
        Model: ShipmentUpdateRequest
        Used By: Order
    */

    class ShipmentUpdateRequest: Codable {
        
        
        public var bags: [String]
        
        public var reason: [String: Any]
        
        public var comments: String
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case bags = "bags"
            
            case reason = "reason"
            
            case comments = "comments"
            
            case action = "action"
            
        }

        public init(action: String, bags: [String], comments: String, reason: [String: Any]) {
            
            self.bags = bags
            
            self.reason = reason
            
            self.comments = comments
            
            self.action = action
            
        }

        public func duplicate() -> ShipmentUpdateRequest {
            let dict = self.dictionary!
            let copy = ShipmentUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                bags = try container.decode([String].self, forKey: .bags)
                
            
            
            
                reason = try container.decode([String: Any].self, forKey: .reason)
                
            
            
            
                comments = try container.decode(String.self, forKey: .comments)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(comments, forKey: .comments)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
    
    /*
        Model: ShipmentUpdateResponse
        Used By: Order
    */

    class ShipmentUpdateResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> ShipmentUpdateResponse {
            let dict = self.dictionary!
            let copy = ShipmentUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: UpdateProcessShipmenstRequestBody
        Used By: Order
    */

    class UpdateProcessShipmenstRequestBody: Codable {
        
        
        public var shipmentIds: [String]
        
        public var expectedStatus: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIds = "shipment_ids"
            
            case expectedStatus = "expected_status"
            
        }

        public init(expectedStatus: String, shipmentIds: [String]) {
            
            self.shipmentIds = shipmentIds
            
            self.expectedStatus = expectedStatus
            
        }

        public func duplicate() -> UpdateProcessShipmenstRequestBody {
            let dict = self.dictionary!
            let copy = UpdateProcessShipmenstRequestBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
            
            
            
                expectedStatus = try container.decode(String.self, forKey: .expectedStatus)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
            
            
            
            
            try? container.encodeIfPresent(expectedStatus, forKey: .expectedStatus)
            
            
        }
        
    }
    
    /*
        Model: UpdateProcessShipmenstRequestResponse
        Used By: Order
    */

    class UpdateProcessShipmenstRequestResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> UpdateProcessShipmenstRequestResponse {
            let dict = self.dictionary!
            let copy = UpdateProcessShipmenstRequestResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: GetVoiceCallbackResponse
        Used By: Order
    */

    class GetVoiceCallbackResponse: Codable {
        
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String) {
            
            self.message = message
            
        }

        public func duplicate() -> GetVoiceCallbackResponse {
            let dict = self.dictionary!
            let copy = GetVoiceCallbackResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: GetClickToCallResponse
        Used By: Order
    */

    class GetClickToCallResponse: Codable {
        
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String) {
            
            self.message = message
            
        }

        public func duplicate() -> GetClickToCallResponse {
            let dict = self.dictionary!
            let copy = GetClickToCallResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ApefaceApiError
        Used By: Order
    */

    class ApefaceApiError: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> ApefaceApiError {
            let dict = self.dictionary!
            let copy = ApefaceApiError(dictionary: dict)!
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
    
}
