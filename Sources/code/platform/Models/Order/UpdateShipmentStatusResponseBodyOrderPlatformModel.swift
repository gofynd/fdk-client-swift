

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdateShipmentStatusResponseBody
        Used By: Order
    */

    class UpdateShipmentStatusResponseBody: Codable {
        
        
        public var statuses: [StatuesResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statuses = "statuses"
            
        }

        public init(statuses: [StatuesResponseSchema]? = nil) {
            
            self.statuses = statuses
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statuses = try container.decode([StatuesResponseSchema].self, forKey: .statuses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdateShipmentStatusResponseBody
        Used By: Order
    */

    class UpdateShipmentStatusResponseBody: Codable {
        
        
        public var statuses: [StatuesResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statuses = "statuses"
            
        }

        public init(statuses: [StatuesResponseSchema]? = nil) {
            
            self.statuses = statuses
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statuses = try container.decode([StatuesResponseSchema].self, forKey: .statuses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
        }
        
    }
}


