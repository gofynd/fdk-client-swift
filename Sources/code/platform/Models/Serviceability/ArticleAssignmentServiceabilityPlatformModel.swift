

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArticleAssignment
        Used By: Serviceability
    */

    class ArticleAssignment: Codable {
        
        
        public var level: String?
        
        public var strategy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case level = "level"
            
            case strategy = "strategy"
            
        }

        public init(level: String? = nil, strategy: String? = nil) {
            
            self.level = level
            
            self.strategy = strategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(strategy, forKey: .strategy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArticleAssignment
        Used By: Serviceability
    */

    class ArticleAssignment: Codable {
        
        
        public var level: String?
        
        public var strategy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case level = "level"
            
            case strategy = "strategy"
            
        }

        public init(level: String? = nil, strategy: String? = nil) {
            
            self.level = level
            
            self.strategy = strategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(strategy, forKey: .strategy)
            
            
        }
        
    }
}


