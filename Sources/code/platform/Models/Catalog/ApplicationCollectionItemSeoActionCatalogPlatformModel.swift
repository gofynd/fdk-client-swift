

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationCollectionItemSeoAction
        Used By: Catalog
    */

    class ApplicationCollectionItemSeoAction: Codable {
        
        
        public var type: String?
        
        public var page: ApplicationCollectionItemSeoPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case page = "page"
            
        }

        public init(page: ApplicationCollectionItemSeoPage? = nil, type: String? = nil) {
            
            self.type = type
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(ApplicationCollectionItemSeoPage.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationCollectionItemSeoAction
        Used By: Catalog
    */

    class ApplicationCollectionItemSeoAction: Codable {
        
        
        public var type: String?
        
        public var page: ApplicationCollectionItemSeoPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case page = "page"
            
        }

        public init(page: ApplicationCollectionItemSeoPage? = nil, type: String? = nil) {
            
            self.type = type
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(ApplicationCollectionItemSeoPage.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


