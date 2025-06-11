

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RuleConditionsSchema
        Used By: Order
    */
    class RuleConditionsSchema: Codable {
        
        public var articleTag: String
        
        public var department: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case articleTag = "article_tag"
            
            case department = "department"
            
        }

        public init(articleTag: String, department: [String]) {
            
            self.articleTag = articleTag
            
            self.department = department
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            articleTag = try container.decode(String.self, forKey: .articleTag)
            
            
            
            
            department = try container.decode([String].self, forKey: .department)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(articleTag, forKey: .articleTag)
            
            
            
            try? container.encodeIfPresent(department, forKey: .department)
            
            
        }
        
    }
}
