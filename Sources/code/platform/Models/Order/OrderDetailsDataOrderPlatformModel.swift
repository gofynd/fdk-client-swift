

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
        
        public var orderingSource: String?
        
        public var meta: [String: Any]?
        

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
            
            case orderingSource = "ordering_source"
            
            case meta = "meta"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, codCharges: String? = nil, createdTs: String? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderingSource: String? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            
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
            
            self.orderingSource = orderingSource
            
            self.meta = meta
            
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
                    orderingSource = try container.decode(String.self, forKey: .orderingSource)
                
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
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
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
        
        public var orderingSource: String?
        
        public var meta: [String: Any]?
        

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
            
            case orderingSource = "ordering_source"
            
            case meta = "meta"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderId: String? = nil, codCharges: String? = nil, createdTs: String? = nil, fyndOrderId: String, meta: [String: Any]? = nil, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderingSource: String? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            
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
            
            self.orderingSource = orderingSource
            
            self.meta = meta
            
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
                    orderingSource = try container.decode(String.self, forKey: .orderingSource)
                
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
            
            
            
            
            try? container.encodeIfPresent(orderingSource, forKey: .orderingSource)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


