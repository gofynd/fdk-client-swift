

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SubscriptionsObject
        Used By: Communication
    */

    class SubscriptionsObject: Codable {
        
        
        public var id: String?
        
        public var template: TemplateObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case template = "template"
            
        }

        public init(template: TemplateObject? = nil, id: String? = nil) {
            
            self.id = id
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(TemplateObject.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SubscriptionsObject
        Used By: Communication
    */

    class SubscriptionsObject: Codable {
        
        
        public var id: String?
        
        public var template: TemplateObject?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case template = "template"
            
        }

        public init(template: TemplateObject? = nil, id: String? = nil) {
            
            self.id = id
            
            self.template = template
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    template = try container.decode(TemplateObject.self, forKey: .template)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(template, forKey: .template)
            
            
        }
        
    }
}


