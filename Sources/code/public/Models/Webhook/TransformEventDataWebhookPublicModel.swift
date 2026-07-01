

import Foundation
public extension PublicClient.Webhook {
    /*
        Model: TransformEventData
        Used By: Webhook
    */

    class TransformEventData: Codable {
        
        
        public var region: String?
        
        public var event: InternalTransformEvent?
        
        public var companyId: Double?
        
        public var contains: [String]?
        
        public var payload: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case region = "region"
            
            case event = "event"
            
            case companyId = "company_id"
            
            case contains = "contains"
            
            case payload = "payload"
            
        }

        public init(companyId: Double? = nil, contains: [String]? = nil, event: InternalTransformEvent? = nil, payload: [String: Any]? = nil, region: String? = nil) {
            
            self.region = region
            
            self.event = event
            
            self.companyId = companyId
            
            self.contains = contains
            
            self.payload = payload
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    event = try container.decode(InternalTransformEvent.self, forKey: .event)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contains = try container.decode([String].self, forKey: .contains)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payload = try container.decode([String: Any].self, forKey: .payload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            try? container.encodeIfPresent(event, forKey: .event)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(contains, forKey: .contains)
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
        }
        
    }
}
