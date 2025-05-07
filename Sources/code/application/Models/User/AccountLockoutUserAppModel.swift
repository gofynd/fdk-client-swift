

import Foundation
public extension ApplicationClient.User {
    /*
        Model: AccountLockout
        Used By: User
    */
    class AccountLockout: Codable {
        
        public var enable: Bool?
        
        public var attempts: Double?
        
        public var duration: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case enable = "enable"
            
            case attempts = "attempts"
            
            case duration = "duration"
            
        }

        public init(attempts: Double? = nil, duration: Double? = nil, enable: Bool? = nil) {
            
            self.enable = enable
            
            self.attempts = attempts
            
            self.duration = duration
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                enable = try container.decode(Bool.self, forKey: .enable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                attempts = try container.decode(Double.self, forKey: .attempts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                duration = try container.decode(Double.self, forKey: .duration)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(enable, forKey: .enable)
            
            
            
            try? container.encodeIfPresent(attempts, forKey: .attempts)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
        }
        
    }
}
