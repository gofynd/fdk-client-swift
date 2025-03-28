

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentGatewayConfigDetails
        Used By: Payment
    */

    class PaymentGatewayConfigDetails: Codable {
        
        
        public var aggregators: [AggregatorConfig]?
        
        public var appId: String
        
        public var excludedFields: [String]
        
        public var success: Bool
        
        public var created: Bool
        
        public var displayFields: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregators = "aggregators"
            
            case appId = "app_id"
            
            case excludedFields = "excluded_fields"
            
            case success = "success"
            
            case created = "created"
            
            case displayFields = "display_fields"
            
        }

        public init(aggregators: [AggregatorConfig]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.aggregators = aggregators
            
            self.appId = appId
            
            self.excludedFields = excludedFields
            
            self.success = success
            
            self.created = created
            
            self.displayFields = displayFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aggregators = try container.decode([AggregatorConfig].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentGatewayConfigDetails
        Used By: Payment
    */

    class PaymentGatewayConfigDetails: Codable {
        
        
        public var aggregators: [AggregatorConfig]?
        
        public var appId: String
        
        public var excludedFields: [String]
        
        public var success: Bool
        
        public var created: Bool
        
        public var displayFields: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregators = "aggregators"
            
            case appId = "app_id"
            
            case excludedFields = "excluded_fields"
            
            case success = "success"
            
            case created = "created"
            
            case displayFields = "display_fields"
            
        }

        public init(aggregators: [AggregatorConfig]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.aggregators = aggregators
            
            self.appId = appId
            
            self.excludedFields = excludedFields
            
            self.success = success
            
            self.created = created
            
            self.displayFields = displayFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aggregators = try container.decode([AggregatorConfig].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
        }
        
    }
}


