

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Image
        Used By: Catalog
    */

    class Image: Codable {
        
        
        public var aspectRatio: String?
        
        public var aspectRatioF: Double?
        
        public var secureUrl: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case aspectRatioF = "aspect_ratio_f"
            
            case secureUrl = "secure_url"
            
            case url = "url"
            
        }

        public init(aspectRatio: String? = nil, aspectRatioF: Double? = nil, secureUrl: String? = nil, url: String? = nil) {
            
            self.aspectRatio = aspectRatio
            
            self.aspectRatioF = aspectRatioF
            
            self.secureUrl = secureUrl
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aspectRatioF = try container.decode(Double.self, forKey: .aspectRatioF)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Image
        Used By: Catalog
    */

    class Image: Codable {
        
        
        public var aspectRatio: String?
        
        public var aspectRatioF: Double?
        
        public var secureUrl: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case aspectRatioF = "aspect_ratio_f"
            
            case secureUrl = "secure_url"
            
            case url = "url"
            
        }

        public init(aspectRatio: String? = nil, aspectRatioF: Double? = nil, secureUrl: String? = nil, url: String? = nil) {
            
            self.aspectRatio = aspectRatio
            
            self.aspectRatioF = aspectRatioF
            
            self.secureUrl = secureUrl
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aspectRatioF = try container.decode(Double.self, forKey: .aspectRatioF)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}


