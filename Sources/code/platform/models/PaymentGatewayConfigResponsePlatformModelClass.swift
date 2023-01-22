

import Foundation
public extension PlatformClient {
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var success: Bool
        
        public var displayFields: [String]
        
        public var created: Bool
        
        public var excludedFields: [String]
        
        public var aggregators: [[String: Any]]?
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case displayFields = "display_fields"
            
            case created = "created"
            
            case excludedFields = "excluded_fields"
            
            case aggregators = "aggregators"
            
            case appId = "app_id"
            
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.success = success
            
            self.displayFields = displayFields
            
            self.created = created
            
            self.excludedFields = excludedFields
            
            self.aggregators = aggregators
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}
