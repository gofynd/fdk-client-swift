

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CreatePaymentLinkRequest
        Used By: Payment
    */

    class CreatePaymentLinkRequest: Codable {
        
        
        public var email: String
        
        public var amount: Double
        
        public var mobileNumber: String
        
        public var description: String?
        
        public var meta: CreatePaymentLinkMeta
        
        public var externalOrderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case amount = "amount"
            
            case mobileNumber = "mobile_number"
            
            case description = "description"
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            
            self.email = email
            
            self.amount = amount
            
            self.mobileNumber = mobileNumber
            
            self.description = description
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
                
            
            
            
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CreatePaymentLinkRequest
        Used By: Payment
    */

    class CreatePaymentLinkRequest: Codable {
        
        
        public var email: String
        
        public var amount: Double
        
        public var mobileNumber: String
        
        public var description: String?
        
        public var meta: CreatePaymentLinkMeta
        
        public var externalOrderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case amount = "amount"
            
            case mobileNumber = "mobile_number"
            
            case description = "description"
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            
            self.email = email
            
            self.amount = amount
            
            self.mobileNumber = mobileNumber
            
            self.description = description
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
                
            
            
            
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
        }
        
    }
}


