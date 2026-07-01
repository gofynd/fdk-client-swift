

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PromiseDetailsSchema
        Used By: Order
    */

    class PromiseDetailsSchema: Codable {
        
        
        public var minSla: Int
        
        public var maxSla: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case minSla = "min_sla"
            
            case maxSla = "max_sla"
            
        }

        public init(maxSla: Int, minSla: Int) {
            
            self.minSla = minSla
            
            self.maxSla = maxSla
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                minSla = try container.decode(Int.self, forKey: .minSla)
                
            
            
            
                maxSla = try container.decode(Int.self, forKey: .maxSla)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(minSla, forKey: .minSla)
            
            
            
            
            try? container.encodeIfPresent(maxSla, forKey: .maxSla)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PromiseDetailsSchema
        Used By: Order
    */

    class PromiseDetailsSchema: Codable {
        
        
        public var minSla: Int
        
        public var maxSla: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case minSla = "min_sla"
            
            case maxSla = "max_sla"
            
        }

        public init(maxSla: Int, minSla: Int) {
            
            self.minSla = minSla
            
            self.maxSla = maxSla
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                minSla = try container.decode(Int.self, forKey: .minSla)
                
            
            
            
                maxSla = try container.decode(Int.self, forKey: .maxSla)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(minSla, forKey: .minSla)
            
            
            
            
            try? container.encodeIfPresent(maxSla, forKey: .maxSla)
            
            
        }
        
    }
}


