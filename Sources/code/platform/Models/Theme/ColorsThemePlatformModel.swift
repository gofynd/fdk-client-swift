

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: Colors
        Used By: Theme
    */

    class Colors: Codable {
        
        
        public var primaryColor: String?
        
        public var secondaryColor: String?
        
        public var accentColor: String?
        
        public var linkColor: String?
        
        public var buttonSecondaryColor: String?
        
        public var bgColor: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryColor = "primary_color"
            
            case secondaryColor = "secondary_color"
            
            case accentColor = "accent_color"
            
            case linkColor = "link_color"
            
            case buttonSecondaryColor = "button_secondary_color"
            
            case bgColor = "bg_color"
            
        }

        public init(accentColor: String? = nil, bgColor: String? = nil, buttonSecondaryColor: String? = nil, linkColor: String? = nil, primaryColor: String? = nil, secondaryColor: String? = nil) {
            
            self.primaryColor = primaryColor
            
            self.secondaryColor = secondaryColor
            
            self.accentColor = accentColor
            
            self.linkColor = linkColor
            
            self.buttonSecondaryColor = buttonSecondaryColor
            
            self.bgColor = bgColor
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryColor = try container.decode(String.self, forKey: .primaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secondaryColor = try container.decode(String.self, forKey: .secondaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accentColor = try container.decode(String.self, forKey: .accentColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    linkColor = try container.decode(String.self, forKey: .linkColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonSecondaryColor = try container.decode(String.self, forKey: .buttonSecondaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bgColor = try container.decode(String.self, forKey: .bgColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)
            
            
            
            
            try? container.encodeIfPresent(secondaryColor, forKey: .secondaryColor)
            
            
            
            
            try? container.encodeIfPresent(accentColor, forKey: .accentColor)
            
            
            
            
            try? container.encodeIfPresent(linkColor, forKey: .linkColor)
            
            
            
            
            try? container.encodeIfPresent(buttonSecondaryColor, forKey: .buttonSecondaryColor)
            
            
            
            
            try? container.encodeIfPresent(bgColor, forKey: .bgColor)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: Colors
        Used By: Theme
    */

    class Colors: Codable {
        
        
        public var primaryColor: String?
        
        public var secondaryColor: String?
        
        public var accentColor: String?
        
        public var linkColor: String?
        
        public var buttonSecondaryColor: String?
        
        public var bgColor: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryColor = "primary_color"
            
            case secondaryColor = "secondary_color"
            
            case accentColor = "accent_color"
            
            case linkColor = "link_color"
            
            case buttonSecondaryColor = "button_secondary_color"
            
            case bgColor = "bg_color"
            
        }

        public init(accentColor: String? = nil, bgColor: String? = nil, buttonSecondaryColor: String? = nil, linkColor: String? = nil, primaryColor: String? = nil, secondaryColor: String? = nil) {
            
            self.primaryColor = primaryColor
            
            self.secondaryColor = secondaryColor
            
            self.accentColor = accentColor
            
            self.linkColor = linkColor
            
            self.buttonSecondaryColor = buttonSecondaryColor
            
            self.bgColor = bgColor
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryColor = try container.decode(String.self, forKey: .primaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secondaryColor = try container.decode(String.self, forKey: .secondaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accentColor = try container.decode(String.self, forKey: .accentColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    linkColor = try container.decode(String.self, forKey: .linkColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonSecondaryColor = try container.decode(String.self, forKey: .buttonSecondaryColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bgColor = try container.decode(String.self, forKey: .bgColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)
            
            
            
            
            try? container.encodeIfPresent(secondaryColor, forKey: .secondaryColor)
            
            
            
            
            try? container.encodeIfPresent(accentColor, forKey: .accentColor)
            
            
            
            
            try? container.encodeIfPresent(linkColor, forKey: .linkColor)
            
            
            
            
            try? container.encodeIfPresent(buttonSecondaryColor, forKey: .buttonSecondaryColor)
            
            
            
            
            try? container.encodeIfPresent(bgColor, forKey: .bgColor)
            
            
        }
        
    }
}


