

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: OrderTranslationRequestSchema
        Used By: Content
    */
    class OrderTranslationRequestSchema: Codable {
        
        public var payloadType: String
        
        public var payload: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case payloadType = "payload_type"
            
            case payload = "payload"
            
        }

        public init(payload: [[String: Any]], payloadType: String) {
            
            self.payloadType = payloadType
            
            self.payload = payload
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            payloadType = try container.decode(String.self, forKey: .payloadType)
            
            
            
            
            payload = try container.decode([[String: Any]].self, forKey: .payload)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(payloadType, forKey: .payloadType)
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
        }
        
    }
}
