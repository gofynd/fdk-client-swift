

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationSelfShipConfig
        Used By: Serviceability
    */

    class ApplicationSelfShipConfig: Codable {
        
        
        public var selfShip: SelfShipResult?
        

        public enum CodingKeys: String, CodingKey {
            
            case selfShip = "self_ship"
            
        }

        public init(selfShip: SelfShipResult? = nil) {
            
            self.selfShip = selfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    selfShip = try container.decode(SelfShipResult.self, forKey: .selfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(selfShip, forKey: .selfShip)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationSelfShipConfig
        Used By: Serviceability
    */

    class ApplicationSelfShipConfig: Codable {
        
        
        public var selfShip: SelfShipResult?
        

        public enum CodingKeys: String, CodingKey {
            
            case selfShip = "self_ship"
            
        }

        public init(selfShip: SelfShipResult? = nil) {
            
            self.selfShip = selfShip
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    selfShip = try container.decode(SelfShipResult.self, forKey: .selfShip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(selfShip, forKey: .selfShip)
            
            
        }
        
    }
}


