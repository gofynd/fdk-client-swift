

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderDetailsData
        Used By: Order
    */

    class OrderDetailsData: Codable {
        
        
        public var orderDate: String?
        
        public var createdTs: String?
        
        public var taxDetails: [String: Any]?
        
        public var codCharges: String?
        
        public var source: String?
        
        public var fyndOrderId: String
        
        public var affiliateId: String?
        
        public var affiliateOrderId: String?
        
        public var orderingChannelLogo: [String: Any]?
        
        public var orderValue: String?
        
        public var orderingChannel: String?
        
        public var meta: [String: Any]?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [[String: Any]]?
        
        public var createdAt: String?
        
        public var prices: Prices?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var rawUserAgent: String?
        
        public var comment: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var charges: [PriceAdjustmentCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case codCharges = "cod_charges"
            
            case source = "source"
            
            case fyndOrderId = "fynd_order_id"
            
            case affiliateId = "affiliate_id"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case orderValue = "order_value"
            
            case orderingChannel = "ordering_channel"
            
            case meta = "meta"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case createdAt = "created_at"
            
            case prices = "prices"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case rawUserAgent = "raw_user_agent"
            
            case comment = "comment"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case charges = "charges"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, charges: [PriceAdjustmentCharge]? = nil, codCharges: String? = nil, comment: String? = nil, createdAt: String? = nil, createdTs: String? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderDate: String? = nil, orderValue: String? = nil, paymentInfo: [[String: Any]]? = nil, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, rawUserAgent: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.codCharges = codCharges
            
            self.source = source
            
            self.fyndOrderId = fyndOrderId
            
            self.affiliateId = affiliateId
            
            self.affiliateOrderId = affiliateOrderId
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.orderValue = orderValue
            
            self.orderingChannel = orderingChannel
            
            self.meta = meta
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.createdAt = createdAt
            
            self.prices = prices
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.rawUserAgent = rawUserAgent
            
            self.comment = comment
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDate = try container.decode(String.self, forKey: .orderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(String.self, forKey: .codCharges)
                
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
                
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode([String: Any].self, forKey: .orderingChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(String.self, forKey: .orderValue)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    paymentInfo = try container.decode([[String: Any]].self, forKey: .paymentInfo)
                
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
                    rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)
                
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
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderDetailsData
        Used By: Order
    */

    class OrderDetailsData: Codable {
        
        
        public var orderDate: String?
        
        public var createdTs: String?
        
        public var taxDetails: [String: Any]?
        
        public var codCharges: String?
        
        public var source: String?
        
        public var fyndOrderId: String
        
        public var affiliateId: String?
        
        public var affiliateOrderId: String?
        
        public var orderingChannelLogo: [String: Any]?
        
        public var orderValue: String?
        
        public var orderingChannel: String?
        
        public var meta: [String: Any]?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [[String: Any]]?
        
        public var createdAt: String?
        
        public var prices: Prices?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var rawUserAgent: String?
        
        public var comment: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var charges: [PriceAdjustmentCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case codCharges = "cod_charges"
            
            case source = "source"
            
            case fyndOrderId = "fynd_order_id"
            
            case affiliateId = "affiliate_id"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case orderValue = "order_value"
            
            case orderingChannel = "ordering_channel"
            
            case meta = "meta"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case createdAt = "created_at"
            
            case prices = "prices"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case rawUserAgent = "raw_user_agent"
            
            case comment = "comment"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case charges = "charges"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, charges: [PriceAdjustmentCharge]? = nil, codCharges: String? = nil, comment: String? = nil, createdAt: String? = nil, createdTs: String? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderDate: String? = nil, orderValue: String? = nil, paymentInfo: [[String: Any]]? = nil, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, rawUserAgent: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.codCharges = codCharges
            
            self.source = source
            
            self.fyndOrderId = fyndOrderId
            
            self.affiliateId = affiliateId
            
            self.affiliateOrderId = affiliateOrderId
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.orderValue = orderValue
            
            self.orderingChannel = orderingChannel
            
            self.meta = meta
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.createdAt = createdAt
            
            self.prices = prices
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.rawUserAgent = rawUserAgent
            
            self.comment = comment
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDate = try container.decode(String.self, forKey: .orderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(String.self, forKey: .codCharges)
                
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
                
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode([String: Any].self, forKey: .orderingChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(String.self, forKey: .orderValue)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    paymentInfo = try container.decode([[String: Any]].self, forKey: .paymentInfo)
                
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
                    rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)
                
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
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}


