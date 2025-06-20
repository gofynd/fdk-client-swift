

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyPrimaryOTPSuccess
        Used By: User
    */
    class VerifyPrimaryOTPSuccess: Codable {
        
        public var success: Bool?
        
        public var requestId: String?
        
        public var entity: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case requestId = "request_id"
            
            case entity = "entity"
            
        }

        public init(entity: String? = nil, requestId: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.requestId = requestId
            
            self.entity = entity
            
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
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                entity = try container.decode(String.self, forKey: .entity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
        }
        
    }
}
