

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ButtonSetting
        Used By: Theme
    */

    class ButtonSetting: Codable {
        
        
        public var buttonPrimary: String?
        
        public var buttonSecondary: String?
        
        public var buttonLink: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case buttonPrimary = "button_primary"
            
            case buttonSecondary = "button_secondary"
            
            case buttonLink = "button_link"
            
        }

        public init(buttonLink: String? = nil, buttonPrimary: String? = nil, buttonSecondary: String? = nil) {
            
            self.buttonPrimary = buttonPrimary
            
            self.buttonSecondary = buttonSecondary
            
            self.buttonLink = buttonLink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    buttonPrimary = try container.decode(String.self, forKey: .buttonPrimary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonSecondary = try container.decode(String.self, forKey: .buttonSecondary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonLink = try container.decode(String.self, forKey: .buttonLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buttonPrimary, forKey: .buttonPrimary)
            
            
            
            
            try? container.encodeIfPresent(buttonSecondary, forKey: .buttonSecondary)
            
            
            
            
            try? container.encodeIfPresent(buttonLink, forKey: .buttonLink)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ButtonSetting
        Used By: Theme
    */

    class ButtonSetting: Codable {
        
        
        public var buttonPrimary: String?
        
        public var buttonSecondary: String?
        
        public var buttonLink: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case buttonPrimary = "button_primary"
            
            case buttonSecondary = "button_secondary"
            
            case buttonLink = "button_link"
            
        }

        public init(buttonLink: String? = nil, buttonPrimary: String? = nil, buttonSecondary: String? = nil) {
            
            self.buttonPrimary = buttonPrimary
            
            self.buttonSecondary = buttonSecondary
            
            self.buttonLink = buttonLink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    buttonPrimary = try container.decode(String.self, forKey: .buttonPrimary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonSecondary = try container.decode(String.self, forKey: .buttonSecondary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonLink = try container.decode(String.self, forKey: .buttonLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buttonPrimary, forKey: .buttonPrimary)
            
            
            
            
            try? container.encodeIfPresent(buttonSecondary, forKey: .buttonSecondary)
            
            
            
            
            try? container.encodeIfPresent(buttonLink, forKey: .buttonLink)
            
            
        }
        
    }
}


