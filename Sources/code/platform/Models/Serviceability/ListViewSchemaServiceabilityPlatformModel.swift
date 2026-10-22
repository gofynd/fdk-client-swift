

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewSchema
        Used By: Serviceability
    */

    class ListViewSchema: Codable {
        
        
        public var items: [ListViewItems]
        
        public var page: Page
        
        public var foDetails: FoDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case foDetails = "fo_details"
            
        }

        public init(foDetails: FoDetails? = nil, items: [ListViewItems], page: Page) {
            
            self.items = items
            
            self.page = page
            
            self.foDetails = foDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                do {
                    foDetails = try container.decode(FoDetails.self, forKey: .foDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(foDetails, forKey: .foDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ListViewSchema
        Used By: Serviceability
    */

    class ListViewSchema: Codable {
        
        
        public var items: [ListViewItems]
        
        public var page: Page
        
        public var foDetails: FoDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case foDetails = "fo_details"
            
        }

        public init(foDetails: FoDetails? = nil, items: [ListViewItems], page: Page) {
            
            self.items = items
            
            self.page = page
            
            self.foDetails = foDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                do {
                    foDetails = try container.decode(FoDetails.self, forKey: .foDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(foDetails, forKey: .foDetails)
            
            
        }
        
    }
}


