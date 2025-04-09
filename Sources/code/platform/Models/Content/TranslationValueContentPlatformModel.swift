

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TranslationValue
        Used By: Content
    */

    class TranslationValue: Codable {
        
        
        public var name: String?
        
        public var seo: TranslationSeo?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case seo = "seo"
            
        }

        public init(name: String? = nil, seo: TranslationSeo? = nil) {
            
            self.name = name
            
            self.seo = seo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(TranslationSeo.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TranslationValue
        Used By: Content
    */

    class TranslationValue: Codable {
        
        
        public var name: String?
        
        public var seo: TranslationSeo?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case seo = "seo"
            
        }

        public init(name: String? = nil, seo: TranslationSeo? = nil) {
            
            self.name = name
            
            self.seo = seo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(TranslationSeo.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
        }
        
    }
}


