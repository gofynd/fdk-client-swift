

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundModeInfo
        Used By: Order
    */

    class RefundModeInfo: Codable {
        
        
        public var isActive: Bool?
        
        public var slug: String?
        
        public var options: [RefundOption]?
        
        public var displayName: String?
        
        public var format: RefundModeFormat?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case options = "options"
            
            case displayName = "display_name"
            
            case format = "format"
            
        }

        public init(displayName: String? = nil, format: RefundModeFormat? = nil, isActive: Bool? = nil, options: [RefundOption]? = nil, slug: String? = nil) {
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.options = options
            
            self.displayName = displayName
            
            self.format = format
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    options = try container.decode([RefundOption].self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(RefundModeFormat.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundModeInfo
        Used By: Order
    */

    class RefundModeInfo: Codable {
        
        
        public var isActive: Bool?
        
        public var slug: String?
        
        public var options: [RefundOption]?
        
        public var displayName: String?
        
        public var format: RefundModeFormat?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case options = "options"
            
            case displayName = "display_name"
            
            case format = "format"
            
        }

        public init(displayName: String? = nil, format: RefundModeFormat? = nil, isActive: Bool? = nil, options: [RefundOption]? = nil, slug: String? = nil) {
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.options = options
            
            self.displayName = displayName
            
            self.format = format
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    options = try container.decode([RefundOption].self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    format = try container.decode(RefundModeFormat.self, forKey: .format)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
        }
        
    }
}


