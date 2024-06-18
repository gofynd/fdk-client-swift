

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: InformationSupportPhone
        Used By: Configuration
    */
    class InformationSupportPhone: Codable {
        
        public var code: String?
        
        public var number: String?
        
        public var key: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case number = "number"
            
            case key = "key"
            
        }

        public init(code: String? = nil, key: String? = nil, number: String? = nil) {
            
            self.code = code
            
            self.number = number
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                number = try container.decode(String.self, forKey: .number)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}
