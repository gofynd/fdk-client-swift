

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WrongOtpError
        Used By: Payment
    */
    class WrongOtpError: Codable {
        
        public var isVerifiedFlag: Bool?
        
        public var description: String?
        
        public var success: Bool
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isVerifiedFlag = "is_verified_flag"
            
            case description = "description"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(description: String? = nil, isVerifiedFlag: Bool? = nil, message: String? = nil, success: Bool) {
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.description = description
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
            
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
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
