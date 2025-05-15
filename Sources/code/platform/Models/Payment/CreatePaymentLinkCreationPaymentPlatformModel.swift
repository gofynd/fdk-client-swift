

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CreatePaymentLinkCreation
        Used By: Payment
    */

    class CreatePaymentLinkCreation: Codable {
        
        
        public var email: String
        
        public var amount: Double
        
        public var mobileNumber: String
        
        public var countryPhoneCode: String?
        
        public var description: String?
        
        public var meta: CreatePaymentLinkMeta
        
        public var externalOrderId: String
        
        public var successRedirectionUrl: String?
        
        public var failureRedirectionUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case amount = "amount"
            
            case mobileNumber = "mobile_number"
            
            case countryPhoneCode = "country_phone_code"
            
            case description = "description"
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
            case successRedirectionUrl = "success_redirection_url"
            
            case failureRedirectionUrl = "failure_redirection_url"
            
        }

        public init(amount: Double, countryPhoneCode: String? = nil, description: String? = nil, email: String, externalOrderId: String, failureRedirectionUrl: String? = nil, meta: CreatePaymentLinkMeta, mobileNumber: String, successRedirectionUrl: String? = nil) {
            
            self.email = email
            
            self.amount = amount
            
            self.mobileNumber = mobileNumber
            
            self.countryPhoneCode = countryPhoneCode
            
            self.description = description
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
            self.successRedirectionUrl = successRedirectionUrl
            
            self.failureRedirectionUrl = failureRedirectionUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
            
            
            
                do {
                    countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
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
                
            
            
                meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
                
            
            
            
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(successRedirectionUrl, forKey: .successRedirectionUrl)
            
            
            
            
            try? container.encodeIfPresent(failureRedirectionUrl, forKey: .failureRedirectionUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CreatePaymentLinkCreation
        Used By: Payment
    */

    class CreatePaymentLinkCreation: Codable {
        
        
        public var email: String
        
        public var amount: Double
        
        public var mobileNumber: String
        
        public var countryPhoneCode: String?
        
        public var description: String?
        
        public var meta: CreatePaymentLinkMeta
        
        public var externalOrderId: String
        
        public var successRedirectionUrl: String?
        
        public var failureRedirectionUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case amount = "amount"
            
            case mobileNumber = "mobile_number"
            
            case countryPhoneCode = "country_phone_code"
            
            case description = "description"
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
            case successRedirectionUrl = "success_redirection_url"
            
            case failureRedirectionUrl = "failure_redirection_url"
            
        }

        public init(amount: Double, countryPhoneCode: String? = nil, description: String? = nil, email: String, externalOrderId: String, failureRedirectionUrl: String? = nil, meta: CreatePaymentLinkMeta, mobileNumber: String, successRedirectionUrl: String? = nil) {
            
            self.email = email
            
            self.amount = amount
            
            self.mobileNumber = mobileNumber
            
            self.countryPhoneCode = countryPhoneCode
            
            self.description = description
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
            self.successRedirectionUrl = successRedirectionUrl
            
            self.failureRedirectionUrl = failureRedirectionUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
            
            
            
                do {
                    countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
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
                
            
            
                meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
                
            
            
            
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(successRedirectionUrl, forKey: .successRedirectionUrl)
            
            
            
            
            try? container.encodeIfPresent(failureRedirectionUrl, forKey: .failureRedirectionUrl)
            
            
        }
        
    }
}


