

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: CreateGlobalVariablesResult
        Used By: Communication
    */

    class CreateGlobalVariablesResult: Codable {
        
        
        public var id: String?
        
        public var category: String?
        
        public var application: String?
        
        public var globalVariables: [String: Any]?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case category = "category"
            
            case application = "application"
            
            case globalVariables = "global_variables"
            
            case createdAt = "created_at"
            
        }

        public init(application: String? = nil, category: String? = nil, createdAt: String? = nil, globalVariables: [String: Any]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.category = category
            
            self.application = application
            
            self.globalVariables = globalVariables
            
            self.createdAt = createdAt
            
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
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: CreateGlobalVariablesResult
        Used By: Communication
    */

    class CreateGlobalVariablesResult: Codable {
        
        
        public var id: String?
        
        public var category: String?
        
        public var application: String?
        
        public var globalVariables: [String: Any]?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case category = "category"
            
            case application = "application"
            
            case globalVariables = "global_variables"
            
            case createdAt = "created_at"
            
        }

        public init(application: String? = nil, category: String? = nil, createdAt: String? = nil, globalVariables: [String: Any]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.category = category
            
            self.application = application
            
            self.globalVariables = globalVariables
            
            self.createdAt = createdAt
            
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
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}


