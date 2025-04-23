

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadResponse
        Used By: Content
    */

    class CustomObjectEntryBulkUploadResponse: Codable {
        
        
        public var url: String?
        
        public var totalRecords: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case totalRecords = "total_records"
            
        }

        public init(totalRecords: Int? = nil, url: String? = nil) {
            
            self.url = url
            
            self.totalRecords = totalRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectEntryBulkUploadResponse
        Used By: Content
    */

    class CustomObjectEntryBulkUploadResponse: Codable {
        
        
        public var url: String?
        
        public var totalRecords: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case totalRecords = "total_records"
            
        }

        public init(totalRecords: Int? = nil, url: String? = nil) {
            
            self.url = url
            
            self.totalRecords = totalRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
        }
        
    }
}


