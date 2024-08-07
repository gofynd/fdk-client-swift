

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetReportingFiltersReasonOptions
        Used By: Finance
    */

    class GetReportingFiltersReasonOptions: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var placeholderText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case placeholderText = "placeholder_text"
            
        }

        public init(placeholderText: String? = nil, text: String? = nil, value: String? = nil) {
            
            self.text = text
            
            self.value = value
            
            self.placeholderText = placeholderText
            
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
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    placeholderText = try container.decode(String.self, forKey: .placeholderText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(placeholderText, forKey: .placeholderText)
            
            
        }
        
    }
}




