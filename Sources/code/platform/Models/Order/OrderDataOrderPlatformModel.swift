

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderData
        Used By: Order
    */

    class OrderData: Codable {
        
        
        public var orderingChannel: String?
        
        public var orderingSource: String?
        
        public var orderingSourceDetails: OrderingSourceDetails?
        
        public var orderDate: String
        
        public var createdTs: String?
        
        public var taxDetails: TaxDetails?
        
        public var meta: [String: Any]?
        
        public var fyndOrderId: String
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [PaymentInfoData]?
        
        public var affiliateOrderId: String?
        
        public var affiliateId: String?
        
        public var source: String?
        
        public var currency: CurrencySchema?
        
        public var loyaltyDiscountDetails: LoyaltyDiscountDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingChannel = "ordering_channel"
            
            case orderingSource = "ordering_source"
            
            case orderingSourceDetails = "ordering_source_details"
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case meta = "meta"
            
            case fyndOrderId = "fynd_order_id"
            
            case prices = "prices"
            
            case charges = "charges"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case affiliateId = "affiliate_id"
            
            case source = "source"
            
            case currency = "currency"
            
            case loyaltyDiscountDetails = "loyalty_discount_details"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, charges: [PriceAdjustmentCharge]? = nil, createdTs: String? = nil, currency: CurrencySchema? = nil, fyndOrderId: String, loyaltyDiscountDetails: LoyaltyDiscountDetails? = nil, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingSource: String? = nil, orderingSourceDetails: OrderingSourceDetails? = nil, orderDate: String, paymentInfo: [PaymentInfoData]? = nil, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, source: String? = nil, taxDetails: TaxDetails? = nil) {
            
            self.orderingChannel = orderingChannel
            
            self.orderingSource = orderingSource
            
            self.orderingSourceDetails = orderingSourceDetails
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.meta = meta
            
            self.fyndOrderId = fyndOrderId
            
            self.prices = prices
            
            self.charges = charges
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.affiliateOrderId = affiliateOrderId
            
            self.affiliateId = affiliateId
            
            self.source = source
            
            self.currency = currency
            
            self.loyaltyDiscountDetails = loyaltyDiscountDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
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
                
            
            
                orderDate = try container.decode(String.self, forKey: .orderDate)
                
            
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)
                
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
                
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
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
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
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
                    paymentInfo = try container.decode([PaymentInfoData].self, forKey: .paymentInfo)
                
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
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
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
                    currency = try container.decode(CurrencySchema.self, forKey: .currency)
                
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
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(orderingSourceDetails, forKey: .orderingSourceDetails)
            
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscountDetails, forKey: .loyaltyDiscountDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderData
        Used By: Order
    */

    class OrderData: Codable {
        
        
        public var orderingChannel: String?
        
        public var orderingSource: String?
        
        public var orderingSourceDetails: OrderingSourceDetails?
        
        public var orderDate: String
        
        public var createdTs: String?
        
        public var taxDetails: TaxDetails?
        
        public var meta: [String: Any]?
        
        public var fyndOrderId: String
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [PaymentInfoData]?
        
        public var affiliateOrderId: String?
        
        public var affiliateId: String?
        
        public var source: String?
        
        public var currency: CurrencySchema?
        
        public var loyaltyDiscountDetails: LoyaltyDiscountDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingChannel = "ordering_channel"
            
            case orderingSource = "ordering_source"
            
            case orderingSourceDetails = "ordering_source_details"
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case meta = "meta"
            
            case fyndOrderId = "fynd_order_id"
            
            case prices = "prices"
            
            case charges = "charges"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case affiliateId = "affiliate_id"
            
            case source = "source"
            
            case currency = "currency"
            
            case loyaltyDiscountDetails = "loyalty_discount_details"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, charges: [PriceAdjustmentCharge]? = nil, createdTs: String? = nil, currency: CurrencySchema? = nil, fyndOrderId: String, loyaltyDiscountDetails: LoyaltyDiscountDetails? = nil, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingSource: String? = nil, orderingSourceDetails: OrderingSourceDetails? = nil, orderDate: String, paymentInfo: [PaymentInfoData]? = nil, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, source: String? = nil, taxDetails: TaxDetails? = nil) {
            
            self.orderingChannel = orderingChannel
            
            self.orderingSource = orderingSource
            
            self.orderingSourceDetails = orderingSourceDetails
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.meta = meta
            
            self.fyndOrderId = fyndOrderId
            
            self.prices = prices
            
            self.charges = charges
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.affiliateOrderId = affiliateOrderId
            
            self.affiliateId = affiliateId
            
            self.source = source
            
            self.currency = currency
            
            self.loyaltyDiscountDetails = loyaltyDiscountDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
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
                
            
            
                orderDate = try container.decode(String.self, forKey: .orderDate)
                
            
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)
                
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
                
            
            
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
            
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
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
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
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
                    paymentInfo = try container.decode([PaymentInfoData].self, forKey: .paymentInfo)
                
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
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
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
                    currency = try container.decode(CurrencySchema.self, forKey: .currency)
                
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
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(orderingSourceDetails, forKey: .orderingSourceDetails)
            
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscountDetails, forKey: .loyaltyDiscountDetails)
            
            
        }
        
    }
}


