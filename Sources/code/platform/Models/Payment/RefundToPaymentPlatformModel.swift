

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundTo
        Used By: Payment
    */

    class RefundTo: Codable {
        
        
        public var source: String?
        
        public var others: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case others = "others"
            
        }

        public init(others: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.others = others
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    others = try container.decode(String.self, forKey: .others)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(others, forKey: .others)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundTo
        Used By: Payment
    */

    class RefundTo: Codable {
        
        
        public var source: String?
        
        public var others: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case others = "others"
            
        }

        public init(others: String? = nil, source: String? = nil) {
            
            self.source = source
            
            self.others = others
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    others = try container.decode(String.self, forKey: .others)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(others, forKey: .others)
            
            
        }
        
    }
}


