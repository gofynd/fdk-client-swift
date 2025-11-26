

import Foundation


public extension PlatformClient.Content {
    /*
        Model: TemplateLayout
        Used By: Content
    */

    class TemplateLayout: Codable {
        
        
        public var columns: Int?
        
        public var gap: String?
        
        public var responsive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case columns = "columns"
            
            case gap = "gap"
            
            case responsive = "responsive"
            
        }

        public init(columns: Int? = nil, gap: String? = nil, responsive: Bool? = nil) {
            
            self.columns = columns
            
            self.gap = gap
            
            self.responsive = responsive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    columns = try container.decode(Int.self, forKey: .columns)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gap = try container.decode(String.self, forKey: .gap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsive = try container.decode(Bool.self, forKey: .responsive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(columns, forKey: .columns)
            
            
            
            
            try? container.encodeIfPresent(gap, forKey: .gap)
            
            
            
            
            try? container.encodeIfPresent(responsive, forKey: .responsive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: TemplateLayout
        Used By: Content
    */

    class TemplateLayout: Codable {
        
        
        public var columns: Int?
        
        public var gap: String?
        
        public var responsive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case columns = "columns"
            
            case gap = "gap"
            
            case responsive = "responsive"
            
        }

        public init(columns: Int? = nil, gap: String? = nil, responsive: Bool? = nil) {
            
            self.columns = columns
            
            self.gap = gap
            
            self.responsive = responsive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    columns = try container.decode(Int.self, forKey: .columns)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gap = try container.decode(String.self, forKey: .gap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsive = try container.decode(Bool.self, forKey: .responsive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(columns, forKey: .columns)
            
            
            
            
            try? container.encodeIfPresent(gap, forKey: .gap)
            
            
            
            
            try? container.encodeIfPresent(responsive, forKey: .responsive)
            
            
        }
        
    }
}


