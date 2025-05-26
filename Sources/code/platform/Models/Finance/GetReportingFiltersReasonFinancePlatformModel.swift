

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetReportingFiltersReason
        Used By: Finance
    */

    class GetReportingFiltersReason: Codable {
        
        
        public var text: String?
        
        public var type: String?
        
        public var value: String?
        
        public var options: [GetReportingFiltersReasonOptions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case type = "type"
            
            case value = "value"
            
            case options = "options"
            
        }

        public init(options: [GetReportingFiltersReasonOptions]? = nil, text: String? = nil, type: String? = nil, value: String? = nil) {
            
            self.text = text
            
            self.type = type
            
            self.value = value
            
            self.options = options
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    options = try container.decode([GetReportingFiltersReasonOptions].self, forKey: .options)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
        }
        
    }
}




