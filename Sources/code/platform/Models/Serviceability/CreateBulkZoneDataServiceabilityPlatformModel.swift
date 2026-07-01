

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CreateBulkZoneData
        Used By: Serviceability
    */

    class CreateBulkZoneData: Codable {
        
        
        public var fileUrl: [String: Any]?
        
        public var productType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case productType = "product_type"
            
        }

        public init(fileUrl: [String: Any]? = nil, productType: String? = nil) {
            
            self.fileUrl = fileUrl
            
            self.productType = productType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileUrl = try container.decode([String: Any].self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productType = try container.decode(String.self, forKey: .productType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
        Model: CreateBulkZoneData
        Used By: Serviceability
    */

    class CreateBulkZoneData: Codable {
        
        
        public var fileUrl: [String: Any]?
        
        public var productType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case productType = "product_type"
            
        }

        public init(fileUrl: [String: Any]? = nil, productType: String? = nil) {
            
            self.fileUrl = fileUrl
            
            self.productType = productType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileUrl = try container.decode([String: Any].self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productType = try container.decode(String.self, forKey: .productType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
        }
        
    }
}


