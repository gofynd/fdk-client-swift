

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: HttpErrorCodeAndResponseSchema
        Used By: Payment
    */
    class HttpErrorCodeAndResponseSchema: Codable {
        
        public var success: Bool?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case description = "description"
            
        }

        public init(description: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}
