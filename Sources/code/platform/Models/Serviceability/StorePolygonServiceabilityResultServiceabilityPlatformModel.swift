

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityResult
        Used By: Serviceability
    */

    class StorePolygonServiceabilityResult: Codable {
        
        
        public var success: Bool
        
        public var data: [StorePolygonServiceabilityStoreSummary]
        
        public var errors: [StorePolygonServiceabilityError]
        
        public var identifier: String
        
        public var failedEntries: [StorePolygonServiceabilityError]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case errors = "errors"
            
            case identifier = "identifier"
            
            case failedEntries = "failed_entries"
            
        }

        public init(data: [StorePolygonServiceabilityStoreSummary], errors: [StorePolygonServiceabilityError], failedEntries: [StorePolygonServiceabilityError], identifier: String, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.errors = errors
            
            self.identifier = identifier
            
            self.failedEntries = failedEntries
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode([StorePolygonServiceabilityStoreSummary].self, forKey: .data)
                
            
            
            
                errors = try container.decode([StorePolygonServiceabilityError].self, forKey: .errors)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                failedEntries = try container.decode([StorePolygonServiceabilityError].self, forKey: .failedEntries)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(failedEntries, forKey: .failedEntries)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityResult
        Used By: Serviceability
    */

    class StorePolygonServiceabilityResult: Codable {
        
        
        public var success: Bool
        
        public var data: [StorePolygonServiceabilityStoreSummary]
        
        public var errors: [StorePolygonServiceabilityError]
        
        public var identifier: String
        
        public var failedEntries: [StorePolygonServiceabilityError]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case errors = "errors"
            
            case identifier = "identifier"
            
            case failedEntries = "failed_entries"
            
        }

        public init(data: [StorePolygonServiceabilityStoreSummary], errors: [StorePolygonServiceabilityError], failedEntries: [StorePolygonServiceabilityError], identifier: String, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.errors = errors
            
            self.identifier = identifier
            
            self.failedEntries = failedEntries
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode([StorePolygonServiceabilityStoreSummary].self, forKey: .data)
                
            
            
            
                errors = try container.decode([StorePolygonServiceabilityError].self, forKey: .errors)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                failedEntries = try container.decode([StorePolygonServiceabilityError].self, forKey: .failedEntries)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(failedEntries, forKey: .failedEntries)
            
            
        }
        
    }
}


