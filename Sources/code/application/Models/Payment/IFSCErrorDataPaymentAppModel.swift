

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: IFSCErrorData
        Used By: Payment
    */
    class IFSCErrorData: Codable {
        
        public var message: String?
        
        public var subcode: String?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case subcode = "subcode"
            
            case status = "status"
            
        }

        public init(message: String? = nil, status: String? = nil, subcode: String? = nil) {
            
            self.message = message
            
            self.subcode = subcode
            
            self.status = status
            
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
                subcode = try container.decode(String.self, forKey: .subcode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(subcode, forKey: .subcode)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}
