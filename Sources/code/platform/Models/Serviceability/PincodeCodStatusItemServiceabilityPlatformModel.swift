

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeCodStatusItem
        Used By: Serviceability
    */

    class PincodeCodStatusItem: Codable {
        
        
        public var active: Bool?
        
        public var pincode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case pincode = "pincode"
            
        }

        public init(active: Bool? = nil, pincode: String? = nil) {
            
            self.active = active
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeCodStatusItem
        Used By: Serviceability
    */

    class PincodeCodStatusItem: Codable {
        
        
        public var active: Bool?
        
        public var pincode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case pincode = "pincode"
            
        }

        public init(active: Bool? = nil, pincode: String? = nil) {
            
            self.active = active
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}


