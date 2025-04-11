

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: OnboardSummary
        Used By: Payment
    */
    class OnboardSummary: Codable {
        
        public var redirectUrl: String?
        
        public var session: [String: Any]?
        
        public var status: Bool
        
        public var statusRemark: String?
        
        public var isEligibleForTxn: Bool?
        
        public var merchantCustomerRefId: String?
        
        public var activationUrl: String?
        
        public var type: String?
        
        public var reason: String?
        
        public var code: Int?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirectUrl = "redirect_url"
            
            case session = "session"
            
            case status = "status"
            
            case statusRemark = "status_remark"
            
            case isEligibleForTxn = "is_eligible_for_txn"
            
            case merchantCustomerRefId = "merchant_customer_ref_id"
            
            case activationUrl = "activation_url"
            
            case type = "type"
            
            case reason = "reason"
            
            case code = "code"
            
            case message = "message"
            
        }

        public init(activationUrl: String? = nil, code: Int? = nil, isEligibleForTxn: Bool? = nil, merchantCustomerRefId: String? = nil, message: String? = nil, reason: String? = nil, redirectUrl: String? = nil, session: [String: Any]? = nil, status: Bool, statusRemark: String? = nil, type: String? = nil) {
            
            self.redirectUrl = redirectUrl
            
            self.session = session
            
            self.status = status
            
            self.statusRemark = statusRemark
            
            self.isEligibleForTxn = isEligibleForTxn
            
            self.merchantCustomerRefId = merchantCustomerRefId
            
            self.activationUrl = activationUrl
            
            self.type = type
            
            self.reason = reason
            
            self.code = code
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                session = try container.decode([String: Any].self, forKey: .session)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            status = try container.decode(Bool.self, forKey: .status)
            
            
            
            
            do {
                statusRemark = try container.decode(String.self, forKey: .statusRemark)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isEligibleForTxn = try container.decode(Bool.self, forKey: .isEligibleForTxn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                activationUrl = try container.decode(String.self, forKey: .activationUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
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
                code = try container.decode(Int.self, forKey: .code)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
            
            
            
            try? container.encodeIfPresent(session, forKey: .session)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(statusRemark, forKey: .statusRemark)
            
            
            
            try? container.encodeIfPresent(isEligibleForTxn, forKey: .isEligibleForTxn)
            
            
            
            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
            
            
            
            try? container.encodeIfPresent(activationUrl, forKey: .activationUrl)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
