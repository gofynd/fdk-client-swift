

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GuideHeaders
        Used By: Catalog
    */

    class GuideHeaders: Codable {
        
        
        public var col1: Header?
        
        public var col2: Header?
        
        public var col3: Header?
        
        public var col4: Header?
        
        public var col5: Header?
        
        public var col6: Header?
        
        public var col7: Header?
        
        public var col8: Header?
        
        public var col9: Header?
        
        public var col10: Header?
        

        public enum CodingKeys: String, CodingKey {
            
            case col1 = "col_1"
            
            case col2 = "col_2"
            
            case col3 = "col_3"
            
            case col4 = "col_4"
            
            case col5 = "col_5"
            
            case col6 = "col_6"
            
            case col7 = "col_7"
            
            case col8 = "col_8"
            
            case col9 = "col_9"
            
            case col10 = "col_10"
            
        }

        public init(col1: Header? = nil, col10: Header? = nil, col2: Header? = nil, col3: Header? = nil, col4: Header? = nil, col5: Header? = nil, col6: Header? = nil, col7: Header? = nil, col8: Header? = nil, col9: Header? = nil) {
            
            self.col1 = col1
            
            self.col2 = col2
            
            self.col3 = col3
            
            self.col4 = col4
            
            self.col5 = col5
            
            self.col6 = col6
            
            self.col7 = col7
            
            self.col8 = col8
            
            self.col9 = col9
            
            self.col10 = col10
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    col1 = try container.decode(Header.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col2 = try container.decode(Header.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col3 = try container.decode(Header.self, forKey: .col3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col4 = try container.decode(Header.self, forKey: .col4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col5 = try container.decode(Header.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col6 = try container.decode(Header.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col7 = try container.decode(Header.self, forKey: .col7)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col8 = try container.decode(Header.self, forKey: .col8)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col9 = try container.decode(Header.self, forKey: .col9)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col10 = try container.decode(Header.self, forKey: .col10)
                
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
            
            
            
            
            try? container.encodeIfPresent(col3, forKey: .col3)
            
            
            
            
            try? container.encodeIfPresent(col4, forKey: .col4)
            
            
            
            
            try? container.encodeIfPresent(col5, forKey: .col5)
            
            
            
            
            try? container.encodeIfPresent(col6, forKey: .col6)
            
            
            
            
            try? container.encodeIfPresent(col7, forKey: .col7)
            
            
            
            
            try? container.encodeIfPresent(col8, forKey: .col8)
            
            
            
            
            try? container.encodeIfPresent(col9, forKey: .col9)
            
            
            
            
            try? container.encodeIfPresent(col10, forKey: .col10)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GuideHeaders
        Used By: Catalog
    */

    class GuideHeaders: Codable {
        
        
        public var col1: Header?
        
        public var col2: Header?
        
        public var col3: Header?
        
        public var col4: Header?
        
        public var col5: Header?
        
        public var col6: Header?
        
        public var col7: Header?
        
        public var col8: Header?
        
        public var col9: Header?
        
        public var col10: Header?
        

        public enum CodingKeys: String, CodingKey {
            
            case col1 = "col_1"
            
            case col2 = "col_2"
            
            case col3 = "col_3"
            
            case col4 = "col_4"
            
            case col5 = "col_5"
            
            case col6 = "col_6"
            
            case col7 = "col_7"
            
            case col8 = "col_8"
            
            case col9 = "col_9"
            
            case col10 = "col_10"
            
        }

        public init(col1: Header? = nil, col10: Header? = nil, col2: Header? = nil, col3: Header? = nil, col4: Header? = nil, col5: Header? = nil, col6: Header? = nil, col7: Header? = nil, col8: Header? = nil, col9: Header? = nil) {
            
            self.col1 = col1
            
            self.col2 = col2
            
            self.col3 = col3
            
            self.col4 = col4
            
            self.col5 = col5
            
            self.col6 = col6
            
            self.col7 = col7
            
            self.col8 = col8
            
            self.col9 = col9
            
            self.col10 = col10
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    col1 = try container.decode(Header.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col2 = try container.decode(Header.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col3 = try container.decode(Header.self, forKey: .col3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col4 = try container.decode(Header.self, forKey: .col4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col5 = try container.decode(Header.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col6 = try container.decode(Header.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col7 = try container.decode(Header.self, forKey: .col7)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col8 = try container.decode(Header.self, forKey: .col8)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col9 = try container.decode(Header.self, forKey: .col9)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    col10 = try container.decode(Header.self, forKey: .col10)
                
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
            
            
            
            
            try? container.encodeIfPresent(col3, forKey: .col3)
            
            
            
            
            try? container.encodeIfPresent(col4, forKey: .col4)
            
            
            
            
            try? container.encodeIfPresent(col5, forKey: .col5)
            
            
            
            
            try? container.encodeIfPresent(col6, forKey: .col6)
            
            
            
            
            try? container.encodeIfPresent(col7, forKey: .col7)
            
            
            
            
            try? container.encodeIfPresent(col8, forKey: .col8)
            
            
            
            
            try? container.encodeIfPresent(col9, forKey: .col9)
            
            
            
            
            try? container.encodeIfPresent(col10, forKey: .col10)
            
            
        }
        
    }
}


