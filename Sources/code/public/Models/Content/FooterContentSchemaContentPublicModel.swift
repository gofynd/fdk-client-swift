

import Foundation
public extension PublicClient.Content {
    /*
        Model: FooterContentSchema
        Used By: Content
    */

    class FooterContentSchema: Codable {
        
        
        public var isVisible: Bool?
        
        public var lineOne: String?
        
        public var lineTwo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isVisible = "is_visible"
            
            case lineOne = "line_one"
            
            case lineTwo = "line_two"
            
        }

        public init(isVisible: Bool? = nil, lineOne: String? = nil, lineTwo: String? = nil) {
            
            self.isVisible = isVisible
            
            self.lineOne = lineOne
            
            self.lineTwo = lineTwo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isVisible = try container.decode(Bool.self, forKey: .isVisible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineOne = try container.decode(String.self, forKey: .lineOne)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineTwo = try container.decode(String.self, forKey: .lineTwo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
            
            try? container.encodeIfPresent(lineOne, forKey: .lineOne)
            
            
            
            try? container.encodeIfPresent(lineTwo, forKey: .lineTwo)
            
            
        }
        
    }
}
