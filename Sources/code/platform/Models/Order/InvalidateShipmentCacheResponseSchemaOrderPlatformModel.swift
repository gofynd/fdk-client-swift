

import Foundation


public extension PlatformClient.Order {
    /*
        Model: InvalidateShipmentCacheResponseSchema
        Used By: Order
    */

    class InvalidateShipmentCacheResponseSchema: Codable {
        
        
        public var response: [InvalidateShipmentCacheNestedResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: [InvalidateShipmentCacheNestedResponseSchema]? = nil) {
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    response = try container.decode([InvalidateShipmentCacheNestedResponseSchema].self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: InvalidateShipmentCacheResponseSchema
        Used By: Order
    */

    class InvalidateShipmentCacheResponseSchema: Codable {
        
        
        public var response: [InvalidateShipmentCacheNestedResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: [InvalidateShipmentCacheNestedResponseSchema]? = nil) {
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    response = try container.decode([InvalidateShipmentCacheNestedResponseSchema].self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}


