

import Foundation




public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: GenerateSEOContent
        Used By: Content
    */

    class GenerateSEOContent: Codable {
        
        
        public var text: String?
        
        public var existingText: String?
        
        public var keywords: [String]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case existingText = "existing_text"
            
            case keywords = "keywords"
            
            case type = "type"
            
        }

        public init(existingText: String? = nil, keywords: [String]? = nil, text: String? = nil, type: String? = nil) {
            
            self.text = text
            
            self.existingText = existingText
            
            self.keywords = keywords
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    existingText = try container.decode(String.self, forKey: .existingText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    keywords = try container.decode([String].self, forKey: .keywords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(existingText, forKey: .existingText)
            
            
            
            
            try? container.encodeIfPresent(keywords, forKey: .keywords)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


