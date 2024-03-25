

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: WalletResponseData
        Used By: Payment
    */
    class WalletResponseData: Codable {
        
        public var message: String?
        
        public var reason: String?
        
        public var linkToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case reason = "reason"
            
            case linkToken = "link_token"
            
        }

        public init(linkToken: String? = nil, message: String? = nil, reason: String? = nil) {
            
            self.message = message
            
            self.reason = reason
            
            self.linkToken = linkToken
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                reason = try container.decode(String.self, forKey: .reason)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                linkToken = try container.decode(String.self, forKey: .linkToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            try? container.encodeIfPresent(linkToken, forKey: .linkToken)
            
            
        }
        
    }
}
