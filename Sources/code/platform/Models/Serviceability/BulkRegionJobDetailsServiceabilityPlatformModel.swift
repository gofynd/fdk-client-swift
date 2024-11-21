

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkRegionJobDetails
        Used By: Serviceability
    */

    class BulkRegionJobDetails: Codable {
        
        
        public var filePath: String?
        
        public var country: String
        
        public var action: String
        
        public var region: String
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case country = "country"
            
            case action = "action"
            
            case region = "region"
            
        }

        public init(action: String, country: String, filePath: String? = nil, region: String) {
            
            self.filePath = filePath
            
            self.country = country
            
            self.action = action
            
            self.region = region
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkRegionJobDetails
        Used By: Serviceability
    */

    class BulkRegionJobDetails: Codable {
        
        
        public var filePath: String?
        
        public var country: String
        
        public var action: String
        
        public var region: String
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case country = "country"
            
            case action = "action"
            
            case region = "region"
            
        }

        public init(action: String, country: String, filePath: String? = nil, region: String) {
            
            self.filePath = filePath
            
            self.country = country
            
            self.action = action
            
            self.region = region
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
        }
        
    }
}


