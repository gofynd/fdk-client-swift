

import Foundation


public extension PlatformClient.Content {
    /*
        Model: SystemPages
        Used By: Content
    */

    class SystemPages: Codable {
        
        
        public var display: String?
        
        public var action: SystemPagesAction?
        
        public var pageType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case action = "action"
            
            case pageType = "page_type"
            
        }

        public init(action: SystemPagesAction? = nil, display: String? = nil, pageType: String? = nil) {
            
            self.display = display
            
            self.action = action
            
            self.pageType = pageType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(SystemPagesAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: SystemPages
        Used By: Content
    */

    class SystemPages: Codable {
        
        
        public var display: String?
        
        public var action: SystemPagesAction?
        
        public var pageType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case action = "action"
            
            case pageType = "page_type"
            
        }

        public init(action: SystemPagesAction? = nil, display: String? = nil, pageType: String? = nil) {
            
            self.display = display
            
            self.action = action
            
            self.pageType = pageType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(SystemPagesAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(pageType, forKey: .pageType)
            
            
        }
        
    }
}


