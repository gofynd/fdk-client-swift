

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkActionTemplateResponseSchema
        Used By: Order
    */

    class BulkActionTemplateResponseSchema: Codable {
        
        
        public var templateXSlug: [BulkActionTemplate]?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateXSlug = "template_x_slug"
            
        }

        public init(templateXSlug: [BulkActionTemplate]? = nil) {
            
            self.templateXSlug = templateXSlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateXSlug = try container.decode([BulkActionTemplate].self, forKey: .templateXSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateXSlug, forKey: .templateXSlug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkActionTemplateResponseSchema
        Used By: Order
    */

    class BulkActionTemplateResponseSchema: Codable {
        
        
        public var templateXSlug: [BulkActionTemplate]?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateXSlug = "template_x_slug"
            
        }

        public init(templateXSlug: [BulkActionTemplate]? = nil) {
            
            self.templateXSlug = templateXSlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateXSlug = try container.decode([BulkActionTemplate].self, forKey: .templateXSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateXSlug, forKey: .templateXSlug)
            
            
        }
        
    }
}


