

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentLinkError
        Used By: Payment
    */
    class PaymentLinkError: Codable {
        
        public var cancelled: Bool?
        
        public var msg: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancelled = "cancelled"
            
            case msg = "msg"
            
        }

        public init(cancelled: Bool? = nil, msg: String? = nil) {
            
            self.cancelled = cancelled
            
            self.msg = msg
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                cancelled = try container.decode(Bool.self, forKey: .cancelled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                msg = try container.decode(String.self, forKey: .msg)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(cancelled, forKey: .cancelled)
            
            
            
            try? container.encodeIfPresent(msg, forKey: .msg)
            
            
        }
        
    }
}
