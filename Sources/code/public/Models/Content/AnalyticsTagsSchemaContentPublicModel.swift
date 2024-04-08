

import Foundation
public extension PublicClient.Content {
    /*
        Model: AnalyticsTagsSchema
        Used By: Content
    */

    class AnalyticsTagsSchema: Codable {
        
        
        public var id: String?
        
        public var v: Double?
        
        public var bodyCode: String?
        
        public var enabled: Bool?
        
        public var headerCode: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case v = "__v"
            
            case bodyCode = "body_code"
            
            case enabled = "enabled"
            
            case headerCode = "header_code"
            
            case name = "name"
            
        }

        public init(bodyCode: String? = nil, enabled: Bool? = nil, headerCode: String? = nil, name: String? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.v = v
            
            self.bodyCode = bodyCode
            
            self.enabled = enabled
            
            self.headerCode = headerCode
            
            self.name = name
            
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
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bodyCode = try container.decode(String.self, forKey: .bodyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headerCode = try container.decode(String.self, forKey: .headerCode)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            try? container.encodeIfPresent(bodyCode, forKey: .bodyCode)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(headerCode, forKey: .headerCode)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
