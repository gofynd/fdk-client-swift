

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GuideValues
        Used By: Catalog
    */

    class GuideValues: Codable {
        
        
        public var col1: String?
        
        public var col2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case col1 = "col_1"
            
            case col2 = "col_2"
            
        }

        public init(col1: String? = nil, col2: String? = nil) {
            
            self.col1 = col1
            
            self.col2 = col2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    col1 = try container.decode(String.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col2 = try container.decode(String.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(col1, forKey: .col1)
            
            
            
            
            try? container.encodeIfPresent(col2, forKey: .col2)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GuideValues
        Used By: Catalog
    */

    class GuideValues: Codable {
        
        
        public var col1: String?
        
        public var col2: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case col1 = "col_1"
            
            case col2 = "col_2"
            
        }

        public init(col1: String? = nil, col2: String? = nil) {
            
            self.col1 = col1
            
            self.col2 = col2
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    col1 = try container.decode(String.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col2 = try container.decode(String.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(col1, forKey: .col1)
            
            
            
            
            try? container.encodeIfPresent(col2, forKey: .col2)
            
            
        }
        
    }
}


