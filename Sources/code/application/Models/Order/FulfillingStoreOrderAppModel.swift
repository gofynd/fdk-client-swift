

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: FulfillingStore
        Used By: Order
    */
    class FulfillingStore: Codable {
        
        public var id: Int?
        
        public var code: String?
        
        public var name: String?
        
        public var companyName: String?
        
        public var companyId: Int?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case code = "code"
            
            case name = "name"
            
            case companyName = "company_name"
            
            case companyId = "company_id"
            
            case tags = "tags"
            
        }

        public init(code: String? = nil, companyId: Int? = nil, companyName: String? = nil, id: Int? = nil, name: String? = nil, tags: [String]? = nil) {
            
            self.id = id
            
            self.code = code
            
            self.name = name
            
            self.companyName = companyName
            
            self.companyId = companyId
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(Int.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
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
            
            
            
            do {
                companyName = try container.decode(String.self, forKey: .companyName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}
