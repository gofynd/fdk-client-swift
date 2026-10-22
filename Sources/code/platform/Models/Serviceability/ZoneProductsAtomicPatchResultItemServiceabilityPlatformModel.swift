

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchResultItem
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchResultItem: Codable {
        
        
        public var zoneId: String
        
        public var productType: String
        
        public var action: String
        
        public var status: String
        
        public var valuesCount: Int?
        
        public var error: [ZoneProductsAtomicPatchItemError]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case productType = "product_type"
            
            case action = "action"
            
            case status = "status"
            
            case valuesCount = "values_count"
            
            case error = "error"
            
        }

        public init(action: String, error: [ZoneProductsAtomicPatchItemError]? = nil, productType: String, status: String, valuesCount: Int? = nil, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.productType = productType
            
            self.action = action
            
            self.status = status
            
            self.valuesCount = valuesCount
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    valuesCount = try container.decode(Int.self, forKey: .valuesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([ZoneProductsAtomicPatchItemError].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(valuesCount, forKey: .valuesCount)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchResultItem
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchResultItem: Codable {
        
        
        public var zoneId: String
        
        public var productType: String
        
        public var action: String
        
        public var status: String
        
        public var valuesCount: Int?
        
        public var error: [ZoneProductsAtomicPatchItemError]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case productType = "product_type"
            
            case action = "action"
            
            case status = "status"
            
            case valuesCount = "values_count"
            
            case error = "error"
            
        }

        public init(action: String, error: [ZoneProductsAtomicPatchItemError]? = nil, productType: String, status: String, valuesCount: Int? = nil, zoneId: String) {
            
            self.zoneId = zoneId
            
            self.productType = productType
            
            self.action = action
            
            self.status = status
            
            self.valuesCount = valuesCount
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    valuesCount = try container.decode(Int.self, forKey: .valuesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([ZoneProductsAtomicPatchItemError].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(valuesCount, forKey: .valuesCount)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


