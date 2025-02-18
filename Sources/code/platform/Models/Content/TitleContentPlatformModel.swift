

import Foundation


public extension PlatformClient.Content {
    /*
        Model: Title
        Used By: Content
    */

    class Title: Codable {
        
        
        public var uiWidget: String?
        
        public var uiDescription: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case uiWidget = "ui_widget"
            
            case uiDescription = "ui_description"
            
        }

        public init(uiDescription: Bool? = nil, uiWidget: String? = nil) {
            
            self.uiWidget = uiWidget
            
            self.uiDescription = uiDescription
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uiWidget = try container.decode(String.self, forKey: .uiWidget)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uiDescription = try container.decode(Bool.self, forKey: .uiDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uiWidget, forKey: .uiWidget)
            
            
            
            
            try? container.encodeIfPresent(uiDescription, forKey: .uiDescription)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: Title
        Used By: Content
    */

    class Title: Codable {
        
        
        public var uiWidget: String?
        
        public var uiDescription: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case uiWidget = "ui_widget"
            
            case uiDescription = "ui_description"
            
        }

        public init(uiDescription: Bool? = nil, uiWidget: String? = nil) {
            
            self.uiWidget = uiWidget
            
            self.uiDescription = uiDescription
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uiWidget = try container.decode(String.self, forKey: .uiWidget)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uiDescription = try container.decode(Bool.self, forKey: .uiDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uiWidget, forKey: .uiWidget)
            
            
            
            
            try? container.encodeIfPresent(uiDescription, forKey: .uiDescription)
            
            
        }
        
    }
}


