

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformSubPaymentMode
        Used By: Payment
    */

    class PlatformSubPaymentMode: Codable {
        
        
        public var code: String?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var isActiveAtPg: Bool?
        
        public var priority: Int?
        
        public var logos: PlatformLogoSet?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case isActiveAtPg = "is_active_at_pg"
            
            case priority = "priority"
            
            case logos = "logos"
            
        }

        public init(code: String? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: PlatformLogoSet? = nil, name: String? = nil, priority: Int? = nil) {
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
            self.isActiveAtPg = isActiveAtPg
            
            self.priority = priority
            
            self.logos = logos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PlatformLogoSet.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformSubPaymentMode
        Used By: Payment
    */

    class PlatformSubPaymentMode: Codable {
        
        
        public var code: String?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var isActiveAtPg: Bool?
        
        public var priority: Int?
        
        public var logos: PlatformLogoSet?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case isActiveAtPg = "is_active_at_pg"
            
            case priority = "priority"
            
            case logos = "logos"
            
        }

        public init(code: String? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: PlatformLogoSet? = nil, name: String? = nil, priority: Int? = nil) {
            
            self.code = code
            
            self.name = name
            
            self.isActive = isActive
            
            self.isActiveAtPg = isActiveAtPg
            
            self.priority = priority
            
            self.logos = logos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PlatformLogoSet.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
        }
        
    }
}


