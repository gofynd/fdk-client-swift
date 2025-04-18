

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: Filter
        Used By: Lead
    */

    class Filter: Codable {
        
        
        public var priorities: [Priority]
        
        public var categories: [TicketCategory]?
        
        public var statuses: [Status]
        
        public var assignees: [[String: Any]]?
        
        public var allCategories: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
            case allCategories = "all_categories"
            
        }

        public init(allCategories: [String: Any]? = nil, assignees: [[String: Any]]? = nil, categories: [TicketCategory]? = nil, priorities: [Priority], statuses: [Status]) {
            
            self.priorities = priorities
            
            self.categories = categories
            
            self.statuses = statuses
            
            self.assignees = assignees
            
            self.allCategories = allCategories
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priorities = try container.decode([Priority].self, forKey: .priorities)
                
            
            
            
                do {
                    categories = try container.decode([TicketCategory].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                statuses = try container.decode([Status].self, forKey: .statuses)
                
            
            
            
                do {
                    assignees = try container.decode([[String: Any]].self, forKey: .assignees)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allCategories = try container.decode([String: Any].self, forKey: .allCategories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
            
            
            
            try? container.encodeIfPresent(allCategories, forKey: .allCategories)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: Filter
        Used By: Lead
    */

    class Filter: Codable {
        
        
        public var priorities: [Priority]
        
        public var categories: [TicketCategory]?
        
        public var statuses: [Status]
        
        public var assignees: [[String: Any]]?
        
        public var allCategories: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
            case allCategories = "all_categories"
            
        }

        public init(allCategories: [String: Any]? = nil, assignees: [[String: Any]]? = nil, categories: [TicketCategory]? = nil, priorities: [Priority], statuses: [Status]) {
            
            self.priorities = priorities
            
            self.categories = categories
            
            self.statuses = statuses
            
            self.assignees = assignees
            
            self.allCategories = allCategories
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priorities = try container.decode([Priority].self, forKey: .priorities)
                
            
            
            
                do {
                    categories = try container.decode([TicketCategory].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                statuses = try container.decode([Status].self, forKey: .statuses)
                
            
            
            
                do {
                    assignees = try container.decode([[String: Any]].self, forKey: .assignees)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allCategories = try container.decode([String: Any].self, forKey: .allCategories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
            
            
            
            try? container.encodeIfPresent(allCategories, forKey: .allCategories)
            
            
        }
        
    }
}


