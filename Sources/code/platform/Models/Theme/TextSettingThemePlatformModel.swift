

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: TextSetting
        Used By: Theme
    */

    class TextSetting: Codable {
        
        
        public var textHeading: String?
        
        public var textBody: String?
        
        public var textLabel: String?
        
        public var textSecondary: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case textHeading = "text_heading"
            
            case textBody = "text_body"
            
            case textLabel = "text_label"
            
            case textSecondary = "text_secondary"
            
        }

        public init(textBody: String? = nil, textHeading: String? = nil, textLabel: String? = nil, textSecondary: String? = nil) {
            
            self.textHeading = textHeading
            
            self.textBody = textBody
            
            self.textLabel = textLabel
            
            self.textSecondary = textSecondary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    textHeading = try container.decode(String.self, forKey: .textHeading)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textBody = try container.decode(String.self, forKey: .textBody)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textLabel = try container.decode(String.self, forKey: .textLabel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textSecondary = try container.decode(String.self, forKey: .textSecondary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(textHeading, forKey: .textHeading)
            
            
            
            
            try? container.encodeIfPresent(textBody, forKey: .textBody)
            
            
            
            
            try? container.encodeIfPresent(textLabel, forKey: .textLabel)
            
            
            
            
            try? container.encodeIfPresent(textSecondary, forKey: .textSecondary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: TextSetting
        Used By: Theme
    */

    class TextSetting: Codable {
        
        
        public var textHeading: String?
        
        public var textBody: String?
        
        public var textLabel: String?
        
        public var textSecondary: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case textHeading = "text_heading"
            
            case textBody = "text_body"
            
            case textLabel = "text_label"
            
            case textSecondary = "text_secondary"
            
        }

        public init(textBody: String? = nil, textHeading: String? = nil, textLabel: String? = nil, textSecondary: String? = nil) {
            
            self.textHeading = textHeading
            
            self.textBody = textBody
            
            self.textLabel = textLabel
            
            self.textSecondary = textSecondary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    textHeading = try container.decode(String.self, forKey: .textHeading)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textBody = try container.decode(String.self, forKey: .textBody)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textLabel = try container.decode(String.self, forKey: .textLabel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    textSecondary = try container.decode(String.self, forKey: .textSecondary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(textHeading, forKey: .textHeading)
            
            
            
            
            try? container.encodeIfPresent(textBody, forKey: .textBody)
            
            
            
            
            try? container.encodeIfPresent(textLabel, forKey: .textLabel)
            
            
            
            
            try? container.encodeIfPresent(textSecondary, forKey: .textSecondary)
            
            
        }
        
    }
}


