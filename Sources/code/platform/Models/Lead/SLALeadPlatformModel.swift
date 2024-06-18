

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: SLA
        Used By: Lead
    */

    class SLA: Codable {
        
        
        public var resolutionTime: String
        

        public enum CodingKeys: String, CodingKey {
            
            case resolutionTime = "resolution_time"
            
        }

        public init(resolutionTime: String) {
            
            self.resolutionTime = resolutionTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                resolutionTime = try container.decode(String.self, forKey: .resolutionTime)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resolutionTime, forKey: .resolutionTime)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: SLA
        Used By: Lead
    */

    class SLA: Codable {
        
        
        public var resolutionTime: String
        

        public enum CodingKeys: String, CodingKey {
            
            case resolutionTime = "resolution_time"
            
        }

        public init(resolutionTime: String) {
            
            self.resolutionTime = resolutionTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                resolutionTime = try container.decode(String.self, forKey: .resolutionTime)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(resolutionTime, forKey: .resolutionTime)
            
            
        }
        
    }
}


