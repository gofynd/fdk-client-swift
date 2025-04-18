

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OptionItem
        Used By: Order
    */

    class OptionItem: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var totalItems: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case totalItems = "total_items"
            
        }

        public init(text: String? = nil, totalItems: Int? = nil, value: String? = nil) {
            
            self.text = text
            
            self.value = value
            
            self.totalItems = totalItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Int.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OptionItem
        Used By: Order
    */

    class OptionItem: Codable {
        
        
        public var text: String?
        
        public var value: String?
        
        public var totalItems: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
            case totalItems = "total_items"
            
        }

        public init(text: String? = nil, totalItems: Int? = nil, value: String? = nil) {
            
            self.text = text
            
            self.value = value
            
            self.totalItems = totalItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Int.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
        }
        
    }
}


