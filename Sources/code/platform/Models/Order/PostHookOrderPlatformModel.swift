

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PostHook
        Used By: Order
    */

    class PostHook: Codable {
        
        
        public var task: String
        
        public var kwargs: [String: Any]?
        
        public var filters: Filter?
        

        public enum CodingKeys: String, CodingKey {
            
            case task = "task"
            
            case kwargs = "kwargs"
            
            case filters = "filters"
            
        }

        public init(filters: Filter? = nil, kwargs: [String: Any]? = nil, task: String) {
            
            self.task = task
            
            self.kwargs = kwargs
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                task = try container.decode(String.self, forKey: .task)
                
            
            
            
                do {
                    kwargs = try container.decode([String: Any].self, forKey: .kwargs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(Filter.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(task, forKey: .task)
            
            
            
            
            try? container.encodeIfPresent(kwargs, forKey: .kwargs)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PostHook
        Used By: Order
    */

    class PostHook: Codable {
        
        
        public var task: String
        
        public var kwargs: [String: Any]?
        
        public var filters: Filter?
        

        public enum CodingKeys: String, CodingKey {
            
            case task = "task"
            
            case kwargs = "kwargs"
            
            case filters = "filters"
            
        }

        public init(filters: Filter? = nil, kwargs: [String: Any]? = nil, task: String) {
            
            self.task = task
            
            self.kwargs = kwargs
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                task = try container.decode(String.self, forKey: .task)
                
            
            
            
                do {
                    kwargs = try container.decode([String: Any].self, forKey: .kwargs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(Filter.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(task, forKey: .task)
            
            
            
            
            try? container.encodeIfPresent(kwargs, forKey: .kwargs)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}


