

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PlatformChannel
        Used By: Order
    */

    class PlatformChannel: Codable {
        
        
        public var logo: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case name = "name"
            
        }

        public init(logo: String? = nil, name: String? = nil) {
            
            self.logo = logo
            
            self.name = name
            
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PlatformChannel
        Used By: Order
    */

    class PlatformChannel: Codable {
        
        
        public var logo: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case name = "name"
            
        }

        public init(logo: String? = nil, name: String? = nil) {
            
            self.logo = logo
            
            self.name = name
            
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
        }
        
    }
}


