

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: MethodDetails
        Used By: Billing
    */

    class MethodDetails: Codable {
        
        
        public var id: String?
        
        public var type: String?
        
        public var mandateAvailable: Bool?
        
        public var mandateAmount: Double?
        
        public var pgPaymentMethodId: String?
        
        public var isDefault: Bool?
        
        public var data: SubscriptionMethodData?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case type = "type"
            
            case mandateAvailable = "mandate_available"
            
            case mandateAmount = "mandate_amount"
            
            case pgPaymentMethodId = "pg_payment_method_id"
            
            case isDefault = "is_default"
            
            case data = "data"
            
        }

        public init(data: SubscriptionMethodData? = nil, id: String? = nil, isDefault: Bool? = nil, mandateAmount: Double? = nil, mandateAvailable: Bool? = nil, pgPaymentMethodId: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.type = type
            
            self.mandateAvailable = mandateAvailable
            
            self.mandateAmount = mandateAmount
            
            self.pgPaymentMethodId = pgPaymentMethodId
            
            self.isDefault = isDefault
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    mandateAvailable = try container.decode(Bool.self, forKey: .mandateAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandateAmount = try container.decode(Double.self, forKey: .mandateAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(SubscriptionMethodData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(mandateAvailable, forKey: .mandateAvailable)
            
            
            
            
            try? container.encodeIfPresent(mandateAmount, forKey: .mandateAmount)
            
            
            
            
            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}




