

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: MultiTenderPaymentMeta
        Used By: Payment
    */

    class MultiTenderPaymentMeta: Codable {
        
        
        public var extraMeta: [String: Any]?
        
        public var orderId: String?
        
        public var paymentId: String?
        
        public var currentStatus: String?
        
        public var paymentGateway: String?
        
        public var paymentGatewaySlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extraMeta = "extra_meta"
            
            case orderId = "order_id"
            
            case paymentId = "payment_id"
            
            case currentStatus = "current_status"
            
            case paymentGateway = "payment_gateway"
            
            case paymentGatewaySlug = "payment_gateway_slug"
            
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentGatewaySlug: String? = nil, paymentId: String? = nil) {
            
            self.extraMeta = extraMeta
            
            self.orderId = orderId
            
            self.paymentId = paymentId
            
            self.currentStatus = currentStatus
            
            self.paymentGateway = paymentGateway
            
            self.paymentGatewaySlug = paymentGatewaySlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGatewaySlug = try container.decode(String.self, forKey: .paymentGatewaySlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentGatewaySlug, forKey: .paymentGatewaySlug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: MultiTenderPaymentMeta
        Used By: Payment
    */

    class MultiTenderPaymentMeta: Codable {
        
        
        public var extraMeta: [String: Any]?
        
        public var orderId: String?
        
        public var paymentId: String?
        
        public var currentStatus: String?
        
        public var paymentGateway: String?
        
        public var paymentGatewaySlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extraMeta = "extra_meta"
            
            case orderId = "order_id"
            
            case paymentId = "payment_id"
            
            case currentStatus = "current_status"
            
            case paymentGateway = "payment_gateway"
            
            case paymentGatewaySlug = "payment_gateway_slug"
            
        }

        public init(currentStatus: String? = nil, extraMeta: [String: Any]? = nil, orderId: String? = nil, paymentGateway: String? = nil, paymentGatewaySlug: String? = nil, paymentId: String? = nil) {
            
            self.extraMeta = extraMeta
            
            self.orderId = orderId
            
            self.paymentId = paymentId
            
            self.currentStatus = currentStatus
            
            self.paymentGateway = paymentGateway
            
            self.paymentGatewaySlug = paymentGatewaySlug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGatewaySlug = try container.decode(String.self, forKey: .paymentGatewaySlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(paymentGatewaySlug, forKey: .paymentGatewaySlug)
            
            
        }
        
    }
}


