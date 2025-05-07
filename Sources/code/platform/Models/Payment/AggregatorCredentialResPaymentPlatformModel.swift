

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorCredentialRes
        Used By: Payment
    */

    class AggregatorCredentialRes: Codable {
        
        
        public var success: Bool?
        
        public var created: Bool?
        
        public var appId: String?
        
        public var excludedFields: [String]?
        
        public var displayFields: [String]?
        
        public var aggregators: [AggregatorCredential]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case created = "created"
            
            case appId = "app_id"
            
            case excludedFields = "excluded_fields"
            
            case displayFields = "display_fields"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [AggregatorCredential]? = nil, appId: String? = nil, created: Bool? = nil, displayFields: [String]? = nil, excludedFields: [String]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.created = created
            
            self.appId = appId
            
            self.excludedFields = excludedFields
            
            self.displayFields = displayFields
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    created = try container.decode(Bool.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayFields = try container.decode([String].self, forKey: .displayFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([AggregatorCredential].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorCredentialRes
        Used By: Payment
    */

    class AggregatorCredentialRes: Codable {
        
        
        public var success: Bool?
        
        public var created: Bool?
        
        public var appId: String?
        
        public var excludedFields: [String]?
        
        public var displayFields: [String]?
        
        public var aggregators: [AggregatorCredential]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case created = "created"
            
            case appId = "app_id"
            
            case excludedFields = "excluded_fields"
            
            case displayFields = "display_fields"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [AggregatorCredential]? = nil, appId: String? = nil, created: Bool? = nil, displayFields: [String]? = nil, excludedFields: [String]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.created = created
            
            self.appId = appId
            
            self.excludedFields = excludedFields
            
            self.displayFields = displayFields
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    created = try container.decode(Bool.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayFields = try container.decode([String].self, forKey: .displayFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([AggregatorCredential].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}


