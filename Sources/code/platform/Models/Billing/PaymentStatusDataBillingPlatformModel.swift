

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PaymentStatusData
        Used By: Billing
    */

    class PaymentStatusData: Codable {
        
        
        public var id: String?
        
        public var journey: String?
        
        public var webhookResponse: [[String: Any]]?
        
        public var aggregatorStatus: String?
        
        public var currentStatus: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Double?
        
        public var aggregatorOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case journey = "journey"
            
            case webhookResponse = "webhook_response"
            
            case aggregatorStatus = "aggregator_status"
            
            case currentStatus = "current_status"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case aggregatorOrderId = "aggregator_order_id"
            
        }

        public init(aggregatorOrderId: String? = nil, aggregatorStatus: String? = nil, createdAt: String? = nil, currentStatus: String? = nil, journey: String? = nil, modifiedAt: String? = nil, webhookResponse: [[String: Any]]? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.journey = journey
            
            self.webhookResponse = webhookResponse
            
            self.aggregatorStatus = aggregatorStatus
            
            self.currentStatus = currentStatus
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.aggregatorOrderId = aggregatorOrderId
            
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
                    journey = try container.decode(String.self, forKey: .journey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webhookResponse = try container.decode([[String: Any]].self, forKey: .webhookResponse)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorStatus = try container.decode(String.self, forKey: .aggregatorStatus)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(journey, forKey: .journey)
            
            
            
            
            try? container.encodeIfPresent(webhookResponse, forKey: .webhookResponse)
            
            
            
            
            try? container.encodeIfPresent(aggregatorStatus, forKey: .aggregatorStatus)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
        }
        
    }
}




