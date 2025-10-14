

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PaymentMethodGatewaySchema
        Used By: Order
    */

    class PaymentMethodGatewaySchema: Codable {
        
        
        public var name: String
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
        }

        public init(logo: String? = nil, name: String) {
            
            self.name = name
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PaymentMethodGatewaySchema
        Used By: Order
    */

    class PaymentMethodGatewaySchema: Codable {
        
        
        public var name: String
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
        }

        public init(logo: String? = nil, name: String) {
            
            self.name = name
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}


