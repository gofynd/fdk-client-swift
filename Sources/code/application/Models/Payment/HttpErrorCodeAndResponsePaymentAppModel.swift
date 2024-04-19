

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: HttpErrorCodeAndResponse
        Used By: Payment
    */
    class HttpErrorCodeAndResponse: Codable {
        
        public var error: ErrorCodeAndDescription?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: ErrorCodeAndDescription? = nil, success: Bool) {
            
            self.error = error
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
