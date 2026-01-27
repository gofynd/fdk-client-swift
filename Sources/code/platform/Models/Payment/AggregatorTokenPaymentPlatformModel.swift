

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorToken
        Used By: Payment
    */

    class AggregatorToken: Codable {
        
        
        public var paymentModeId: Int
        
        public var subPaymentModeCode: String
        
        public var token: String
        
        public var status: String
        
        public var isActive: Bool
        
        public var domain: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentModeId = "payment_mode_id"
            
            case subPaymentModeCode = "sub_payment_mode_code"
            
            case token = "token"
            
            case status = "status"
            
            case isActive = "is_active"
            
            case domain = "domain"
            
        }

        public init(domain: String, isActive: Bool, paymentModeId: Int, status: String, subPaymentModeCode: String, token: String) {
            
            self.paymentModeId = paymentModeId
            
            self.subPaymentModeCode = subPaymentModeCode
            
            self.token = token
            
            self.status = status
            
            self.isActive = isActive
            
            self.domain = domain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)
                
            
            
            
                subPaymentModeCode = try container.decode(String.self, forKey: .subPaymentModeCode)
                
            
            
            
                token = try container.decode(String.self, forKey: .token)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                domain = try container.decode(String.self, forKey: .domain)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            
            
            
            try? container.encodeIfPresent(subPaymentModeCode, forKey: .subPaymentModeCode)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorToken
        Used By: Payment
    */

    class AggregatorToken: Codable {
        
        
        public var paymentModeId: Int
        
        public var subPaymentModeCode: String
        
        public var token: String
        
        public var status: String
        
        public var isActive: Bool
        
        public var domain: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentModeId = "payment_mode_id"
            
            case subPaymentModeCode = "sub_payment_mode_code"
            
            case token = "token"
            
            case status = "status"
            
            case isActive = "is_active"
            
            case domain = "domain"
            
        }

        public init(domain: String, isActive: Bool, paymentModeId: Int, status: String, subPaymentModeCode: String, token: String) {
            
            self.paymentModeId = paymentModeId
            
            self.subPaymentModeCode = subPaymentModeCode
            
            self.token = token
            
            self.status = status
            
            self.isActive = isActive
            
            self.domain = domain
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)
                
            
            
            
                subPaymentModeCode = try container.decode(String.self, forKey: .subPaymentModeCode)
                
            
            
            
                token = try container.decode(String.self, forKey: .token)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                domain = try container.decode(String.self, forKey: .domain)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            
            
            
            try? container.encodeIfPresent(subPaymentModeCode, forKey: .subPaymentModeCode)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
        }
        
    }
}


