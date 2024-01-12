

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: OrderTracking
        Used By: Theme
    */

    class OrderTracking: Codable {
        
        
        public var showHeader: Bool?
        
        public var showFooter: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case showHeader = "show_header"
            
            case showFooter = "show_footer"
            
        }

        public init(showFooter: Bool? = nil, showHeader: Bool? = nil) {
            
            self.showHeader = showHeader
            
            self.showFooter = showFooter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    showHeader = try container.decode(Bool.self, forKey: .showHeader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showFooter = try container.decode(Bool.self, forKey: .showFooter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showHeader, forKey: .showHeader)
            
            
            
            
            try? container.encodeIfPresent(showFooter, forKey: .showFooter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: OrderTracking
        Used By: Theme
    */

    class OrderTracking: Codable {
        
        
        public var showHeader: Bool?
        
        public var showFooter: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case showHeader = "show_header"
            
            case showFooter = "show_footer"
            
        }

        public init(showFooter: Bool? = nil, showHeader: Bool? = nil) {
            
            self.showHeader = showHeader
            
            self.showFooter = showFooter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    showHeader = try container.decode(Bool.self, forKey: .showHeader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showFooter = try container.decode(Bool.self, forKey: .showFooter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showHeader, forKey: .showHeader)
            
            
            
            
            try? container.encodeIfPresent(showFooter, forKey: .showFooter)
            
            
        }
        
    }
}


