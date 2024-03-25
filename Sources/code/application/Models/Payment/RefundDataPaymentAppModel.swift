

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundData
        Used By: Payment
    */
    class RefundData: Codable {
        
        public var beneNameMismatch: Bool?
        
        public var status: String?
        
        public var subcode: String?
        
        public var hashKey: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var requestId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneNameMismatch = "bene_name_mismatch"
            
            case status = "status"
            
            case subcode = "subcode"
            
            case hashKey = "hash_key"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case requestId = "request_id"
            
        }

        public init(beneNameMismatch: Bool? = nil, hashKey: String? = nil, message: String? = nil, mobile: String? = nil, requestId: Int? = nil, status: String? = nil, subcode: String? = nil) {
            
            self.beneNameMismatch = beneNameMismatch
            
            self.status = status
            
            self.subcode = subcode
            
            self.hashKey = hashKey
            
            self.message = message
            
            self.mobile = mobile
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                beneNameMismatch = try container.decode(Bool.self, forKey: .beneNameMismatch)
            
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
            
            
            
            do {
                subcode = try container.decode(String.self, forKey: .subcode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hashKey = try container.decode(String.self, forKey: .hashKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                requestId = try container.decode(Int.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(beneNameMismatch, forKey: .beneNameMismatch)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(subcode, forKey: .subcode)
            
            
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
