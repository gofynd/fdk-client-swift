

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestFile
        Used By: Order
    */

    class ManifestFile: Codable {
        
        
        public var key: String?
        
        public var region: String?
        
        public var bucket: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case region = "region"
            
            case bucket = "bucket"
            
        }

        public init(bucket: String? = nil, key: String? = nil, region: String? = nil) {
            
            self.key = key
            
            self.region = region
            
            self.bucket = bucket
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bucket = try container.decode(String.self, forKey: .bucket)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(bucket, forKey: .bucket)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestFile
        Used By: Order
    */

    class ManifestFile: Codable {
        
        
        public var key: String?
        
        public var region: String?
        
        public var bucket: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case region = "region"
            
            case bucket = "bucket"
            
        }

        public init(bucket: String? = nil, key: String? = nil, region: String? = nil) {
            
            self.key = key
            
            self.region = region
            
            self.bucket = bucket
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    region = try container.decode(String.self, forKey: .region)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bucket = try container.decode(String.self, forKey: .bucket)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(bucket, forKey: .bucket)
            
            
        }
        
    }
}


