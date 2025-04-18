

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: TagsSchema
        Used By: Content
    */
    class TagsSchema: Codable {
        
        public var application: String?
        
        public var id: String?
        
        public var company: String?
        
        public var tags: [TagSchema]?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case id = "_id"
            
            case company = "company"
            
            case tags = "tags"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, company: String? = nil, tags: [TagSchema]? = nil, id: String? = nil, v: Double? = nil) {
            
            self.application = application
            
            self.id = id
            
            self.company = company
            
            self.tags = tags
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                application = try container.decode(String.self, forKey: .application)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                company = try container.decode(String.self, forKey: .company)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([TagSchema].self, forKey: .tags)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}
