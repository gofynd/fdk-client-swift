

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneBulkValidationRequestSchema
        Used By: Serviceability
    */

    class ZoneBulkValidationRequestSchema: Codable {
        
        
        public var fileUrl: String
        
        public var productType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case productType = "product_type"
            
        }

        public init(fileUrl: String, productType: String) {
            
            self.fileUrl = fileUrl
            
            self.productType = productType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneBulkValidationRequestSchema
        Used By: Serviceability
    */

    class ZoneBulkValidationRequestSchema: Codable {
        
        
        public var fileUrl: String
        
        public var productType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case productType = "product_type"
            
        }

        public init(fileUrl: String, productType: String) {
            
            self.fileUrl = fileUrl
            
            self.productType = productType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
        }
        
    }
}


