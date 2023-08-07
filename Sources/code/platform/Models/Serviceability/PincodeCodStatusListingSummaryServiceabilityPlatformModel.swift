

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeCodStatusListingSummary
        Used By: Serviceability
    */

    class PincodeCodStatusListingSummary: Codable {
        
        
        public var totalActivePincodes: Int
        
        public var totalInactivePincodes: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalActivePincodes = "total_active_pincodes"
            
            case totalInactivePincodes = "total_inactive_pincodes"
            
        }

        public init(totalActivePincodes: Int, totalInactivePincodes: Int) {
            
            self.totalActivePincodes = totalActivePincodes
            
            self.totalInactivePincodes = totalInactivePincodes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalActivePincodes = try container.decode(Int.self, forKey: .totalActivePincodes)
                
            
            
            
                totalInactivePincodes = try container.decode(Int.self, forKey: .totalInactivePincodes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalActivePincodes, forKey: .totalActivePincodes)
            
            
            
            
            try? container.encodeIfPresent(totalInactivePincodes, forKey: .totalInactivePincodes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeCodStatusListingSummary
        Used By: Serviceability
    */

    class PincodeCodStatusListingSummary: Codable {
        
        
        public var totalActivePincodes: Int
        
        public var totalInactivePincodes: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalActivePincodes = "total_active_pincodes"
            
            case totalInactivePincodes = "total_inactive_pincodes"
            
        }

        public init(totalActivePincodes: Int, totalInactivePincodes: Int) {
            
            self.totalActivePincodes = totalActivePincodes
            
            self.totalInactivePincodes = totalInactivePincodes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalActivePincodes = try container.decode(Int.self, forKey: .totalActivePincodes)
                
            
            
            
                totalInactivePincodes = try container.decode(Int.self, forKey: .totalInactivePincodes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalActivePincodes, forKey: .totalActivePincodes)
            
            
            
            
            try? container.encodeIfPresent(totalInactivePincodes, forKey: .totalInactivePincodes)
            
            
        }
        
    }
}


