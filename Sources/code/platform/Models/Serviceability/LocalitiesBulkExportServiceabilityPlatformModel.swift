

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocalitiesBulkExport
        Used By: Serviceability
    */

    class LocalitiesBulkExport: Codable {
        
        
        public var countryIsoCode: String
        
        public var status: String
        
        public var batchId: String
        
        public var offset: Int
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryIsoCode = "country_iso_code"
            
            case status = "status"
            
            case batchId = "batch_id"
            
            case offset = "offset"
            
            case type = "type"
            
        }

        public init(batchId: String, countryIsoCode: String, offset: Int, status: String, type: String) {
            
            self.countryIsoCode = countryIsoCode
            
            self.status = status
            
            self.batchId = batchId
            
            self.offset = offset
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                offset = try container.decode(Int.self, forKey: .offset)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocalitiesBulkExport
        Used By: Serviceability
    */

    class LocalitiesBulkExport: Codable {
        
        
        public var countryIsoCode: String
        
        public var status: String
        
        public var batchId: String
        
        public var offset: Int
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryIsoCode = "country_iso_code"
            
            case status = "status"
            
            case batchId = "batch_id"
            
            case offset = "offset"
            
            case type = "type"
            
        }

        public init(batchId: String, countryIsoCode: String, offset: Int, status: String, type: String) {
            
            self.countryIsoCode = countryIsoCode
            
            self.status = status
            
            self.batchId = batchId
            
            self.offset = offset
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                offset = try container.decode(Int.self, forKey: .offset)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


