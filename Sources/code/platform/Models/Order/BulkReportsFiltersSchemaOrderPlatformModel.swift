

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkReportsFiltersSchema
        Used By: Order
    */

    class BulkReportsFiltersSchema: Codable {
        
        
        public var bagStatus: String?
        
        public var operationalStatus: String?
        
        public var stores: String?
        
        public var timeToDispatch: String?
        
        public var paymentMethods: String?
        
        public var dpIds: String?
        
        public var salesChannels: String?
        
        public var tags: String?
        
        public var lockStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagStatus = "bag_status"
            
            case operationalStatus = "operational_status"
            
            case stores = "stores"
            
            case timeToDispatch = "time_to_dispatch"
            
            case paymentMethods = "payment_methods"
            
            case dpIds = "dp_ids"
            
            case salesChannels = "sales_channels"
            
            case tags = "tags"
            
            case lockStatus = "lock_status"
            
        }

        public init(bagStatus: String? = nil, dpIds: String? = nil, lockStatus: String? = nil, operationalStatus: String? = nil, paymentMethods: String? = nil, salesChannels: String? = nil, stores: String? = nil, tags: String? = nil, timeToDispatch: String? = nil) {
            
            self.bagStatus = bagStatus
            
            self.operationalStatus = operationalStatus
            
            self.stores = stores
            
            self.timeToDispatch = timeToDispatch
            
            self.paymentMethods = paymentMethods
            
            self.dpIds = dpIds
            
            self.salesChannels = salesChannels
            
            self.tags = tags
            
            self.lockStatus = lockStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagStatus = try container.decode(String.self, forKey: .bagStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(String.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeToDispatch = try container.decode(String.self, forKey: .timeToDispatch)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode(String.self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpIds = try container.decode(String.self, forKey: .dpIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    salesChannels = try container.decode(String.self, forKey: .salesChannels)
                
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
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(timeToDispatch, forKey: .timeToDispatch)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(salesChannels, forKey: .salesChannels)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkReportsFiltersSchema
        Used By: Order
    */

    class BulkReportsFiltersSchema: Codable {
        
        
        public var bagStatus: String?
        
        public var operationalStatus: String?
        
        public var stores: String?
        
        public var timeToDispatch: String?
        
        public var paymentMethods: String?
        
        public var dpIds: String?
        
        public var salesChannels: String?
        
        public var tags: String?
        
        public var lockStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagStatus = "bag_status"
            
            case operationalStatus = "operational_status"
            
            case stores = "stores"
            
            case timeToDispatch = "time_to_dispatch"
            
            case paymentMethods = "payment_methods"
            
            case dpIds = "dp_ids"
            
            case salesChannels = "sales_channels"
            
            case tags = "tags"
            
            case lockStatus = "lock_status"
            
        }

        public init(bagStatus: String? = nil, dpIds: String? = nil, lockStatus: String? = nil, operationalStatus: String? = nil, paymentMethods: String? = nil, salesChannels: String? = nil, stores: String? = nil, tags: String? = nil, timeToDispatch: String? = nil) {
            
            self.bagStatus = bagStatus
            
            self.operationalStatus = operationalStatus
            
            self.stores = stores
            
            self.timeToDispatch = timeToDispatch
            
            self.paymentMethods = paymentMethods
            
            self.dpIds = dpIds
            
            self.salesChannels = salesChannels
            
            self.tags = tags
            
            self.lockStatus = lockStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagStatus = try container.decode(String.self, forKey: .bagStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode(String.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeToDispatch = try container.decode(String.self, forKey: .timeToDispatch)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode(String.self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpIds = try container.decode(String.self, forKey: .dpIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    salesChannels = try container.decode(String.self, forKey: .salesChannels)
                
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
                    lockStatus = try container.decode(String.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(timeToDispatch, forKey: .timeToDispatch)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
            
            
            
            
            try? container.encodeIfPresent(salesChannels, forKey: .salesChannels)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
        }
        
    }
}


