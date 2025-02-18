

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerAttributes
        Used By: Serviceability
    */

    class CourierPartnerAttributes: Codable {
        
        
        public var tat: CourierPartnerTAT?
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
        }

        public init(tat: CourierPartnerTAT? = nil) {
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tat = try container.decode(CourierPartnerTAT.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerAttributes
        Used By: Serviceability
    */

    class CourierPartnerAttributes: Codable {
        
        
        public var tat: CourierPartnerTAT?
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
        }

        public init(tat: CourierPartnerTAT? = nil) {
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tat = try container.decode(CourierPartnerTAT.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}


