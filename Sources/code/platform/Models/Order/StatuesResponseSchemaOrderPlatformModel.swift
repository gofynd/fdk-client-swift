

import Foundation


public extension PlatformClient.Order {
    /*
        Model: StatuesResponseSchema
        Used By: Order
    */

    class StatuesResponseSchema: Codable {
        
        
        public var shipments: [ShipmentsResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(shipments: [ShipmentsResponseSchema]? = nil) {
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipments = try container.decode([ShipmentsResponseSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: StatuesResponseSchema
        Used By: Order
    */

    class StatuesResponseSchema: Codable {
        
        
        public var shipments: [ShipmentsResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(shipments: [ShipmentsResponseSchema]? = nil) {
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipments = try container.decode([ShipmentsResponseSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}


