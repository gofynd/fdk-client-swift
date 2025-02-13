

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreatePaymentLink
        Used By: Payment
    */
    class CreatePaymentLink: Codable {
        
        public var description: String?
        
        public var externalOrderId: String
        
        public var mobileNumber: String
        
        public var amount: Double
        
        public var meta: CreatePaymentLinkMeta
        
        public var email: String
        
        public var successRedirectionUrl: String?
        
        public var failureRedirectionUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case externalOrderId = "external_order_id"
            
            case mobileNumber = "mobile_number"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case email = "email"
            
            case successRedirectionUrl = "success_redirection_url"
            
            case failureRedirectionUrl = "failure_redirection_url"
            
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, failureRedirectionUrl: String? = nil, meta: CreatePaymentLinkMeta, mobileNumber: String, successRedirectionUrl: String? = nil) {
            
            self.description = description
            
            self.externalOrderId = externalOrderId
            
            self.mobileNumber = mobileNumber
            
            self.amount = amount
            
            self.meta = meta
            
            self.email = email
            
            self.successRedirectionUrl = successRedirectionUrl
            
            self.failureRedirectionUrl = failureRedirectionUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
            
            
            
            
            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
            
            
            
            
            amount = try container.decode(Double.self, forKey: .amount)
            
            
            
            
            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
            
            
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            do {
                successRedirectionUrl = try container.decode(String.self, forKey: .successRedirectionUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                failureRedirectionUrl = try container.decode(String.self, forKey: .failureRedirectionUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(successRedirectionUrl, forKey: .successRedirectionUrl)
            
            
            
            try? container.encodeIfPresent(failureRedirectionUrl, forKey: .failureRedirectionUrl)
            
            
        }
        
    }
}
