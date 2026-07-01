

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: DateOperations
        Used By: Serviceability
    */

    class DateOperations: Codable {
        
        
        public var lte: String
        
        public var gte: String
        

        public enum CodingKeys: String, CodingKey {
            
            case lte = "lte"
            
            case gte = "gte"
            
        }

        public init(gte: String, lte: String) {
            
            self.lte = lte
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lte = try container.decode(String.self, forKey: .lte)
                
            
            
            
                gte = try container.decode(String.self, forKey: .gte)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: DateOperations
        Used By: Serviceability
    */

    class DateOperations: Codable {
        
        
        public var lte: String
        
        public var gte: String
        

        public enum CodingKeys: String, CodingKey {
            
            case lte = "lte"
            
            case gte = "gte"
            
        }

        public init(gte: String, lte: String) {
            
            self.lte = lte
            
            self.gte = gte
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lte = try container.decode(String.self, forKey: .lte)
                
            
            
            
                gte = try container.decode(String.self, forKey: .gte)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lte, forKey: .lte)
            
            
            
            
            try? container.encodeIfPresent(gte, forKey: .gte)
            
            
        }
        
    }
}


