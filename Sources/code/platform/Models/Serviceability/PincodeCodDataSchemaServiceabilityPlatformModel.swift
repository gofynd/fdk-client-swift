

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeCodDataSchema
        Used By: Serviceability
    */

    class PincodeCodDataSchema: Codable {
        
        
        public var pincode: String?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case active = "active"
            
        }

        public init(active: Bool? = nil, pincode: String? = nil) {
            
            self.pincode = pincode
            
            self.active = active
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeCodDataSchema
        Used By: Serviceability
    */

    class PincodeCodDataSchema: Codable {
        
        
        public var pincode: String?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case active = "active"
            
        }

        public init(active: Bool? = nil, pincode: String? = nil) {
            
            self.pincode = pincode
            
            self.active = active
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
        }
        
    }
}


