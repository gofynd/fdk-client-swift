

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ViewDetails
        Used By: Order
    */

    class ViewDetails: Codable {
        
        
        public var id: String?
        
        public var slug: String
        
        public var label: String
        
        public var filters: [FiltersList]?
        
        public var isEditable: Bool
        
        public var position: Int?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case slug = "slug"
            
            case label = "label"
            
            case filters = "filters"
            
            case isEditable = "is_editable"
            
            case position = "position"
            
            case showIn = "show_in"
            
        }

        public init(filters: [FiltersList]? = nil, id: String? = nil, isEditable: Bool, label: String, position: Int? = nil, showIn: String, slug: String) {
            
            self.id = id
            
            self.slug = slug
            
            self.label = label
            
            self.filters = filters
            
            self.isEditable = isEditable
            
            self.position = position
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                do {
                    filters = try container.decode([FiltersList].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isEditable = try container.decode(Bool.self, forKey: .isEditable)
                
            
            
            
                do {
                    position = try container.decode(Int.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(isEditable, forKey: .isEditable)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ViewDetails
        Used By: Order
    */

    class ViewDetails: Codable {
        
        
        public var id: String?
        
        public var slug: String
        
        public var label: String
        
        public var filters: [FiltersList]?
        
        public var isEditable: Bool
        
        public var position: Int?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case slug = "slug"
            
            case label = "label"
            
            case filters = "filters"
            
            case isEditable = "is_editable"
            
            case position = "position"
            
            case showIn = "show_in"
            
        }

        public init(filters: [FiltersList]? = nil, id: String? = nil, isEditable: Bool, label: String, position: Int? = nil, showIn: String, slug: String) {
            
            self.id = id
            
            self.slug = slug
            
            self.label = label
            
            self.filters = filters
            
            self.isEditable = isEditable
            
            self.position = position
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                do {
                    filters = try container.decode([FiltersList].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isEditable = try container.decode(Bool.self, forKey: .isEditable)
                
            
            
            
                do {
                    position = try container.decode(Int.self, forKey: .position)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(isEditable, forKey: .isEditable)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}


