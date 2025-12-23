

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PlatformOrderItems
        Used By: Order
    */

    class PlatformOrderItems: Codable {
        
        
        public var breakupValues: [PlatformBreakupValues]?
        
        public var totalOrderValue: Double?
        
        public var meta: [String: Any]?
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var orderingSource: String?
        
        public var orderingSourceDetails: OrderingSourceDetails?
        
        public var paymentMode: String?
        
        public var shipments: [PlatformShipment]?
        
        public var orderId: String?
        
        public var channel: PlatformChannel?
        
        public var userInfo: UserDataInfo?
        
        public var orderValue: Double?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var prices: Prices?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var loyaltyDiscountDetails: LoyaltyDiscountDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case breakupValues = "breakup_values"
            
            case totalOrderValue = "total_order_value"
            
            case meta = "meta"
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case orderingSource = "ordering_source"
            
            case orderingSourceDetails = "ordering_source_details"
            
            case paymentMode = "payment_mode"
            
            case shipments = "shipments"
            
            case orderId = "order_id"
            
            case channel = "channel"
            
            case userInfo = "user_info"
            
            case orderValue = "order_value"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case prices = "prices"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case loyaltyDiscountDetails = "loyalty_discount_details"
            
        }

        public init(breakupValues: [PlatformBreakupValues]? = nil, channel: PlatformChannel? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, loyaltyDiscountDetails: LoyaltyDiscountDetails? = nil, meta: [String: Any]? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingSource: String? = nil, orderingSourceDetails: OrderingSourceDetails? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderId: String? = nil, orderValue: Double? = nil, paymentMode: String? = nil, prices: Prices? = nil, shipments: [PlatformShipment]? = nil, totalOrderValue: Double? = nil, userInfo: UserDataInfo? = nil) {
            
            self.breakupValues = breakupValues
            
            self.totalOrderValue = totalOrderValue
            
            self.meta = meta
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.orderingSource = orderingSource
            
            self.orderingSourceDetails = orderingSourceDetails
            
            self.paymentMode = paymentMode
            
            self.shipments = shipments
            
            self.orderId = orderId
            
            self.channel = channel
            
            self.userInfo = userInfo
            
            self.orderValue = orderValue
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.prices = prices
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.loyaltyDiscountDetails = loyaltyDiscountDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    breakupValues = try container.decode([PlatformBreakupValues].self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)
                
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
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingSource = try container.decode(String.self, forKey: .orderingSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingSourceDetails = try container.decode(OrderingSourceDetails.self, forKey: .orderingSourceDetails)
                
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
                    shipments = try container.decode([PlatformShipment].self, forKey: .shipments)
                
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
                    channel = try container.decode(PlatformChannel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userInfo = try container.decode(UserDataInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscountDetails = try container.decode(LoyaltyDiscountDetails.self, forKey: .loyaltyDiscountDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(orderingSourceDetails, forKey: .orderingSourceDetails)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscountDetails, forKey: .loyaltyDiscountDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PlatformOrderItems
        Used By: Order
    */

    class PlatformOrderItems: Codable {
        
        
        public var breakupValues: [PlatformBreakupValues]?
        
        public var totalOrderValue: Double?
        
        public var meta: [String: Any]?
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var orderingSource: String?
        
        public var orderingSourceDetails: OrderingSourceDetails?
        
        public var paymentMode: String?
        
        public var shipments: [PlatformShipment]?
        
        public var orderId: String?
        
        public var channel: PlatformChannel?
        
        public var userInfo: UserDataInfo?
        
        public var orderValue: Double?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var prices: Prices?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var loyaltyDiscountDetails: LoyaltyDiscountDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case breakupValues = "breakup_values"
            
            case totalOrderValue = "total_order_value"
            
            case meta = "meta"
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case orderingSource = "ordering_source"
            
            case orderingSourceDetails = "ordering_source_details"
            
            case paymentMode = "payment_mode"
            
            case shipments = "shipments"
            
            case orderId = "order_id"
            
            case channel = "channel"
            
            case userInfo = "user_info"
            
            case orderValue = "order_value"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case prices = "prices"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case loyaltyDiscountDetails = "loyalty_discount_details"
            
        }

        public init(breakupValues: [PlatformBreakupValues]? = nil, channel: PlatformChannel? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, loyaltyDiscountDetails: LoyaltyDiscountDetails? = nil, meta: [String: Any]? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingSource: String? = nil, orderingSourceDetails: OrderingSourceDetails? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderId: String? = nil, orderValue: Double? = nil, paymentMode: String? = nil, prices: Prices? = nil, shipments: [PlatformShipment]? = nil, totalOrderValue: Double? = nil, userInfo: UserDataInfo? = nil) {
            
            self.breakupValues = breakupValues
            
            self.totalOrderValue = totalOrderValue
            
            self.meta = meta
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.orderingSource = orderingSource
            
            self.orderingSourceDetails = orderingSourceDetails
            
            self.paymentMode = paymentMode
            
            self.shipments = shipments
            
            self.orderId = orderId
            
            self.channel = channel
            
            self.userInfo = userInfo
            
            self.orderValue = orderValue
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.prices = prices
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.loyaltyDiscountDetails = loyaltyDiscountDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    breakupValues = try container.decode([PlatformBreakupValues].self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)
                
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
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingSource = try container.decode(String.self, forKey: .orderingSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingSourceDetails = try container.decode(OrderingSourceDetails.self, forKey: .orderingSourceDetails)
                
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
                    shipments = try container.decode([PlatformShipment].self, forKey: .shipments)
                
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
                    channel = try container.decode(PlatformChannel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userInfo = try container.decode(UserDataInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyDiscountDetails = try container.decode(LoyaltyDiscountDetails.self, forKey: .loyaltyDiscountDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(orderingSourceDetails, forKey: .orderingSourceDetails)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscountDetails, forKey: .loyaltyDiscountDetails)
            
            
        }
        
    }
}


