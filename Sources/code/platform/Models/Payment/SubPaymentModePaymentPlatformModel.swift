

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SubPaymentMode
        Used By: Payment
    */

    class SubPaymentMode: Codable {
        
        
        public var code: String?
        
        public var isActive: Bool?
        
        public var priority: Int?
        
        public var logos: LogoSet?
        
        public var name: String?
        
        public var isActiveAtPg: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case isActive = "is_active"
            
            case priority = "priority"
            
            case logos = "logos"
            
            case name = "name"
            
            case isActiveAtPg = "is_active_at_pg"
            
        }

        public init(code: String? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: LogoSet? = nil, name: String? = nil, priority: Int? = nil) {
            
            self.code = code
            
            self.isActive = isActive
            
            self.priority = priority
            
            self.logos = logos
            
            self.name = name
            
            self.isActiveAtPg = isActiveAtPg
            
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    logos = try container.decode(LogoSet.self, forKey: .logos)
                
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
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SubPaymentMode
        Used By: Payment
    */

    class SubPaymentMode: Codable {
        
        
        public var code: String?
        
        public var isActive: Bool?
        
        public var priority: Int?
        
        public var logos: LogoSet?
        
        public var name: String?
        
        public var isActiveAtPg: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case isActive = "is_active"
            
            case priority = "priority"
            
            case logos = "logos"
            
            case name = "name"
            
            case isActiveAtPg = "is_active_at_pg"
            
        }

        public init(code: String? = nil, isActive: Bool? = nil, isActiveAtPg: Bool? = nil, logos: LogoSet? = nil, name: String? = nil, priority: Int? = nil) {
            
            self.code = code
            
            self.isActive = isActive
            
            self.priority = priority
            
            self.logos = logos
            
            self.name = name
            
            self.isActiveAtPg = isActiveAtPg
            
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    logos = try container.decode(LogoSet.self, forKey: .logos)
                
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
                    isActiveAtPg = try container.decode(Bool.self, forKey: .isActiveAtPg)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActiveAtPg, forKey: .isActiveAtPg)
            
            
        }
        
    }
}


