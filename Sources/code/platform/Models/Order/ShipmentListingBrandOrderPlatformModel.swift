

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentListingBrand
        Used By: Order
    */

    class ShipmentListingBrand: Codable {
        
        
        public var logo: String?
        
        public var createdOn: String?
        
        public var name: String?
        
        public var logoBase64: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case createdOn = "created_on"
            
            case name = "name"
            
            case logoBase64 = "logo_base64"
            
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            
            self.logo = logo
            
            self.createdOn = createdOn
            
            self.name = name
            
            self.logoBase64 = logoBase64
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoBase64 = try container.decode(String.self, forKey: .logoBase64)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(logoBase64, forKey: .logoBase64)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentListingBrand
        Used By: Order
    */

    class ShipmentListingBrand: Codable {
        
        
        public var logo: String?
        
        public var createdOn: String?
        
        public var name: String?
        
        public var logoBase64: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case createdOn = "created_on"
            
            case name = "name"
            
            case logoBase64 = "logo_base64"
            
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            
            self.logo = logo
            
            self.createdOn = createdOn
            
            self.name = name
            
            self.logoBase64 = logoBase64
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoBase64 = try container.decode(String.self, forKey: .logoBase64)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(logoBase64, forKey: .logoBase64)
            
            
        }
        
    }
}


