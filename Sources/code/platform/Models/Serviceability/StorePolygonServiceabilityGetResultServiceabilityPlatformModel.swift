

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityGetResult
        Used By: Serviceability
    */

    class StorePolygonServiceabilityGetResult: Codable {
        
        
        public var success: Bool
        
        public var data: [StorePolygonServiceabilityStore]
        
        public var errors: [StorePolygonServiceabilityError]
        
        public var identifier: String
        
        public var failedEntries: [StorePolygonServiceabilityError]
        
        public var pagination: StorePolygonServiceabilityPagination
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case errors = "errors"
            
            case identifier = "identifier"
            
            case failedEntries = "failed_entries"
            
            case pagination = "pagination"
            
        }

        public init(data: [StorePolygonServiceabilityStore], errors: [StorePolygonServiceabilityError], failedEntries: [StorePolygonServiceabilityError], identifier: String, pagination: StorePolygonServiceabilityPagination, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.errors = errors
            
            self.identifier = identifier
            
            self.failedEntries = failedEntries
            
            self.pagination = pagination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode([StorePolygonServiceabilityStore].self, forKey: .data)
                
            
            
            
                errors = try container.decode([StorePolygonServiceabilityError].self, forKey: .errors)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                failedEntries = try container.decode([StorePolygonServiceabilityError].self, forKey: .failedEntries)
                
            
            
            
                pagination = try container.decode(StorePolygonServiceabilityPagination.self, forKey: .pagination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(failedEntries, forKey: .failedEntries)
            
            
            
            
            try? container.encodeIfPresent(pagination, forKey: .pagination)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityGetResult
        Used By: Serviceability
    */

    class StorePolygonServiceabilityGetResult: Codable {
        
        
        public var success: Bool
        
        public var data: [StorePolygonServiceabilityStore]
        
        public var errors: [StorePolygonServiceabilityError]
        
        public var identifier: String
        
        public var failedEntries: [StorePolygonServiceabilityError]
        
        public var pagination: StorePolygonServiceabilityPagination
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case errors = "errors"
            
            case identifier = "identifier"
            
            case failedEntries = "failed_entries"
            
            case pagination = "pagination"
            
        }

        public init(data: [StorePolygonServiceabilityStore], errors: [StorePolygonServiceabilityError], failedEntries: [StorePolygonServiceabilityError], identifier: String, pagination: StorePolygonServiceabilityPagination, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.errors = errors
            
            self.identifier = identifier
            
            self.failedEntries = failedEntries
            
            self.pagination = pagination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                data = try container.decode([StorePolygonServiceabilityStore].self, forKey: .data)
                
            
            
            
                errors = try container.decode([StorePolygonServiceabilityError].self, forKey: .errors)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                failedEntries = try container.decode([StorePolygonServiceabilityError].self, forKey: .failedEntries)
                
            
            
            
                pagination = try container.decode(StorePolygonServiceabilityPagination.self, forKey: .pagination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(failedEntries, forKey: .failedEntries)
            
            
            
            
            try? container.encodeIfPresent(pagination, forKey: .pagination)
            
            
        }
        
    }
}


