

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemeDefaultTat
        Used By: Serviceability
    */

    class CourierPartnerSchemeDefaultTat: Codable {
        
        
        public var enabled: Bool?
        
        public var tat: CourierPartnerSchemeTat?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case tat = "tat"
            
        }

        public init(enabled: Bool? = nil, tat: CourierPartnerSchemeTat? = nil) {
            
            self.enabled = enabled
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tat = try container.decode(CourierPartnerSchemeTat.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerSchemeDefaultTat
        Used By: Serviceability
    */

    class CourierPartnerSchemeDefaultTat: Codable {
        
        
        public var enabled: Bool?
        
        public var tat: CourierPartnerSchemeTat?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case tat = "tat"
            
        }

        public init(enabled: Bool? = nil, tat: CourierPartnerSchemeTat? = nil) {
            
            self.enabled = enabled
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tat = try container.decode(CourierPartnerSchemeTat.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}


