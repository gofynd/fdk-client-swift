

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DpPickupSlotSchema
        Used By: Order
    */

    class DpPickupSlotSchema: Codable {
        
        
        public var startTime: String
        
        public var endTime: String
        

        public enum CodingKeys: String, CodingKey {
            
            case startTime = "start_time"
            
            case endTime = "end_time"
            
        }

        public init(endTime: String, startTime: String) {
            
            self.startTime = startTime
            
            self.endTime = endTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                startTime = try container.decode(String.self, forKey: .startTime)
                
            
            
            
                endTime = try container.decode(String.self, forKey: .endTime)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(startTime, forKey: .startTime)
            
            
            
            
            try? container.encodeIfPresent(endTime, forKey: .endTime)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DpPickupSlotSchema
        Used By: Order
    */

    class DpPickupSlotSchema: Codable {
        
        
        public var startTime: String
        
        public var endTime: String
        

        public enum CodingKeys: String, CodingKey {
            
            case startTime = "start_time"
            
            case endTime = "end_time"
            
        }

        public init(endTime: String, startTime: String) {
            
            self.startTime = startTime
            
            self.endTime = endTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                startTime = try container.decode(String.self, forKey: .startTime)
                
            
            
            
                endTime = try container.decode(String.self, forKey: .endTime)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(startTime, forKey: .startTime)
            
            
            
            
            try? container.encodeIfPresent(endTime, forKey: .endTime)
            
            
        }
        
    }
}


