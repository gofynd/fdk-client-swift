

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GoogleMapPoint
        Used By: Payment
    */

    class GoogleMapPoint: Codable {
        
        
        public var address: String?
        
        public var subLocality: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case subLocality = "sub_locality"
            
        }

        public init(address: String? = nil, subLocality: String? = nil) {
            
            self.address = address
            
            self.subLocality = subLocality
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subLocality = try container.decode(String.self, forKey: .subLocality)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(subLocality, forKey: .subLocality)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GoogleMapPoint
        Used By: Payment
    */

    class GoogleMapPoint: Codable {
        
        
        public var address: String?
        
        public var subLocality: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case subLocality = "sub_locality"
            
        }

        public init(address: String? = nil, subLocality: String? = nil) {
            
            self.address = address
            
            self.subLocality = subLocality
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subLocality = try container.decode(String.self, forKey: .subLocality)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(subLocality, forKey: .subLocality)
            
            
        }
        
    }
}


