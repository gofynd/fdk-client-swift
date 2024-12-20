

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CODLimitConfig
        Used By: Payment
    */

    class CODLimitConfig: Codable {
        
        
        public var storefront: Double
        
        public var pos: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case storefront = "storefront"
            
            case pos = "pos"
            
        }

        public init(pos: Double, storefront: Double) {
            
            self.storefront = storefront
            
            self.pos = pos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storefront = try container.decode(Double.self, forKey: .storefront)
                
            
            
            
                pos = try container.decode(Double.self, forKey: .pos)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storefront, forKey: .storefront)
            
            
            
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CODLimitConfig
        Used By: Payment
    */

    class CODLimitConfig: Codable {
        
        
        public var storefront: Double
        
        public var pos: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case storefront = "storefront"
            
            case pos = "pos"
            
        }

        public init(pos: Double, storefront: Double) {
            
            self.storefront = storefront
            
            self.pos = pos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                storefront = try container.decode(Double.self, forKey: .storefront)
                
            
            
            
                pos = try container.decode(Double.self, forKey: .pos)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storefront, forKey: .storefront)
            
            
            
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            
        }
        
    }
}


