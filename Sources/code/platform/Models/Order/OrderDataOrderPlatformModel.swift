

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderData
        Used By: Order
    */

    class OrderData: Codable {
        
        
        public var orderDate: String
        
        public var createdTs: String?
        
        public var taxDetails: TaxDetails?
        
        public var meta: [String: Any]?
        
        public var fyndOrderId: String
        
        public var prices: Prices?
        
        public var paymentMethods: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case meta = "meta"
            
            case fyndOrderId = "fynd_order_id"
            
            case prices = "prices"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(createdTs: String? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.meta = meta
            
            self.fyndOrderId = fyndOrderId
            
            self.prices = prices
            
            self.paymentMethods = paymentMethods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
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
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderData
        Used By: Order
    */

    class OrderData: Codable {
        
        
        public var orderDate: String
        
        public var createdTs: String?
        
        public var taxDetails: TaxDetails?
        
        public var meta: [String: Any]?
        
        public var fyndOrderId: String
        
        public var prices: Prices?
        
        public var paymentMethods: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case createdTs = "created_ts"
            
            case taxDetails = "tax_details"
            
            case meta = "meta"
            
            case fyndOrderId = "fynd_order_id"
            
            case prices = "prices"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(createdTs: String? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            
            self.orderDate = orderDate
            
            self.createdTs = createdTs
            
            self.taxDetails = taxDetails
            
            self.meta = meta
            
            self.fyndOrderId = fyndOrderId
            
            self.prices = prices
            
            self.paymentMethods = paymentMethods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
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
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
}


